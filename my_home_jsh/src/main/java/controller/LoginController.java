package controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logic.LoginCatalog;
import model.Cart;
import model.CartItem;
import model.User;

@Controller
public class LoginController {
	@Autowired
	private LoginCatalog loginCatalog;
	@Autowired
	private Cart cart;

	@RequestMapping(value = "/login/frame.html", method = RequestMethod.POST)
	public ModelAndView login(@Valid @ModelAttribute("guest") User guest, BindingResult br, HttpSession session) {
		ModelAndView mav = new ModelAndView("home/frame");
		if (br.hasErrors()) {
			mav.addObject("HEADER", "login.jsp");
			return mav;
		}
		String password = loginCatalog.getPwd(guest.getUser_id());
		if (password == null || !guest.getPassword().equals(password)) {
			mav.addObject("BODY", "loginResult.jsp");
		} else {
			session.setAttribute("loginUser", guest.getUser_id());
			// DB에서 카트 정보를 불러온다.시작
			List<CartItem> cartList = cart.getCart(guest.getUser_id());
			if (cartList != null) {
				Iterator it = cartList.iterator();
				int i = 0;
				while (it.hasNext()) {
					CartItem ci = (CartItem) it.next();
					this.cart.setCodeList(i, ci.getCode());
					this.cart.setNumList(i, ci.getNum());
					i++;
				}
				session.setAttribute("CART", this.cart);
			}
			// DB에서 카트 정보를 불러온다. 종료
			mav.addObject("BODY", "loginResult.jsp");
		}
		return mav;
	}

	@RequestMapping(value = "/login/login.html")
	public ModelAndView toLogin(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("home/login");
		request.setAttribute("guest", new User());
//		mav.addObject(new User());
		return mav;
	}
}
