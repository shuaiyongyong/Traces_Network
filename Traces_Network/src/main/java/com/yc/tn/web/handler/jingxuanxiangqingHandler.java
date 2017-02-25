package com.yc.tn.web.handler;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.tn.entity.UserEntity;
import com.yc.tn.service.JingxuanService;

@Controller
@RequestMapping("/jingxuan")
public class jingxuanxiangqingHandler {
	
	@Autowired
	private JingxuanService jingxuanService;
	
	@RequestMapping("/info")
	@ResponseBody
	public List<UserEntity> allInfo(HttpSession session){
		LogManager.getLogger().debug("获取所有的攻略信息...");
		 List<UserEntity> users = jingxuanService.allInfo();
		 System.out.println(users);
		 return users;
	}
}
