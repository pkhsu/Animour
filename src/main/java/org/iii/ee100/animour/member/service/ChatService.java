package org.iii.ee100.animour.member.service;

import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.member.dao.ChatDao;
import org.iii.ee100.animour.member.entity.Chat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChatService extends GenericService<Chat> {

	@Autowired
	ChatDao chatdao;

	@Autowired
	MemberService memberService;

	// 新增訊息
	public void insert(Chat chat) {
		chatdao.save(chat);
	}

}
