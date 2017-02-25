package com.yc.tn.web.handler;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.tn.entity.PaginationBean;
import com.yc.tn.entity.StrategyInfo;
import com.yc.tn.service.StrategyInfoService;


@Controller
@RequestMapping("/strategyInfo")
public class StrategyInfoHandler {
	
	@Autowired
	private StrategyInfoService strategyInfoService;
	
	@RequestMapping("/all")
	@ResponseBody
	public List<StrategyInfo> allInfo(HttpSession session){
		LogManager.getLogger().debug("获取所有的攻略信息...");
		List<StrategyInfo> allInfo = strategyInfoService.allInfo();
		System.out.println(allInfo);
		return allInfo;
	}
	
	@RequestMapping("/part")
	@ResponseBody
	public List<StrategyInfo> partInfo(@RequestParam("type")int type,HttpSession session){
		LogManager.getLogger().debug("获取所有的攻略信息...");
		List<StrategyInfo> partInfo = strategyInfoService.partInfo(type);
		System.out.println(partInfo);
		return partInfo;
	}
	
	@RequestMapping("/list")
	@ResponseBody
	public PaginationBean<StrategyInfo> listPartstrategyInfo(@RequestParam("page") String currPage, @RequestParam("rows") String pageSize){
		LogManager.getLogger().debug("请求UserHandler处理listPartUsers...");
		System.out.println(currPage+"-----"+pageSize);
		return  strategyInfoService.listPartstrategyInfo(currPage, pageSize);
	}
}
