package com.yc.tn.mapper;

import java.util.List;
import java.util.Map;

import com.yc.tn.entity.LocationEntity;

public interface LocationMapper {

	List<LocationEntity> getAllLocation(LocationEntity locationEntity);

	String getScenicType(int tag_Id);

}
