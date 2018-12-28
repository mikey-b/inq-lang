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

string generateId() {
	auto uuid = randomUUID;
	return uuid.toString;
}

alias physicaladdress_t = string;
alias logicaladdress_t = string;

struct address_t {
	physicaladdress_t physical;
	logicaladdress_t logical;
	
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
	physicaladdress_t myAddr;
	logical_object[logicaladdress_t] objs;
	
	void destruct_logical_object(address_t who) {
		assert(who.physical == myAddr);
		assert(who.logical in objs);
		objs.remove(who.logical);
	}
	
	Tid getTid() {
		return thisTid;
	}
		
	this(physicaladdress_t id) {
		objs["Controller"] = new DefaultController;
		objs["Model"] = new DefaultModel;
		myAddr = id;
	}
	
	address_t create() { // Create - Physical Level
		auto id = generateId;
		objs[id] = new logical_object;
		return address_t(myAddr, id);
	}
	
	void start() {
		// Pass thread control to the Controller (Logical) Object.
		objs["Controller"].start();
	}
	
	// Messaging Mechanisms.
	void send(JSONValue msg)
	in {
		assert("to" in msg);
	}
	do {
		auto reci = address_t(msg["to"].str);
		
		if ((reci.physical == myAddr) || (reci.physical == ".")) {
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
	
	class logical_object { // AKA Nil Class, Initial Object State.
		// TODO: Where should this go?
		alias ctx_t = address_t[string];
		alias method_t = void delegate( logical_object self, ctx_t ctx);
		alias bytecode_t = string;

		
		address_t myAddr;
		address_t[string] addressbook;
		method_t[string] methods;
		
		void create(string localname) {
			// This is polymorphic, Sometimes it will call this.outer.create() (physical level), sometimes it will call pcreate() (vm level).
			addressbook[localname] = this.outer.create();
		}
		
		void start() {}
		
		void send(JSONValue msg) {
			this.outer.send(msg);
		}
		
		void receive(JSONValue msg) {
			// If Role Method,
			// build_method, and execute.
			// auto role_method = build_method(msg.body);
			// role_method(this, msg.ctx);
		}
		
		// Internal Code
		auto build_method(bytecode_t bytecode) {
			// Returns a callable object.
			// Interpreter Code Here
			return delegate(logical_object self, ctx_t context) => {
				
				writeln(bytecode);
				writeln("calling a method");
								
				ctx_t current_ctx;
				
				
				// CREATE
				{
					auto newobjname = "";
					self.create(newobjname);
				}
				
				// DESTROY
				{
					// Send a "Destruct" message to the receiver
					auto reciever = "";
					JSONValue msg;
					msg.object["to"] = reciever;
					self.send(msg);
					addressbook.remove(reciever);
					current_ctx = null;
				}
				
				// CALL
				{
					auto methodname = "";
					// Built in Methods Here...
					if (methodname == "destruct") {
						self.outer.destruct_logical_object(myAddr);
						return; // END OF OBJECT, GOODBYE CRUEL WORLD.
					} else {
						assert(methodname in methods);
						methods[methodname](self, current_ctx);
					}
					
					// Clear the current context
					current_ctx = null;
				}
				// PUSH
				{
					auto rolename = "";
					auto objectname = "";
					assert(objectname in addressbook);
					current_ctx[rolename] = addressbook[objectname];
				}
				// SEND
				{
					auto reciever = "";
					JSONValue msg;
					msg.object["to"] = reciever;
					self.send(msg);
					current_ctx = null;
				}
				
				
				
			};
		}
		
		unittest {
		/*
			auto t = new logical_object();
			auto x = t.build_method("test");
			x("self", "ctx");
		*/
		}
	}
	
	// Primary Classes
	class DefaultModel: logical_object {
		override void create(string localname) {
			addressbook[localname] = createp();
		}
	}	

	class DefaultController: logical_object {
		override void start() {
			bool running = true;
			
			while (running) {
				auto msg = this.outer.receive();
				auto reci = address_t(msg["to"].str);
				if (reci.logical in this.outer.objs) {
					this.outer.objs[reci.logical].receive(msg);
				} else {
					writeln("Unknown Object!");
				}
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