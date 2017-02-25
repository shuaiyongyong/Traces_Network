package com.yc.tn.service;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.tn.entity.RegionEntity;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class RegionServiceTest {

	@Autowired
	private RegionService rs;
	
	@Test
	public void testAllRegion() {
		List<RegionEntity> rl = rs.allRegion();
		System.out.println(rl);
		assertNotNull(rl);	
	}

}
