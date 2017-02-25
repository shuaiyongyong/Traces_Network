package com.yc.tn.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.tn.entity.Answer;
import com.yc.tn.entity.TagRel;
import com.yc.tn.entity.User;
import com.yc.tn.mapper.QuMapper;
import com.yc.tn.service.QuService;

@Service("quService")
public class QuServiceImpl implements QuService {

	@Autowired
	private QuMapper quMapper;

	@Override
	public List<User> listAsk() {
		
		return quMapper.findAsk();
	}

	@Override
	public List<TagRel> listTag(String id) {
		return quMapper.findTag(id);
	}

	@Override
	public List<User> listAskByClick() {
		return quMapper.findAskByClick();
	}

	@Override
	public List<User> listAskBySt1() {
		return quMapper.findAskBySt1();
	}

	@Override
	public List<User> listAskBySt2() {
		return quMapper.findAskBySt2();
	}

	@Override
	public List<User> listAnswer(String askId) {
		return quMapper.findAnswer(askId);
	}

	@Override
	public List<TagRel> listAnswerTag(String askId) {
		return quMapper.findAnswerTag(askId);
	}

	@Override
	public List<User> listAnswerContent(String askId) {
		return quMapper.findAnswerContent(askId);
	}
	
	

}
