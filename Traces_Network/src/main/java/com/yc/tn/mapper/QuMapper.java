package com.yc.tn.mapper;

import java.util.List;

import com.yc.tn.entity.Answer;
import com.yc.tn.entity.TagRel;
import com.yc.tn.entity.UserEntity;

public interface QuMapper {

	List<UserEntity> findAsk();

	List<TagRel> findTag(String id);

	List<UserEntity> findAskByClick();

	List<UserEntity> findAskBySt1();
	
	List<UserEntity> findAskBySt2();

	List<UserEntity> findAnswer(String askId);

	List<TagRel> findAnswerTag(String askId);

	List<UserEntity> findAnswerContent(String askId);

}
