package com.springbook.biz.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springbook.biz.user.UserVO;


@Repository
public class UsersDAOSpring {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private final String USERS_INSERT = "insert into users values(?, ?, ?, ?)";
	
	
	public void insertUsers(UserVO vo) {
		System.out.println("spring jdbc∑Œ insert√≥∏Æ");
		
		Object[] args = {vo.getId(), vo.getPassword(), vo.getName(), vo.getRole()};
		jdbcTemplate.update(USERS_INSERT,args);
		
	}
	
	
	
	
}
