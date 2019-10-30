package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Condition;
import model.Notice;

@Repository
public class NoticeDaoImpl implements NoticeDao {

	@Autowired
	private SqlSession session;
	
	public List<Notice> readNotice(Condition c) {
		return session.selectList("mapper.myMapper.getNoticeList", c);
	}

	public Integer getNoticeCount() {
		return session.selectOne("mapper.myMapper.getNoticeCount");
	}

	public Notice getNoticeDetail(Integer id) {
		return session.selectOne("mapper.myMapper.getNoticeDetail", id);
	}

	public Integer getMaxId() {
		return session.selectOne("mapper.myMapper.getMaxNoticeId");
	}

	public void insertNotice(Notice notice) {
		session.insert("mapper.myMapper.putNotice", notice);
	}

}
