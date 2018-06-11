package org.iii.ee100.animour.common.web;

import java.security.Principal;

import org.iii.ee100.animour.member.entity.Chat;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.ChatService;
import org.iii.ee100.animour.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

@Controller
public class WebSocketController {
	
	@Autowired
	private SimpMessagingTemplate simpMessagingTemplate;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ChatService chatService;
	
	@MessageMapping("/chat/{memberId}")
	public void handleChat(Principal principal, Chat chat, @DestinationVariable Long memberId) {
		//if(principal.getName().equals("ViewSonic")){
		
			System.out.println("++++++++++++++++"+chat.getMessage()+"+++++++++++++++++");
			System.out.println("++++++++++++++++"+memberId+"+++++++++++++++++");
			//memberService.getOne(memberId).getAccount();
			Member current = memberService.getOneByAccount(principal.getName());
			chat.setFromWho(current);
			chat.setMemberId(memberId);
			
			if (principal.getName().equals("BenQ")) {
				simpMessagingTemplate.convertAndSendToUser(memberService.getOne(memberId).getAccount(), "/queue/chat/BenQ", chat);
				System.out.println("++++++++++++++++"+"BENQ發給ViewSonic"+"+++++++++++++++++");
			} else if (principal.getName().equals("ryu")){
				simpMessagingTemplate.convertAndSendToUser(memberService.getOne(memberId).getAccount(), "/queue/chat/ryu", chat);
				System.out.println("++++++++++++++++"+"RYU發給ViewSonic"+"+++++++++++++++++");
			} else {
				simpMessagingTemplate.convertAndSendToUser(memberService.getOne(memberId).getAccount(), "/queue/chat", chat);
				System.out.println("++++++++++++++++"+"ViewSonic發給大家"+"+++++++++++++++++");
			}
		//} else {
			//System.out.println("++++++++++++++++"+msg+"+++++++++++++++++");
			//simpMessagingTemplate.convertAndSendToUser("ViewSonic", "/queue/chat", principal.getName() + "-發送訊息:" + msg);
		//}
	}
	
}
