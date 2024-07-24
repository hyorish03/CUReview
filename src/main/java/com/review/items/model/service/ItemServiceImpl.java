package com.review.items.model.service;

import com.review.items.dto.Item;
import com.review.items.model.dao.ItemDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;
@Service
public class ItemServiceImpl implements ItemService{
    @Autowired
    ItemDAO dao;


    @Override
    public int add(Item item) throws SQLException {
        return dao.insert(item);
    }

    @Override
    public int edit(Item item) throws SQLException {
        return 0;
    }

    @Override
    public int remove(int no) throws SQLException {
        return 0;
    }

    @Override
    public Item read(int no) throws SQLException {
        return dao.select(no);
    }

    @Override
    public List<Item> readAll() throws SQLException {
        return dao.selectAll();
    }
}
