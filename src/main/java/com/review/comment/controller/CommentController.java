package com.review.comment.controller;

import com.review.comment.dto.Comment;
import com.review.comment.model.service.CommentService;
import org.apache.ibatis.annotations.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;

@Controller
public class CommentController {
    @Autowired
    CommentService commentService;


    @GetMapping("/review")
    public String GetReview(){
        System.out.println("getreview");
        return "newReview";
    }
    @PostMapping("/review")
    public String PostReview(Comment comment){
        try{
            commentService.add(comment);
        } catch(SQLException e){
            e.printStackTrace();
        }
        return "redirect:/items/list";

    }

    @GetMapping("/delete")
    public String DeleteReview(@RequestParam int comment_id, int no){
        try{
            System.out.println(comment_id + "번 지워요 ? 상품 번호는 " + no);
            commentService.remove(comment_id);
        }catch (SQLException e){
            e.printStackTrace();
        }

        return "redirect:/items/detail?no="+no;
    }
}
