package com.yc.tn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.tn.entity.CityEntity;
import com.yc.tn.mapper.CityMapper;

@Service("cityService")
public class CityServiceImpl implements CityService {

	@Autowired
	private CityMapper cityMapper;
	
	@Override
	public List<CityEntity> allCity() {
		return cityMapper.allCity();
	}

	@Override
	public List<CityEntity> cityList(int region_Id) {
		return cityMapper.cityList(region_Id);
	}

}
