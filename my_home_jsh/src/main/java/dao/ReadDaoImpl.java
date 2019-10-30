package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Bbs;
import model.Condition;
import model.Notice;
@Repository
public class ReadDaoImpl implements ReadDao {
	@Autowired
	private SqlSession session;
	public List<Bbs> readBbs(Condition c) {
		return session.selectList("mapper.myMapper.getBBSList",c);
	}
	public Integer getBbsCount() {
		return session.selectOne("mapper.myMapper.getBBSCount");
	}
	public Bbs getBbsDetail(Integer id) {
		return session.selectOne("mapper.myMapper.getBBSDetail",id);
	}
	
	public List<Notice> readNotice(Condition c) {
		return session.selectList("mapper.myMapper.getNoticeList", c);
	}
	public Integer getNoticeCount() {
		return session.selectOne("mapper.myMapper.getNoticeCount");
	}
	public Notice getNoticeDetail(Integer id) {
		return session.selectOne("mapper.myMapper.getNoticeDetail");
	}

}


