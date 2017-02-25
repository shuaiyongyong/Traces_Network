package com.yc.tn.service;

import java.util.List;
import java.util.Map;

import com.yc.tn.entity.Answer;
import com.yc.tn.entity.AskInfo;
import com.yc.tn.entity.TagRel;
import com.yc.tn.entity.UserEntity;

public interface QuService {

	List<UserEntity> listAsk();

	List<TagRel> listTag(String id);

	List<UserEntity> listAskByClick();

	List<UserEntity> listAskBySt1();

	List<UserEntity> listAskBySt2();

	List<UserEntity> listAnswer(String askId);

	List<TagRel> listAnswerTag(String askId);

	List<UserEntity> listAnswerContent(String askId);

	

}
