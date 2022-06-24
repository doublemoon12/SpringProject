package com.springbook.biz.user.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springbook.biz.user.UserVO;

public class UsersRowMapper implements RowMapper<UserVO> {
	public UserVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		UserVO users = new UserVO();
		users.setId(rs.getString("ID"));
		users.setPassword(rs.getString("PASSWORD"));
		users.setName(rs.getString("NAME"));
		users.setRole(rs.getString("ROLE"));
		return users;
	}
}