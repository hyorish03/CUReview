package com.review.items.controller;

import com.review.items.dto.Item;
import com.review.items.model.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.SQLException;
import java.util.List;

/*
<요청 URL>
/item/list    GET -> 전체 상품 가져오기
/item/delete  GET ? -> 등록 상품 삭제
/item/new    GET ? -> 새 상품 등록
/item/new    POST -> 새 상품 등록 삭제
 */
@Controller
@RequestMapping("/items")
public class ItemsController {

    @Autowired
    ItemService service;

    @RequestMapping("/list")
    public String List(Model model){
        System.out.println("HI");
        try{
            List<Item> list = (List<Item>) service.readAll();
            model.addAttribute("list", list);
            System.out.println(list);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "list";
    }

    @RequestMapping("/detail")
    public String Detail(@RequestParam String no, Model model){
        System.out.println("detail");
        try{
            int num = Integer.parseInt(no);
            Item list = (Item) service.read(num);
            model.addAttribute("detailList", list);
            System.out.println(list);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "detail";
    }
}
