package com.springbook.biz.view.controller;

public class ViewResolver {	//Controller에서 확장자 제거후 던져 주는 뷰 페이지를 확장자를 완성해서 넘겨줌(.jsp)
	
	public String prefix;		//리턴 받아오는 이름 앞에 처리 할 변수
	public String suffix;		//리턴 받아오는 이름 뒤에 처리할 변수
	
	public void setPrfix(String prefix) {
		this.prefix = prefix;
	}
	
	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}

	public String getView(String viewName) {	//뷰 페이지를 완성해서 돌려줌.
		return prefix + viewName + suffix;
	}
	
	
	
}
