package com.yc.tn.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.tn.util.Encrypt;
import com.yc.tn.entity.UserEntity;
import com.yc.tn.mapper.UserMapper;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public boolean checkTel(String utel) {
		return userMapper.checkTel(utel);
	}

	@Override
	public UserEntity login(UserEntity user) {
		String pwd = Encrypt.md5AndSha(user.getUser_UserPassword());
		user.setUser_UserPassword(pwd);
		return userMapper.findUser(user);
	}
}
