package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogoutController {
	@RequestMapping(value = "/logout/frame.html")
	public ModelAndView logout(HttpSession session) {
		session.removeAttribute("loginUser");
		ModelAndView mav = new ModelAndView("home/frame");
		mav.addObject("BODY", "logoutResult.jsp");
		return mav;
	}
}
