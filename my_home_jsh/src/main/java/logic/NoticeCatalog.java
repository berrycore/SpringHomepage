package logic;

import java.util.List;

import model.Condition;
import model.Notice;

public interface NoticeCatalog {
	
	List<Notice> readNotice(Condition c);
	Integer getNoticeCount();
	Notice getNoticeDetail(Integer id);
	
	Integer getMaxIdNotice();
	void insertNotice(Notice notice);
}
