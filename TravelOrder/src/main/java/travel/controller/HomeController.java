package travel.controller;

import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.support.spring.annotation.ResponseJSONP;


import travel.bean.Customers;
import travel.bean.Flightrecord;
import travel.bean.Flights;
import travel.service.FlightService;

@Controller
@RequestMapping("/home")
public class HomeController {
	@Autowired
	FlightService flightservice;
	
	//主界面
	@RequestMapping("/index")
	public String index() {
		return "Home";
	}
	
	//航班预约记录界面
	@RequestMapping("/record")
	public String record() {
		return "FlightRecord";
	}
	
	//行程记录界面
	@RequestMapping("/pathrecord")
	public String path() {
		return "PathRecord";
	}
	
	//获取全部航班的json数据
	@RequestMapping("/flight.json")
	@ResponseJSONP
	public List<Flights> getAllFlightsJson() {		
		return flightservice.getAllFlights();
	}
	
	//通过起点和终点查询航班的json数据
	@RequestMapping("/searchflight.json")
	@ResponseJSONP
	public List<Flights> getSearchFlightsJson(HttpServletRequest request) {	
		String start=request.getParameter("start");
		String end=request.getParameter("end");		
		return flightservice.searchFlightsByStartAndEnd(start, end);
	}
	
	//处理预定航班请求
	@RequestMapping("/orderFlight")
	public String orderFlight(HttpServletRequest request,HttpSession session) {
		//航班id通过参数得到
		Integer flightId=Integer.valueOf(request.getParameter("flight_id"));
		//用户id通过session获得
		Integer custId=((Customers)session.getAttribute("cust")).getCustId();
		
		flightservice.orderFlight(flightId, custId);
		
		return "Home";
	}
	
	//处理取消航班请求
	@RequestMapping("/cancelFlight")
	public String cancelFlight(HttpServletRequest request) {
		Integer id=Integer.valueOf(request.getParameter("id"));
		Integer flightId=Integer.valueOf(request.getParameter("flightId"));

		flightservice.cancelFlight(id,flightId);
		return "FlightRecord";
	}
	//处理添加请求
	@RequestMapping(value="/create",method=RequestMethod.POST)
	public String createFlight(HttpServletRequest request) {
		try {
			//解决中文乱码
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		String flightNum=request.getParameter("flightNum");
		Integer seatNum=Integer.valueOf(request.getParameter("seatNum"));
		Integer availNum=Integer.valueOf(request.getParameter("availNum"));
		Float price=Float.valueOf(request.getParameter("price"));
		String fromCity=request.getParameter("fromCity");
		String arivCity=request.getParameter("arivCity");
		
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date startTime=new Date();
		try {
			startTime=format.parse(request.getParameter("startTime"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("create"+fromCity);
		Flights flights=new Flights();
		flights.setArivCity(arivCity);
		flights.setAvailNum(availNum);
		flights.setFlightNum(flightNum);
		flights.setFromCity(fromCity);
		flights.setPrice(price);
		flights.setStartDate(startTime);
		flights.setSeatNum(seatNum);
		
		flightservice.createFlight(flights);
		
		return "Home";
	}
	
	
	//处理更新请求
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updateFlight(HttpServletRequest request) {
		try {
			//解决中文乱码
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		String flightNum=request.getParameter("flightNum");
		Integer seatNum=Integer.valueOf(request.getParameter("seatNum"));
		Integer availNum=Integer.valueOf(request.getParameter("availNum"));
		Float price=Float.valueOf(request.getParameter("price"));
		String fromCity=request.getParameter("fromCity");
		String arivCity=request.getParameter("arivCity");
		
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date startTime=new Date();
		try {
			startTime=format.parse(request.getParameter("startTime"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("update"+fromCity);
		Flights flights=new Flights();
		flights.setArivCity(arivCity);
		flights.setAvailNum(availNum);
		flights.setFlightNum(flightNum);
		flights.setFromCity(fromCity);
		flights.setPrice(price);
		flights.setStartDate(startTime);
		flights.setSeatNum(seatNum);
		
		flightservice.updateFlightByFlightNum(flights);
		
		return "Home";
	}
	
	//处理删除请求
	@RequestMapping(value="/delete")
	public String deleteFlight(HttpServletRequest request) {
		Integer flightId=Integer.valueOf(request.getParameter("flight_id"));
		flightservice.deleteFlightByFlightId(flightId);
		
		return "Home";
	}
	
	//返回预订航班记录的json
	@RequestMapping("/record.json")
	@ResponseJSONP
	public List<Flightrecord> getFlightRecordJson(HttpServletRequest request){
		Integer custId=Integer.valueOf(request.getParameter("custId"));
		return flightservice.getFlightRecordByCustId(custId);
	}
	
	//返回行程记录的json
	@RequestMapping("/pathrecord.json")
	@ResponseJSONP
	public List<Flightrecord> getPathRecordJson(HttpServletRequest request){
		
		Integer custId=Integer.valueOf(request.getParameter("custId"));
		return flightservice.getPathRecordByCustId(custId);
	}
}
