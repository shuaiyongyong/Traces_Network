package com.yc.tn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.tn.entity.StrategyAnswer;
import com.yc.tn.mapper.StrategyAnswerMapper;
import com.yc.tn.mapper.StrategyInfoMapper;
import com.yc.tn.service.StrategyAnswerService;


@Service("strategyAnswerService")
public class StrategyAnswerServiceImpl implements StrategyAnswerService {
	
	@Autowired
	private StrategyAnswerMapper strategyAnswerMapper;

	@Override
	public List<StrategyAnswer> message() {
		
		return strategyAnswerMapper.message();
	}

}
