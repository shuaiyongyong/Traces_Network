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
import com.yc.tn.entity.StrategyAnswer;
import com.yc.tn.entity.StrategyInfo;
import com.yc.tn.service.StrategyAnswerService;
import com.yc.tn.service.StrategyInfoService;


@Controller
@RequestMapping("/strategyAnswer")
public class strategyAnswerHandler {
	
	@Autowired
	private StrategyAnswerService strategyAnswerService;
	
	@RequestMapping("/message")
	@ResponseBody
	public List<StrategyAnswer> allInfo(HttpSession session){
		LogManager.getLogger().debug("获取所有的攻略信息...");
		List<StrategyAnswer> message = strategyAnswerService.message();
		System.out.println(message);
		return message;
	}
	
}
