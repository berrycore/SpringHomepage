package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ReadDao;
import dao.WriteDao;
import model.Bbs;
import model.Condition;
import model.Writing;
@Service
public class WriteCatalogImpl implements WriteCatalog {
	@Autowired
	private WriteDao writeDao;
	@Autowired
	private ReadDao readDao;
	public List<Bbs> readBbs(Condition c) {
		return readDao.readBbs(c);
	}
	public Integer getBbsCount() {
		return readDao.getBbsCount();
	}
	public Bbs getBbsDetail(Integer id) {
		return readDao.getBbsDetail(id);
	}
	public Integer getMaxBbsId() {
		return writeDao.getMaxId();
	}
	public void putBbs(Bbs bbs) {
		writeDao.insertBBS(bbs);
	}
	public Integer getMaxWritingId() {
		return writeDao.getMaxWritingId();
	}
	public void insertWriting(Writing writing) {
		writeDao.insertWriting(writing);		
	}
	public List<Writing> getWriting(Condition c) {
		return writeDao.getWriting(c);
	}
	public Integer selectMaxGroupId() {
		return writeDao.selectMaxGroupId();
	}
	public void updateOrderNoReply(Writing writing) {
		writeDao.updateOrderNoReply(writing);
	}
	public int selectImageCount() {
		return readDao.selectImageCount();
	}
	public int selectReplyPage(Integer SEQNO) {
		return readDao.selectReplyPage(SEQNO);
	}
	public Writing getImageWriting(Integer id) {
		return writeDao.getImageWriting(id);
	}
	public void deleteImageWriting(Integer id) {
		writeDao.deleteWriting(id);
	}
	public void updateImageWriting(Writing writing) {
		writeDao.updateWriting(writing);
	}
}