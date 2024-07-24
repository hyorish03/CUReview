package com.review.comment.controller;

import com.review.comment.model.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CommentController {
    @Autowired
    CommentService commentService;

    @RequestMapping("/review")
    public String Review(@RequestParam String no, Model model){
        return "newReview";
    }
}
