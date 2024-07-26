package com.review.items.controller;

import com.review.comment.dto.Comment;
import com.review.comment.model.service.CommentService;
import com.review.items.dto.Item;
import com.review.items.model.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
    ItemService listService;

    @Autowired
    CommentService commentService;
    @GetMapping("/list")
    public String List(Model model){
        try{
            List<Item> list = (List<Item>) listService.readAll();
            model.addAttribute("list", list);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "list";
    }

    @GetMapping("/detail")
    public String Detail(@RequestParam String no, Model model){
        Item list = null;
        List<Comment> comments = null;
        try{
            int num = Integer.parseInt(no);
             list = (Item) listService.read(num);
             comments = (List<Comment>) commentService.readAll(num);
            model.addAttribute("list", list);
            model.addAttribute("comments", comments);

            System.out.println(comments);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "detail";
    }
}
