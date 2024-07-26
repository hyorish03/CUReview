package com.review.comment.dto;

public class Comment {
    private Integer no;
    private Integer comment_id;
    private String comment_text;

    public Comment(Integer no, Integer comment_id, String comment_text) {
        this.no = no;
        this.comment_id = comment_id;
        this.comment_text = comment_text;
    }

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public Integer getComment_id() {
        return comment_id;
    }

    public void setComment_id(Integer comment_id) {
        this.comment_id = comment_id;
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
                ", comment_id=" + comment_id +
                ", comment_text='" + comment_text + '\'' +
                '}';
    }
}
