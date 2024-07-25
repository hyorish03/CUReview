package com.review.comment.model.service;


import com.review.comment.dto.Comment;
import com.review.comment.model.dao.CommentDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class CommentServiceImpl implements CommentService{

    @Autowired
    CommentDAO dao;
    @Override
    public int add(Comment comment) throws SQLException {
        return dao.insert(comment);
    }

    @Override
    public int edit(Comment comment) throws SQLException {
        return dao.update(comment);
    }

    @Override
    public int remove(int comment_id) throws SQLException {
        return dao.delete(comment_id);
    }

    @Override
    public Comment read(int no) throws SQLException {
        return dao.select(no);
    }

    @Override
    public List<Comment> readAll(int no) throws SQLException {
        return dao.selectAll(no);
    }
}
