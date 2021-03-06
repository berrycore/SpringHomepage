package dao;

import java.util.List;

import model.Bbs;
import model.Condition;
import model.Notice;
import model.Writing;

public interface WriteDao {
	// bbs
	Integer getMaxId();
	void insertBBS(Bbs bbs);
	
	// notice
	Integer getMaxIdNotice();
	void insertNotice(Notice notice);
	
	// image - upload
	Integer getMaxWritingId();
	void insertWriting(Writing writing);
	List<Writing> getWriting(Condition c);
	Integer selectMaxGroupId();
	void updateOrderNoReply(Writing writing);
	
	
	// image - writing
	Writing getImageWriting(Integer id);
	
	// image - delete
	void deleteWriting(Integer id);
	
	// image - modify
	void updateWriting(Writing writing);

}
