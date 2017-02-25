package com.yc.tn.service.impl;

import static org.junit.Assert.assertNotNull;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.tn.entity.Answer;
import com.yc.tn.entity.AskInfo;
import com.yc.tn.entity.TagRel;
import com.yc.tn.entity.UserEntity;
import com.yc.tn.service.QuService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class QuServiceImplTest {
		
	@Autowired
	private QuService quService;
	
	
	@Test
	public void testListAsk() {
//		QuService qs = new QuServiceImpl();
		List<UserEntity> askList = quService.listAsk();
		System.out.println(askList);
		assertNotNull(askList);
	}
	
	@Test
	public void testListTag() {
//		QuService qs = new QuServiceImpl();
		List<TagRel> tagList = quService.listTag("1");
		System.out.println(tagList);
		assertNotNull(tagList);
	}
	
	@Test
	public void testListAskByClick() {
//		QuService qs = new QuServiceImpl();
		List<UserEntity> askList2 = quService.listAskByClick();
		System.out.println(askList2);
		assertNotNull(askList2);
	}
	
	@Test
	public void testListAskBySt1() {
//		QuService qs = new QuServiceImpl();
		List<UserEntity> askList2 = quService.listAskBySt1();
		System.out.println(askList2);
		assertNotNull(askList2);
	}
	
	@Test
	public void testListAnswer() {
//		QuService qs = new QuServiceImpl();
		List<UserEntity> answerList = quService.listAnswer("27");
		System.out.println(answerList);
		assertNotNull(answerList);
	}
	
	@Test
	public void testListAnswerTag() {
//		QuService qs = new QuServiceImpl();
		List<TagRel> tagList = quService.listAnswerTag("30");
		System.out.println(tagList);
		assertNotNull(tagList);
	}
	
	@Test
	public void testListAnswerContent() {
//		QuService qs = new QuServiceImpl();
		List<UserEntity> contentList = quService.listAnswerContent("27");
		System.out.println(contentList);
		assertNotNull(contentList);
	}

}
