package com.yc.tn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.tn.entity.TagEntity;
import com.yc.tn.mapper.TagMapper;

@Service("tagService")
public class TagServiceImpl implements TagService {


	@Autowired
	private TagMapper tagMapper;
	
	@Override
	public List<TagEntity> allTag() {
		return tagMapper.allTag();
	}

}
