package com.yc.tn.web.handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.yc.tn.entity.LocationEntity;
import com.yc.tn.service.LocationService;

@Controller
@RequestMapping("/location")
public class LocationHandler {

	@Autowired
	private LocationService locationService;
	
	@RequestMapping("/addr")
	@ResponseBody
	public List<LocationEntity> maps(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		int scenic_Level =Integer.parseInt(request.getParameter("scenic_Level"));
		int city_Id=Integer.parseInt(request.getParameter("city_Id"));
		int tag_Id=Integer.parseInt(request.getParameter("tag_Id"));
		String scenic_Type = locationService.getScenicType(tag_Id);
		LocationEntity  locationEntity = new LocationEntity();
		locationEntity.setScenic_Level(scenic_Level);
		locationEntity.setCity_Id(city_Id);
		locationEntity.setScenic_Type(scenic_Type);

		return  locationService.getAllLocation(locationEntity);
	}
}
