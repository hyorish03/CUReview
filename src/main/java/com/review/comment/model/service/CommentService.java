package com.review.comment.model.service;

import com.review.comment.dto.Comment;

import java.sql.SQLException;
import java.util.List;

public interface CommentService  {
    public int add(Comment comment)throws SQLException;
    public int edit(Comment comment) throws SQLException;
    public int remove(int no) throws SQLException;

    public List<Comment> read(int no) throws SQLException;
    public List<Comment> readAll() throws SQLException;


}
