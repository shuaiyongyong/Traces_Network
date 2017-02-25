package com.yc.tn.service;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.tn.entity.LocationEntity;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class LocationServiceTest {

	@Autowired
	private LocationService ls;
	
	@Test
	public void testGetAllLocation() {
		LocationEntity l = new LocationEntity();
		l.setScenic_Level(1);
		l.setCity_Id(4);
		l.setScenic_Type("风光");
		List<LocationEntity>  le = ls.getAllLocation(l);
		System.out.println(le);
	}

	@Test
	public void testGetScenicType() {
		String name = ls.getScenicType(1);
		System.out.println(name);
	}

}
