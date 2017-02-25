package com.yc.tn.service;

import com.yc.tn.entity.UserEntity;

public interface UserService {

	UserEntity login(UserEntity user);

	boolean checkTel(String utel);

}
