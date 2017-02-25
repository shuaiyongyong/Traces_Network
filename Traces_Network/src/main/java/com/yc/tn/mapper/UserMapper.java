package com.yc.tn.mapper;

import org.apache.ibatis.annotations.Param;

import com.yc.tn.entity.UserEntity;

public interface UserMapper {

	boolean checkTel(String utel);

	UserEntity findUser(UserEntity user);

}
