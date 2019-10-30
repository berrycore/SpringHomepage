package dao;

import java.util.List;

import model.Condition;
import model.Notice;

public interface NoticeDao {

	List<Notice> readNotice(Condition c);
	Integer getNoticeCount();
	Notice getNoticeDetail(Integer id);

	Integer getMaxId();
	void insertNotice(Notice notice);
	
}
