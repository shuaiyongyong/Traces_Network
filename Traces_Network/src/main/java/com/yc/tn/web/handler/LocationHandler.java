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
		String action = request.getParameter("action");
		LocationEntity  locationEntity = new LocationEntity();
		locationEntity.setUserid(1);
		int userid=Integer.valueOf(request.getParameter("userid"));
		if ("map".equals(action)) {
			System.out.println(locationService.getAllLocation(locationEntity));
			return locationService.getAllLocation(locationEntity);
		} else {
			return locationService.getLocationList(userid);
		}
	}
}
