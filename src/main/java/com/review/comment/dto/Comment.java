package com.review.comment.dto;

public class Comment {
    private Integer no;
    private String comment_text;

    public Comment(Integer no, String comment_text) {
        this.no = no;
        this.comment_text = comment_text;
    }

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public String getComment_text() {
        return comment_text;
    }

    public void setComment_text(String comment_text) {
        this.comment_text = comment_text;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "no=" + no +
                ", comment_text='" + comment_text + '\'' +
                '}';
    }
}
