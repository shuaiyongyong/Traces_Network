package com.yc.tn.service;

import java.util.List;
import java.util.Map;

import com.yc.tn.entity.Answer;
import com.yc.tn.entity.AskInfo;
import com.yc.tn.entity.TagRel;
import com.yc.tn.entity.User;

public interface QuService {

	List<User> listAsk();

	List<TagRel> listTag(String id);

	List<User> listAskByClick();

	List<User> listAskBySt1();

	List<User> listAskBySt2();

	List<User> listAnswer(String askId);

	List<TagRel> listAnswerTag(String askId);

	List<User> listAnswerContent(String askId);

	

}
