package com.yc.tn.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.tn.entity.LocationEntity;
import com.yc.tn.mapper.LocationMapper;

@Service("locationService")
public class LocationServiceImpl implements LocationService {

	@Autowired
	private LocationMapper locationMapper;
	
	@Override
	public List<LocationEntity> getAllLocation(LocationEntity locationEntity) {
		return locationMapper.getAllLocation(locationEntity);
	}


	@Override
	public String getScenicType(int tag_Id) {
		return locationMapper.getScenicType(tag_Id);
	}


}
