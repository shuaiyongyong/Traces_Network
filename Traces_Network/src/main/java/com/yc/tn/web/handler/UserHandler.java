package com.yc.tn.web.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.tn.entity.UserEntity;
import com.yc.tn.service.UserService;

@Controller
@RequestMapping("/user")
public class UserHandler {

	@Autowired
	private UserService userService;

	@RequestMapping("/numLogin")
	public String doNumLogin(UserEntity user,ModelMap map){
		user = userService.login(user);
		System.out.println(user);
		if(user != null){
			map.put("loginUser", user);
			return "redirect:/back/admin.jsp";
		}
		map.put("errorMsg", "用户名或密码错误");
		return "forward:/page/login.jsp";
	}

	//手机验证码登录,为以防万一，做手机号验证
	@RequestMapping("/checkCode")
	@ResponseBody
	private void doCheckCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String utel=request.getParameter("utel");
		String rCode=request.getParameter("text");
		String sCode=null;

		if(request.getSession().getAttribute("code")==null){
			request.getSession().setAttribute("errorMsg", "验证码还未发送...");
			response.sendRedirect("../page/login.jsp");
			return;
		}else{
			sCode=request.getSession().getAttribute("code").toString();
		}

		if(userService.checkTel(utel) && rCode.intern()==sCode.intern()){
			request.getSession().setAttribute("loginUser", utel);
			response.sendRedirect("../page/admin.jsp");
		}else{
			request.getSession().setAttribute("errorMsg", "验证码错误...");
			response.sendRedirect("../page/login.jsp");
		}
	}
}
