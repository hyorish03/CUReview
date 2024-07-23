package com.review.items.model.dao;

import com.review.items.dto.Item;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.sql.SQLException;
import java.util.List;

@Mapper
public interface ItemDAO {

    @Insert("insert int cu (name, img, price) values (#{name}, #{age}, #{job})")
    public int insert(Item item) throws SQLException;

    @Delete("delete from cu where no = #{no}")
    public int delete(int no) throws SQLException;

    @Select("select no, name, img, price from cu where no = #{no}")
    public Item select(int no) throws SQLException;
    @Select("select no, name, img, price from cu order by no")
    public List<Item> selectAll() throws SQLException;
}
