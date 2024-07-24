package com.review.comment.model.dao;

import com.review.comment.dto.Comment;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import java.sql.SQLException;
import java.util.List;

@Mapper
public interface CommentDAO {

    @Insert("insert int comments (comment_id, comment_text) values (#{comment.comment_id}, #{comment.comment_text})")
    public int insert(Comment comment) throws SQLException;

    @Delete("delete from comments where no = #{no}")
    public int delete(int no) throws SQLException;

//    @Update("update ")
    public int edit(Comment comment) throws SQLException;

    @Select("select c.comment_id, c.comment_text from comments as c join cu as u where u.no = #{no} and c.no = u.no;")
    public List<Comment> select(int no) throws SQLException;

    @Select("select * from comments")
    public List<Comment> selectAll() throws SQLException;



}
