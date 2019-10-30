package logic;

import java.util.List;

import model.Condition;
import model.Notice;

public interface NoticeCatalog {
	Integer getMaxNoticeId();
	void putNotice(Notice notice);
	
	List<Notice> readNotice(Condition c);
	Integer getNoticeCount();
	Notice getNoticeDetail(Integer id);
}
