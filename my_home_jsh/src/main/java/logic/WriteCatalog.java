package logic;

import java.util.List;

import model.Bbs;
import model.Condition;
import model.Writing;

public interface WriteCatalog {
	Integer getMaxWritingId();	// 이미지게시판
	void insertWriting(Writing writing);
	List<Writing> getWriting(Condition c);
	
	Integer getMaxBbsId();//게시글 등록
	void putBbs(Bbs bbs);//게시글 등록
	
	List<Bbs> readBbs(Condition c);//게시글 목록
	Integer getBbsCount();//게시글 목록
	Bbs getBbsDetail(Integer id);//게시글 목록
	Integer selectMaxGroupId();
	void updateOrderNoReply(Writing writing);
}








