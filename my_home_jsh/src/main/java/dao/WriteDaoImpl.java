package dao;

import java.util.Calendar;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Bbs;
import model.Notice;

@Repository
public class WriteDaoImpl implements WriteDao {
	@Autowired
	private SqlSession session;

	public Integer getMaxId() {
		return session.selectOne("mapper.myMapper.getMaxBbsId");
	}

	public void insertBBS(Bbs bbs) {
		Integer seqNo = this.getMaxId();
		if (seqNo == null || seqNo == 0) {
			seqNo = 0;
		}
		bbs.setSeqno(seqNo + 1);// 글번호

		Calendar today = Calendar.getInstance();
		int year = today.get(Calendar.YEAR);
		int month = today.get(Calendar.MONTH) + 1;
		int date = today.get(Calendar.DATE);
		String bbsDate = year + "/" + month + "/" + date;
		bbs.setBbs_date(bbsDate);
		session.insert("mapper.myMapper.putBBS", bbs);
	}

	public Integer getMaxIdNotice() {
		return session.selectOne("mapper.myMapper.getMaxNoticeId");
	}

	public void insertNotice(Notice notice) {
		Integer seqNo = this.getMaxIdNotice();
		if( seqNo == null || seqNo == 0) {
			seqNo = 0;
		}
		notice.setNotice_seqno(seqNo + 1);
		
		Calendar today = Calendar.getInstance();
		int year = today.get(Calendar.YEAR);
		int month = today.get(Calendar.MONTH) + 1;
		int date = today.get(Calendar.DATE);
		String writeDate = year + "/" + month + "/" + date;
		
		notice.setNotice_regist_date(writeDate);
		session.insert("mapper.myMapper.putNotice", notice);
	}

}
