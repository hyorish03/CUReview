package com.review.items.dto;

public class Item {
    private int no;

    private String name;

    private String img;
    private String price;

    public Item(int no, String name, String img, String price) {
        this.no = no;
        this.name = name;
        this.img = img;
        this.price = price;
    }

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Item{" +
                "no=" + no +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", price='" + price + '\'' +
                '}';
    }
}
