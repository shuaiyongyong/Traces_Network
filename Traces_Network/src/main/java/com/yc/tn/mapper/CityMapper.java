package com.yc.tn.mapper;

import java.util.List;

import com.yc.tn.entity.CityEntity;

public interface CityMapper {

	List<CityEntity> allCity();

	List<CityEntity> cityList(int region_Id);

}
