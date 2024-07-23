package com.review.items.model.service;

import com.review.items.dto.Item;

import java.sql.SQLException;
import java.util.List;

public interface ItemService {
    public int add(Item item)throws SQLException;
    public int edit(Item item) throws SQLException;
    public int remove(int no) throws SQLException;

    public Item read(int no) throws SQLException;
    public List<Item> readAll() throws SQLException;
}
