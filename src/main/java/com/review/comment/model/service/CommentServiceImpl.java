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
        return 0;
    }

    @Override
    public int remove(int no) throws SQLException {
        return 0;
    }

    @Override
    public List<Comment> read(int no) throws SQLException {
        return dao.select(no);
    }

    @Override
    public List<Comment> readAll() throws SQLException {
        return dao.selectAll();
    }
}
