package com.yc.tn.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yc.tn.entity.UserEntity;
import com.yc.tn.mapper.JingxuanMapper;
import com.yc.tn.service.JingxuanService;

@Service("jingxuanService")
public class Jingxuanxiangqing implements JingxuanService {

	@Autowired
	private JingxuanMapper jingxuanMapper;
	
	@Override
	public List<UserEntity> allInfo() {
		return jingxuanMapper.allInfo();
	}

}
