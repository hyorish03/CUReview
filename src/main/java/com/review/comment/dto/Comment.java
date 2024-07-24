package com.review.comment.dto;

public class Comment {
    private String comment_id;
    private String comment_text;

    public Comment(String comment_id, String comment_text) {
        this.comment_id = comment_id;
        this.comment_text = comment_text;
    }

    public String getComment_id() {
        return comment_id;
    }

    public void setComment_id(String comment_id) {
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
                "comment_id='" + comment_id + '\'' +
                ", comment_text='" + comment_text + '\'' +
                '}';
    }
}
