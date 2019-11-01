package controller;

import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Calendar;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import logic.WriteCatalog;
import model.Writing;

@Controller
public class WriteController {

	@Autowired
	private WriteCatalog writeCatalog;
	
	@RequestMapping(value="/write/write.html")
	public ModelAndView write(@Valid Writing writing, BindingResult br, HttpSession session,
			Integer parent_id, Integer order_no, Integer group_id) {
		if( br.hasErrors()) {
			ModelAndView mav = new ModelAndView("home/frame");
			mav.addObject("BODY", "writeForm.jsp");
			return mav;
		}
		MultipartFile multiFile = writing.getImage();
		String fileName = null;
		String path = null;
		OutputStream os = null;
		if( multiFile != null) {
			fileName = multiFile.getOriginalFilename();
			ServletContext ctx = session.getServletContext();
			path = ctx.getRealPath("/upload/"+fileName);
			System.out.println("업로드 경로 : " + path);
			try {
				os = new FileOutputStream(path);
				BufferedInputStream bis = new BufferedInputStream(multiFile.getInputStream());
				byte[] buffer = new byte[8156];
				int read = 0;
				while( (read = bis.read(buffer)) > 0) {
					os.write(buffer, 0, read);
				}
				if( os != null)
					os.close();
				
				
			} catch (Exception e) {
				e.printStackTrace();
			} 
			
			writing.setImage_name(fileName);
		}
		
		// DB insert
		Integer maxId = writeCatalog.getMaxWritingId();
		if( maxId == null )
			maxId = 0;
		
		if( writing.getParent_id() == null) {
			writing.setParent_id(0);
			writing.setOrder_no(0);
			//그룹ID 추가
			Integer gId = writeCatalog.selectMaxGroupId();
			writing.setGroup_id(gId + 1);
		}else {
			// 답글인 경우
			writing.setParent_id(parent_id);
			writing.setGroup_id(group_id);
			writing.setOrder_no(order_no);
			writeCatalog.updateOrderNoReply(writing);
		}
		
		writing.setWriting_id(maxId +1);
		Calendar today = Calendar.getInstance();
		int year = today.get(Calendar.YEAR);
		int month = today.get(Calendar.MONDAY) +1;
		int date = today.get(Calendar.DATE);
		String registerDate = year + "/" + month + "/" + date;
		writing.setRegister_date(registerDate);
		writeCatalog.insertWriting(writing);
		ModelAndView mav = new ModelAndView("home/frame");
		mav.addObject("BODY", "writeResult.jsp");
		return mav;
		
	}
	
	@RequestMapping(value="/write/writeForm.html")
	public ModelAndView form(HttpSession session) {
		String id = (String)session.getAttribute("loginUser");
		ModelAndView mav = new ModelAndView("home/frame");
		if( id == null) {
			mav.addObject("BODY", "writeFormLogin.jsp");
		}else {
			mav.addObject("BODY", "writeForm.jsp");
			mav.addObject(new Writing());
		}
		return mav;
	}
}
