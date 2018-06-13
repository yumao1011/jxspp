package com.jxspp.service.impl.person;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jxspp.dao.CommentDAO;
import com.jxspp.service.person.CommentService;

@Service("commentService")
public class CommentServiceImpl implements CommentService{
	
	@Resource(name="commentDAO")
	private CommentDAO commentDAO = null;
	
	public void addComment(String userName, Integer productId, String comment) {
		commentDAO.addComment(userName, productId, comment);
		
	}

}
