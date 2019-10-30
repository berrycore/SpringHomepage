package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.NoticeDao;
import model.Condition;
import model.Notice;

@Service
public class NoticeCatalogImpl implements NoticeCatalog {

	@Autowired
	private NoticeDao noticeDao;
	
	
	public Integer getMaxNoticeId() {
		return noticeDao.getMaxId();
	}

	public void putNotice(Notice notice) {
		noticeDao.insertNotice(notice);
	}

	public List<Notice> readNotice(Condition c) {
		return noticeDao.readNotice(c);
	}

	public Integer getNoticeCount() {
		return noticeDao.getNoticeCount();
	}

	public Notice getNoticeDetail(Integer id) {
		return noticeDao.getNoticeDetail(id);
	}

}
