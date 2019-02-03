package travel.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import travel.bean.Customers;
import travel.service.CustService;

@RequestMapping("/Cust")
@Controller
public class CustController {	
	@Autowired
	CustService custservice;
	
	@RequestMapping(value="/Regist",method=RequestMethod.POST)
	public String Regist(Customers customers) {			
		custservice.Regist(customers);
		return "Login";
	}
	
	//登录
	@RequestMapping(value="/Login",method=RequestMethod.POST)
	public String Login(HttpServletRequest request,HttpServletResponse response,HttpSession httpSession) {
		//取得表单的用户名密码
		String username=request.getParameter("username");
		String password=request.getParameter("password");		
		//根据用户名密码查询用户
		Customers customer=custservice.getCustomerByUsernameAndPassword(username, password);
		//如果结果为空，则留在登录界面
		if(customer==null) {			
			return "Login";
		}
		//否则将用户内容保存进入session，进入主界面
		else {			
			httpSession.setAttribute("cust",customer);			
			return "Home";
		}
	}
	
}
