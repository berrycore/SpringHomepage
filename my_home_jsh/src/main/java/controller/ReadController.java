package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logic.WriteCatalog;
import model.Bbs;
import model.Condition;

@Controller
public class ReadController {
	@Autowired
	private WriteCatalog writeCatalog;
	@RequestMapping(value="/read/read.html",
			method=RequestMethod.GET)
	public ModelAndView readBbs(Integer pageNo) {
		ModelAndView mav=new ModelAndView("home/frame");
		Integer cnt=writeCatalog.getBbsCount();
		if(cnt==null) cnt=0;
		int startRow=0; int endRow=0; int pageCnt=0;
		int currentPage=0;
		if(pageNo == null) currentPage = 1;
		else currentPage = pageNo;
		if(cnt > 0) {
			pageCnt = cnt / 5;
			if(cnt % 5 > 0) pageCnt++;
			startRow=(currentPage-1)*5 + 1;
			endRow=currentPage * 5;
			if(endRow > cnt) endRow = cnt;
		}
		Condition c = new Condition();
		c.setStartRow(startRow); c.setEndRow(endRow);
		List<Bbs> bbsList = writeCatalog.readBbs(c);
		mav.addObject("BBS_LIST",bbsList);
		mav.addObject("COUNT",pageCnt);
		mav.addObject("BODY","bbsListView.jsp");
		return mav;
	}
}













