package com.springbook.biz.impl;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.springbook.biz.BoardVO;

public class BoardServiceClient {

	public static void main(String[] args) {
		//1. Spring �����̳ʸ� �۵� ��Ų��. 
		AbstractApplicationContext container = 
				new GenericXmlApplicationContext("applicationContext.xml"); 
			
		//2. Spring �����̹��� ���� BoardServiceImpl ��ü�� �޾ƿ´�. (Lookup �Ѵ�)
				//����Ͻ� ������ ó���ϴ� ��ü (BoardServiceImpl.java) 
				
		BoardService boardService = (BoardService) container.getBean("boardService");
		
		
		//3. �� ��� ����� �׽�Ʈ �Ѵ�. 
		BoardVO vo = new BoardVO();
		
		//vo.setSeq(0);			//���� ���� �߻� �ڵ� 
		//vo.setSeq(400);
		vo.setTitle("�ӽ� �׽�Ʈ ����400");
		vo.setWriter("ȫ�浿400");
		vo.setContent("�ӽ� �� ����400 .......");
		
		boardService.insertBoard(vo);
		
		//4. �� ��� �˻� ��� �׽�Ʈ 
		List<BoardVO> boardList = boardService.getBoardList(vo); 
		
		for (BoardVO board : boardList) {
			System.out.println("--���ڵ� ���--->" + board.toString());
		}
		
		//5. Spring �����̳� ���� 
		container.close();  
		
	}

}