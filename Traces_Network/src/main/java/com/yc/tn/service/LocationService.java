package com.yc.tn.service;

import java.util.List;
import java.util.Map;

import com.yc.tn.entity.LocationEntity;

public interface LocationService {

	List<LocationEntity> getAllLocation(LocationEntity locationEntity);

	String getScenicType(int tag_Id);
}
