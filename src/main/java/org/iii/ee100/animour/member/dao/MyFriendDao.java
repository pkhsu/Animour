package org.iii.ee100.animour.member.dao;

import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.forum.entity.ThumbsUp;
import org.iii.ee100.animour.member.entity.MyFriend;

public interface MyFriendDao extends GenericDao<MyFriend> {
	//更改
	MyFriend findByMemberIdAndFriendId(Long memberId, Long friendId);
	
	//計數
	List<MyFriend> findByMemberIdAndLove(Long memberId, boolean love);
	
	//計數
	List<MyFriend> findByFriendIdAndLove(Long friendId, boolean love);
}
