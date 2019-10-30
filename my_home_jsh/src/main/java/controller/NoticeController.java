package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logic.NoticeCatalog;
import model.Condition;
import model.Notice;

@Controller
public class NoticeController {

	@Autowired
	private NoticeCatalog noticeCatalog;
	
	@RequestMapping(value="/notice/noticeDetail.html", method=RequestMethod.GET)
	public ModelAndView detail(Integer SEQNO) {
		ModelAndView mav = new ModelAndView("home/frame");
		Notice notice = noticeCatalog.getNoticeDetail(SEQNO);
		mav.addObject("NOTICE", notice);
		mav.addObject("BODY", "noticeReadView.jsp");
		return mav;
	}
	
	@RequestMapping(value="/notice/read.html", method = RequestMethod.GET)
	public ModelAndView readNotice(Integer pageNo) {
		ModelAndView mav = new ModelAndView("home/frame");
		Integer cnt = noticeCatalog.getNoticeCount();
		if( cnt == null)
			cnt = 0;
		int startRow = 0;
		int endRow = 0;
		int pageCnt = 0;
		int currentPage = 0;
		if( pageNo == null) {
			currentPage = 1;
		}else {
			currentPage = pageNo;
		}
		
		if (cnt > 0) {
			pageCnt = cnt / 5;
			if (cnt % 5 > 0)
				pageCnt++;
			startRow = (currentPage - 1) * 5 + 1;
			endRow = currentPage * 5;
			if (endRow > cnt)
				endRow = cnt;
		}
		
		Condition c = new Condition();
		c.setStartRow(startRow);
		c.setEndRow(endRow);
		
		List<Notice> noticeList = noticeCatalog.readNotice(c);
		mav.addObject("NOTICE_LIST", noticeList);
		mav.addObject("COUNT", pageCnt);
		mav.addObject("BODY", "noticeRead.jsp");
				
		return mav;
	}
}
