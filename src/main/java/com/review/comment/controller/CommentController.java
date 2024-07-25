package com.review.comment.controller;

import com.review.comment.dto.Comment;
import com.review.comment.model.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.SQLException;

@Controller
public class CommentController {
    @Autowired
    CommentService commentService;


    @GetMapping("/review")
    public String GetReview(@RequestParam String no, Model model){
            System.out.println("GetCOmment");
//            commentService.add(comment);

        return "newReview";
    }
    @PostMapping("/review")
    public String PostReview(Comment comment){
        System.out.println("post"+ comment);
        try{
//            System.out.println( comment.comment_id);
            commentService.add(comment);
        } catch(SQLException e){
            e.printStackTrace();
        }
        return "redirect:/items/list";

    }
}
