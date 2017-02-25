package com.yc.tn.web.handler;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.tn.entity.CityEntity;
import com.yc.tn.service.CityService;


@Controller
@RequestMapping("/city")
public class CityHandler {

	@Autowired
	private CityService cityService;
	
	@RequestMapping("/list")
	@ResponseBody
	public List<CityEntity> list(){
		return cityService.allCity();	
	}
	
	@RequestMapping("/cityList")
	@ResponseBody
	public List<CityEntity> cityList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		int region_Id = Integer.valueOf(request.getParameter("region_Id"));
		
		return cityService.cityList(region_Id);	
	}
}
