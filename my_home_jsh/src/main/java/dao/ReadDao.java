package dao;

import java.util.List;

import model.Bbs;
import model.Condition;

public interface ReadDao {
	List<Bbs> readBbs(Condition c);
	Integer getBbsCount();
	Bbs getBbsDetail(Integer id);
}
