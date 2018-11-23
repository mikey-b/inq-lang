module httpobject;

import inqobject;
import std.json;
import vibe.d;

class HTTPObject: physical_object {
	
	this(string id) {
		super(id);
		objs["Controller"] = new HTTPController;
	}
	
	class HTTPController: DefaultController {
		override void start() {
			spawn((){
				auto settings = new HTTPServerSettings;
				settings.port = 8080;
				
				auto l = listenHTTP(settings, 
					(HTTPServerRequest req, HTTPServerResponse res)
					{
						res.writeBody(cast(ubyte[])"Inq web interface", "text/plain");
					});
				scope (exit) l.stopListening();

				runApplication();
			});
			DefaultController.start();
		}
		
		override void send(JSONValue msg) {
			if ("to" !in msg) {
				// Ive no idea how to send.
			} else {
				super.send(msg);
			}
		}
	}
}