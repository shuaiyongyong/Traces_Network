package com.yc.tn.web.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.tn.entity.RegionEntity;
import com.yc.tn.service.RegionService;

@Controller
@RequestMapping("/region")
public class RegionHandler {

	@Autowired
	private RegionService regionService;
	
	@RequestMapping("/list")
	@ResponseBody
	public List<RegionEntity> list(){
		return regionService.allRegion();	
	}
}
