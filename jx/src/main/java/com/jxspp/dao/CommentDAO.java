package com.jxspp.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository("commentDAO")
public interface CommentDAO {
	public void addComment(@Param("userName")String userName, @Param("productId")Integer productId, @Param("comment")String comment);
}
