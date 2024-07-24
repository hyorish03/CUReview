package com.review.items.controller;

import com.review.items.dto.Item;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

//@Controller
@RestController // 이 페이지의 모든 컨트롤러는 ResponseBody 컨트롤러다라는걸 정의, @ResponseContrller 안 써도 됨
@RequestMapping("/test")
public class TestController {
    @GetMapping("/he")
    @ResponseBody // 데이터 리턴이라는 뜻, 만일 컨트롤러에서 데이터리턴을 하고싶으면 데이터 리턴에 관한 컨트롤러를 따로 만들어주는게 유지보수에 좋음
    public String m1(){
        return "hello";
    }

    @GetMapping("/she")
    @ResponseBody
    public Item m2(){
        Item item = new Item(1, "상품", "http://naver.com", "5500");
        return new Item(1, "상품", "http://naver.com", "5500");
    }

    @GetMapping("/we") // JSOM 리턴
    @ResponseBody
    public List<Item> m3(){
//        Item item = new Item(1, "상품", "http://naver.com", "5500");
        List<Item> list = new ArrayList<Item>();
        list.add(new Item(1, "상품", "http://naver.com", "5500"));
        list.add(new Item(2, "품", "http://naver.com", "5500"));
        list.add(new Item(3, "상", "http://naver.com", "5500"));
        return list;
    }

//    @GetMapping(value = "/ureca", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public List<Item> m4(){
        List<Item> list = new ArrayList<>();
        list.add(new Item(1, "상품", "http://naver.com", "5500"));
        list.add(new Item(2, "품", "http://naver.com", "5500"));
        list.add(new Item(3, "상", "http://naver.com", "5500"));
        return list;
    }
}
