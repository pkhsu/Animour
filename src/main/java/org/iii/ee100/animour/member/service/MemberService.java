package org.iii.ee100.animour.member.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.forum.dao.ArticleDao;
import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.member.dao.MemberDao;
import org.iii.ee100.animour.member.dao.MyFriendDao;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.entity.MyFriend;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class MemberService extends GenericService<Member> {

	@Autowired
	MemberDao memberDao;
	
	@Autowired
	MyFriendDao myFriendDao;
	
	//新增會員
	public void insert(Member newMember)  {
		String passwordEncode=new BCryptPasswordEncoder().encode(newMember.getPassword());
		 newMember.setPassword(passwordEncode);
		System.out.println("member name:"+newMember.getAccount()+", member password:"+newMember.getPassword());
		System.out.println("new "+"member name:"+newMember.getAccount()+", member password:"+newMember.getPassword());

		memberDao.save(newMember);
	}

	//會員修改密碼
	public void update(Member member,String newPassword) {
		String newPasswordEncode=new BCryptPasswordEncoder().encode(newPassword);
		member.setPassword(newPasswordEncode);
		memberDao.save(member);
		
//		member.setPassword(newPassword);
//		memberDao.save(member);
	}
	
	//會員修改個人資料
	public void update(Member member)  {
		Member memberToUpdate=memberDao.findByAccount(member.getAccount());
		memberToUpdate.setName(member.getName());
		memberToUpdate.setNickname(member.getNickname());
		memberToUpdate.setCell(member.getCell());
		memberToUpdate.setEmail(member.getEmail());
		memberToUpdate.setAddress(member.getAddress());
		memberToUpdate.setSignature(member.getSignature());
		memberToUpdate.setImages(member.getImages());
		memberDao.save(memberToUpdate);
	}
	
	
	//更改會員當前狀態(status:0 close/1 on)
	public void changeMemberStatus(Long id) {
		Member deletemember = memberDao.getOne(id);
		if(deletemember.getStatus()==true) {
				deletemember.setStatus(false);}
		else{
			deletemember.setStatus(true);
		}
		memberDao.save(deletemember);
	}

	
	//查詢單一會員
	public Member getOne(Long id) {
		return memberDao.findOne(id);
	}

	//查詢全部會員
	public ArrayList<Member> getAll() {
		return (ArrayList<Member>) memberDao.findAll();
	}
	
	//讀取單一會員
	public Member getOneByAccount(String account) {
		return memberDao.findByAccount(account);
	}
	
	
	public Member getCurrentMember() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails ) {
			return (Member) principal;
		} else {
			return null;
		}		
	}
	
	public Member getNewCurrentMember() {
		if(getCurrentMember()==null) {
			return null;
		}
		Member principal = memberDao.findByAccount(getCurrentMember().getAccount());
		return principal;
	}
	

	
	/****************************/
	//驗證密碼(會員修改密碼需驗證舊密碼)
	public boolean validPassword(String password) {
		if(getNewCurrentMember().getPassword().equals(password)) {
			return true;
		}
		else {
			return false;
		}		
	}
	
	//判斷信箱是否重複
	public boolean emailExist(String email) {
        Member member = memberDao.findByEmail(email);
        if (member != null) {
            return true;
        }
        return false;
	}

	//產生隨機碼
		public String newPassword() {
			//密碼字串
			String str="";
			//密碼長度6
	        int i=0,x=0,y=0,z=0;
	        
	        while(x<1 || y<1 || z<1 || i<=8) {
//	        while(!(x>1 && y>1 && z>1 && i<=8)) {
	        //for(int i=0;i<6;i++){
	           int n=(int) (Math.random()*3);
	           char c=' ';

	           if(n==0){
	        	   x++;
	               c=(char)(Math.random()*10+48);//隨機0-9碼
	                              }
	           else if(n==1){
	               c=(char)(Math.random()*26+97);//隨機小寫字母
	               y++;
	               }
	           else{
	               c=(char)(Math.random()*26+65);//隨機大寫字母
	               z++;}
    
	           str=c+str; 
	           i++;
	         //}
	        }
			return str;
		}
		
		
		
		/***********************Friend 好友**********************/
		//收藏好友
		
		public MyFriend findByMemberIdAndFriendId(Long memberId,Long friendId) {
			return myFriendDao.findByMemberIdAndFriendId(memberId, friendId);
		};
		
		
		public List<MyFriend> findByMemberIdAndLove(Long memberId, boolean love){
			return myFriendDao.findByMemberIdAndLove(memberId, love);
		}
		
		//新增好友
		public void insertFriend(MyFriend friend) {
			myFriendDao.save(friend);
		}

		//修改好友狀態
		public void updateFriend(MyFriend friend) {
			Long memberId=friend.getMember().getId();
			Long friendId=friend.getFriendId();
			MyFriend newFriend=myFriendDao.findByMemberIdAndFriendId(memberId, friendId);
			if(newFriend.getLove()==true) {
				newFriend.setLove(false);
			}else {
				newFriend.setLove(true);
			}
			myFriendDao.save(newFriend);
		}
		
		
		//homepage 撈資料
		@Autowired
		ArticleDao articleDao;
		
		public List<Article> getArticlesByMemberId(Long Id) {
			return articleDao.findByMemberIdAndStatus(Id,true);
		}
		
		public Map<String,Integer> chart() {
			List<Member> list = memberDao.findAll();
			Map<String,Integer> map = new HashMap<String,Integer>();
			for(Member member:list) {
				map.put(member.getAccount(), myFriendDao.findByFriendIdAndLove(member.getId(), true).size());
			}
			return map;
		}
		
}

