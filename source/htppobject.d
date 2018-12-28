module httpobject;

import inqobject;
import std.json;
import vibe.d;

final class WebInterface {
	string[] messages;
	LocalManualEvent messageEvent;
	
	this()
	{
		messageEvent = createManualEvent();
	}
	
	void get() {
	
	}
	void getWS(scope WebSocket socket) {
		messages ~= "New Connection";
	
		auto writer = runTask({
			auto nm = messages.length;
			
			while(socket.connected) {
				while (nm < messages.length) socket.send(messages[nm++]);
				while (messages.length <= nm) messageEvent.wait();
			}
		});
		
		while (socket.waitForData) {
			auto message = socket.receiveText();
			if (message.length) messages ~= message; 
			messageEvent.emit();
		}
		
		writer.join();
	}
}
		
class HTTPObject: physical_object {
	
	this(string id) {
		super(id);
		objs["Controller"] = new HTTPController;
	}
	
	class HTTPController: DefaultController {
		override void start() {
			spawn((){
				auto router = new URLRouter;
				
				router.registerWebInterface(new WebInterface);
				router.get("*", serveStaticFiles("html/"));
								
				auto settings = new HTTPServerSettings;
				settings.port = 8080;
				//settings.options &= ~HTTPServerOption.errorStackTraces;
				
				auto l = listenHTTP(settings, router);
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