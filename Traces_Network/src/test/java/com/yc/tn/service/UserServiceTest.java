package com.yc.tn.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.tn.entity.UserEntity;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class UserServiceTest {

	@Autowired
	private UserService us;
	
	@Test
	public void testLogin() {
		UserEntity user = new UserEntity();
		user.setUser_UserName("a");
		user.setUser_UserPassword("a");
		user= us.login(user);
		System.out.println(user);
	}

}
