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

    @Insert("insert into comments (no, comment_id,  comment_text) values (#{no}, #{comment_id}, #{comment_text})")
    public int insert(Comment comment) throws SQLException;

    @Delete("delete from comments where comment_id = #{comment_id}")
    public int delete(int comment_id) throws SQLException;

    @Update("update comments set comment_text=#{comment_text} where comment_id=#{comment_id}")
    public int update(Comment comment) throws SQLException;

    @Select("select * from comments where comment_id = #{comment_id}")
    public Comment select(int comment_id) throws SQLException;

    @Select("select c.no, c.comment_id, c.comment_text from comments as c join cu as u where u.no = #{no} and c.no = u.no;")
    public List<Comment> selectAll(int no) throws SQLException;



}
