module consoleobject;

import inqobject;
import std.json;
import std.stdio;
import std.concurrency;
import std.string;


class ConsoleObject: physical_object {
	this(string id) {
		super(id);
		objs["Controller"] = new ConsoleController;
	}
	
	class ConsoleController: DefaultController {
		override void start() {
		
			// This is here to take incoming messages, and send them to the objects mailbox.
			spawn((){
				string line;
				while((line = readln()) !is null) {
					JSONValue forward_msg = ["to": "./Controller", "data": line];
					ownerTid.send(cast(immutable)toJSON(forward_msg));
				}
			});
			DefaultController.start();
		}
		
		override void send(JSONValue msg) {
			if ("to" !in msg) {
				writeln(toJSON(msg));
			} else {
				super.send(msg);
			}
		}
		
		override void receive(JSONValue msg) {
			auto data = msg["data"].str;
			auto lookup = [data];
			if (indexOf(data, ",") != -1) lookup = data.split(",");
			
			auto cmd = lookup[0];
			
			final switch(cmd) {
				case "list":
				{
					writeln("List");
					break;
				}
			}
		}
	}
}