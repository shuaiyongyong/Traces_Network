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
	public List<LocationEntity> getLocationList(int userid) {
		return locationMapper.getLocationList(userid);
	}


	@Override
	public List<LocationEntity> getAllLocation(LocationEntity locationEntity) {
		// TODO Auto-generated method stub
		return locationMapper.getAllLocation(locationEntity);
	}

}
