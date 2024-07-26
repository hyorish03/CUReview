package com.review.comment.controller;

import com.review.comment.dto.Comment;
import com.review.comment.model.service.CommentService;
import com.review.items.dto.Item;
import com.review.items.model.service.ItemService;
import org.apache.ibatis.annotations.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;
import java.util.List;

@Controller
public class CommentController {
    @Autowired
    CommentService commentService;

    @Autowired
    ItemService itemService;

//    @GetMapping("/review")
//    public String GetReview(){
//        System.out.println("getreview");
//        return "newReview";
//    }
    @PostMapping("/review")
    public String PostReview(@RequestParam int no, Comment comment){
        System.out.println(comment);

        try{
            commentService.add(comment);
        } catch(SQLException e){
            e.printStackTrace();
            System.out.println(e);
        }
        return "redirect:/items/detail?no="+no;

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

    @GetMapping("/edit")
    public String GetEditReview(@RequestParam int comment_id, int no, Model model){
        System.out.println("edit");
        try {
            Comment singleComment =  commentService.read(comment_id);
            model.addAttribute("singleComment", singleComment);
            System.out.println(singleComment);
        } catch(SQLException e){
            e.printStackTrace();
        }

        return "edit";
    }

    @PostMapping("/edit")
    public String PostEditReview(@RequestParam int comment_id, int no, Comment comment){
        System.out.println("수정 진짜 합니다 ???");
        System.out.println(comment);
        try {
            commentService.edit(comment);

        } catch(SQLException e){
            e.printStackTrace();
        }

        return  "redirect:/items/detail?no="+no;
    }

    @GetMapping("/review")
    public String GetReview(Comment comment, Model model){
        try {
            Item Item = itemService.read(comment.getNo());
            model.addAttribute("item", Item);
        } catch (SQLException e){

            e.printStackTrace();
        }
        return "newReview";
    }
}
