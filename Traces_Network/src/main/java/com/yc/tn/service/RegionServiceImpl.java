package com.yc.tn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.tn.entity.RegionEntity;
import com.yc.tn.mapper.RegionMapper;

@Service("regionService")
public class RegionServiceImpl implements RegionService {

	@Autowired
	private RegionMapper regionMapper;

	@Override
	public List<RegionEntity> allRegion() {
		return regionMapper.allRegion();
	}
}
