package com.yc.tn.mapper;

import java.util.List;

import com.yc.tn.entity.Answer;
import com.yc.tn.entity.TagRel;
import com.yc.tn.entity.User;

public interface QuMapper {

	List<User> findAsk();

	List<TagRel> findTag(String id);

	List<User> findAskByClick();

	List<User> findAskBySt1();
	
	List<User> findAskBySt2();

	List<User> findAnswer(String askId);

	List<TagRel> findAnswerTag(String askId);

	List<User> findAnswerContent(String askId);

}
