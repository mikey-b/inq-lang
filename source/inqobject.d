module inqobject;

import std.stdio;
import std.string;
import std.concurrency;
import std.json;
import std.uuid;

// CLASS VM
Tid[string] phyobjs;
Tid lookup(address_t m) {
	return phyobjs[m.physical];
}
void register(string name, Tid id) {
	phyobjs[name] = id;
}

address_t createp() { // Create - VM level
	immutable auto id = generateId;

	auto t = spawn((string oid) {
		scope o = new physical_object(oid);
		o.start();
	}, id);

	phyobjs[id] = t;
	return address_t(id, "Model");
}
// end CLASS VM

physical_object createRoot(T)() {
	auto res = new T("root");
	register("root", res.getTid);
	return res;
}

string generateId() {
	auto uuid = randomUUID;
	return uuid.toString;
}

struct address_t {
	string physical;
	string logical;
	
	this (string i) {
		auto tmp = i.split("/");
		physical = tmp[0];
		logical = tmp[1];
	}
	
	this (string p, string l) {
		physical = p;
		logical = l;
	}
	
	string toString() {
		return physical ~ "/" ~ logical;
	}
}

class physical_object {
	logical_object[string] objs;
	string thisAddr;
	
	Tid getTid() {
		return thisTid;
	}
		
	this(string id) {
		objs["Controller"] = new DefaultController;
		objs["Model"] = new model_logical_object;
		thisAddr = id;
	}
	
	address_t create() { // Create - Physical Level
		auto id = generateId;
		objs[id] = new logical_object;
		return address_t(this.thisAddr, id);
	}
	
	void send(JSONValue msg)
	in {
		assert("to" in msg);
	}
	do {
		auto reci = address_t(msg["to"].str);
		
		if ((reci.physical == thisAddr) || (reci.physical == ".")) {
			// Sending to myself.
			objs[reci.logical].receive(msg);
		} else {
			auto tid = lookup(reci);
			tid.send(cast(immutable)msg);
		}
	}
	
	JSONValue receive() {
		auto msg = receiveOnly!string;
		try {
			auto jmsg = parseJSON(msg);
			return jmsg;
		} finally {
			
		}
	}
	
	void start() {
		objs["Controller"].start();
	}
	
	class logical_object {
		address_t[string] addressbook;
		
		void create(string localname) {
			addressbook[localname] = this.outer.create();
		}
		
		void start() {}
		
		void send(JSONValue msg) {
			this.outer.send(msg);
		}
		
		void receive(JSONValue msg) {
			
		}
	}
	
	class model_logical_object: logical_object {
		override void create(string localname) {
			addressbook[localname] = createp();
		}
	}
	
	
	// Primary Classes
	class DefaultController: logical_object {
		override void start() {
			bool running = true;
			
			while (running) {
				auto msg = this.outer.receive();
				
				auto reci = address_t(msg["to"].str);
				this.outer.objs[reci.logical].receive(msg);
			}
		}
	}
	
	class Number: logical_object {
		import std.bigint;
		BigInt data;
		
		override void start() {
			data = 0;
		}
	}
	
	class Boolean: logical_object {
		bool data;
		override void start() {
			data = false;
		}
	}
	
	class String: logical_object {
		string data;
		override void start() {
			data = "";
		}
	}
	
	class inqClass: logical_object {
		
	}
}