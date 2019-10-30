package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ReadDao;
import dao.WriteDao;
import model.Condition;
import model.Notice;

@Service
public class NoticeCatalogImpl implements NoticeCatalog {

	@Autowired
	private WriteDao writeDao;
	
	@Autowired
	private ReadDao readDao;
	
	public List<Notice> readNotice(Condition c) {
		return readDao.readNotice(c);
	}

	public Integer getNoticeCount() {
		return readDao.getNoticeCount();
	}

	public Notice getNoticeDetail(Integer id) {
		return readDao.getNoticeDetail(id);
	}

	public Integer getMaxIdNotice() {
		return writeDao.getMaxIdNotice();
	}

	public void insertNotice(Notice notice) {
		writeDao.insertNotice(notice);
	}

}
