package com.yc.tn.service;

import java.util.List;

import com.yc.tn.entity.CityEntity;

public interface CityService {

	List<CityEntity> allCity();

	List<CityEntity> cityList(int region_Id);

}
