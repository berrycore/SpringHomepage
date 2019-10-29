package logic;

import java.util.List;

import model.Bbs;
import model.Condition;

public interface WriteCatalog {
	Integer getMaxBbsId();//게시글 등록
	void putBbs(Bbs bbs);//게시글 등록
	
	List<Bbs> readBbs(Condition c);//게시글 목록
	Integer getBbsCount();//게시글 목록
	Bbs getBbsDetail(Integer id);//게시글 목록
}








