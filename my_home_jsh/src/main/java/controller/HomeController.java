package controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logic.WriteCatalog;
import model.Bbs;
import model.User;

@Controller
public class HomeController {
	@RequestMapping(value = "/home/write.html", method = RequestMethod.POST)
	public ModelAndView put(@Valid Bbs bbs, BindingResult br, HttpSession session) {
		if (br.hasErrors()) {
			ModelAndView mav = new ModelAndView("home/frame");
			mav.addObject("BODY", "bbs_input.jsp");
			mav.getModel().putAll(br.getModel());
			return mav;
		}
		String id = (String) session.getAttribute("loginUser");
		ModelAndView mav = new ModelAndView("home/frame");
		if (id == null) {// 로그인을 하지 않은 경우
			mav.addObject("RESULT", "nobody");
			mav.addObject(new User());
			mav.addObject("BODY", "nologin.jsp");
			return mav;
		} else {
			bbs.setId(id);
			writeCatalog.putBbs(bbs);
			return new ModelAndView("redirect:/read/read.html");
		}
	}

	@Autowired
	private WriteCatalog writeCatalog;

	@RequestMapping(value = "/home/bbsTemplate.html", method = RequestMethod.GET)
	public ModelAndView bbsTemp() {
		ModelAndView mav = new ModelAndView("home/frame");
		mav.addObject(new Bbs());
		mav.addObject("BODY", "bbs_input.jsp");
		return mav;
	}

	@RequestMapping(value = "/home/intro.html", method = RequestMethod.GET)
	public ModelAndView intro(String BODY) {
		ModelAndView mav = new ModelAndView("home/frame");
		mav.addObject("BODY", BODY);
		return mav;
	}

	@RequestMapping(value = "/home/userentry.html", method = RequestMethod.GET)
	public ModelAndView entryForm() {
		ModelAndView mav = new ModelAndView("home/frame");
		mav.addObject(new User());
		mav.addObject("BODY", "userentry.jsp");
		return mav;
	}
}
