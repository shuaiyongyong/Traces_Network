package com.yc.tn.web.handler;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.tn.entity.Answer;
import com.yc.tn.entity.AskInfo;
import com.yc.tn.entity.TagRel;
import com.yc.tn.entity.User;
import com.yc.tn.service.QuService;

import oracle.net.aso.a;

@Controller
@RequestMapping("/qu")
public class QuHandler {
	@Autowired
	private QuService quService;
	
	@RequestMapping("/list")
	@ResponseBody
	private List<User> doList(){
		LogManager.getLogger().debug("请求QuHandler处理list...");
		System.out.println(quService.listAsk());
		return quService.listAsk();
	}
	
	@RequestMapping("/listTag")
	@ResponseBody
	private List<TagRel> doListTag(@RequestParam(name = "id", required = false) String id){
		LogManager.getLogger().debug("请求QuHandler处理listTag...");
		System.out.println(quService.listTag(id));
		return quService.listTag(id);
	}
	
	@RequestMapping("/listByClick")
	@ResponseBody
	private List<User> doListTagByClick(){
		LogManager.getLogger().debug("请求QuHandler处理listAskByClick...");
		System.out.println(quService.listAskByClick());
		return quService.listAskByClick();
	}
	
	@RequestMapping("/listBySt1")
	@ResponseBody
	private List<User> doListAskBySt1(){
		LogManager.getLogger().debug("请求QuHandler处理doListAskBySt1...");
		System.out.println(quService.listAskBySt1());
		return quService.listAskBySt1();
	}
	
	@RequestMapping("/listBySt2")
	@ResponseBody
	private List<User> doListAskBySt2(){
		LogManager.getLogger().debug("请求QuHandler处理doListAskBySt2...");
		System.out.println(quService.listAskBySt2());
		return quService.listAskBySt2();
	}
	
	@RequestMapping("/listDetail")
	@ResponseBody
	private List<User> doListAnswer(@RequestParam(name = "askId", required = false) String askId,HttpSession session){
		LogManager.getLogger().debug("请求QuHandler处理doListAnswer...");
		System.out.println(quService.listAnswer(askId));
		return quService.listAnswer(askId);
	}
	
	@RequestMapping("/listAnswerTag")
	@ResponseBody
	private List<TagRel> doListAnswerTag(@RequestParam(name = "askId", required = false) String askId){
		LogManager.getLogger().debug("请求QuHandler处理listAnswerTag...");
		System.out.println(quService.listAnswerTag(askId));
		return quService.listAnswerTag(askId);
	}
	
	@RequestMapping("/listAnswerContent")
	@ResponseBody
	private List<User> doListAnswerContent(@RequestParam(name = "askId", required = false) String askId,HttpSession session){
		LogManager.getLogger().debug("请求QuHandler处理listAnswerContent...");
		System.out.println(quService.listAnswerContent(askId));
		return quService.listAnswerContent(askId);
	}
	
}
