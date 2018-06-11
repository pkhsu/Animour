package org.iii.ee100.animour.common.web;

import org.iii.ee100.animour.common.model.Greeting;
import org.iii.ee100.animour.common.model.HelloMessage;
import org.iii.ee100.animour.member.entity.Notice;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.util.HtmlUtils;

@Controller
public class GreetingController {

	@MessageMapping("/hello")
	@SendTo("/topic/greetings")
	public Greeting greeting(Notice message) throws Exception {
		Thread.sleep(1000); // simulated delay
		return new Greeting("Hello, " + HtmlUtils.htmlEscape(message.getDetail()) + "!");
	}

}
