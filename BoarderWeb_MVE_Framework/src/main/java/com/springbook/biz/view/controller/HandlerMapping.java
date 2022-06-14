package com.springbook.biz.view.controller;

import java.util.HashMap;
import java.util.Map;

public class HandlerMapping {	//클라이언트 요청에 대한 Controller 맵핑

	private Map<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/login.do", new LoginController());
		mappings.put("/insertBoard.do", new InsertBoardController());
		mappings.put("/getBoard.do", new GetBoardController());
		mappings.put("/getBoardList.do", new GetBoardListController());
		mappings.put("/updateBoard.do", new UpdateBoardController());
		mappings.put("/deleteboard.do", new DeleteBoardController());
		mappings.put("/logout.do", new LogoutController());
	}
	public Controller getController(String path) {
		return mappings.get(path);
	}
	
}
