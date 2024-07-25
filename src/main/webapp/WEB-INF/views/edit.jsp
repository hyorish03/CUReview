<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core"  prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title> 상세페이지 </title>
    <style>
        .header{
            width:100vw;
            height:60px;
            background-color: white;
            color: #000;
            font-family: Pretendard;
            font-size: 24px;
            font-style: normal;
            font-weight: 700;
            line-height: normal;
            justify-content: center;
            display: flex;
            text-align: center;
            align-items: center;
            position: sticky;
            top:0;
        }
        .containerWrapper {
            /*margin-top:30px;*/
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            flex-direction: column;
            align-items: center;
            overflow: scroll;
            background-color: #EBEBEB;
        }
        .container{
            width: 400px;
            height: 100%;
            background-color:violet;
            display: flex;
            align-items: center;
            flex-direction: column;
        }
        .info{
            width:100%;
            /*height: 364px;*/
            display: flex;
            align-items: center;
            flex-direction: column;
            /*background-color: black;*/
            border-bottom: 20px solid #F6F6F6 ;
            margin-bottom:34px;
        }
        .itemText{
            display: flex;
            align-items: flex-start;
            flex-direction: column;
            margin-top: 11px;
            margin-bottom:4px;
            /*background-color: aqua;*/
            width: 100%;
        }
        .itemName{
            margin-top:10px;
            flex-direction: column;
            margin-bottom:4px;
            font-family: Pretendard;
            font-weight: bold;
            font-size: 20px;
            margin-left:25px;

        }
        .itemPrice{
            margin-left:25px;
            font-family: Pretendard;
            font-weight: bold;
            font-size: 20px;
            display: flex;
            flex-direction: row;
            font-size: 40px;
        }
        .ReviewContainer{
            width: 100%;
        }
        .title{
            margin-left: 25px;
            font-family: Pretendard;
            font-weight: bold;
            font-size: 18px;
        }
        .makeReviewButton{
            width:100%;
            height: 100px;
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            position: absolute;
            bottom:0;
            right: 0;
        }
    </style>
</head>


<body style="overflow: scroll; margin: 0px">

<script>
    let num ;
    window.onload = function(){
        num = new URLSearchParams(window.location.search).get('no');
        // console.log(num);
        if(num){
            // console.log(typeof parseInt(num));
            document.getElementById("id").value=parseInt(num);
        }
    }

</script>
<div class="header">리뷰 등록</div>

<c:if test="${!empty list}">
    <div class="containerWrapper">
        <div class="container">
            <div class="info">
                <img src = ${list.img} width=291/>
                <div class="itemText">
                    <div class="itemName">${list.name}</div>
                    <div class="itemPrice">${list.price}
                        <div style=" font-size: 20px; font-weight: 600; display:flex; text-align: center; align-items: center">원</div>
                    </div>
                </div>

            </div>
            <div class="ReviewContainer">

            </div>

        </div>
    </div>
</c:if>

<c:if test="${!empty singleComment}">
    <form method="post">
        <input id ="id" type="hidden" name="no" value="" />
        <input type="text" name="comment_text" value="${singleComment.comment_text}"/>
        <button type="submit">리뷰 수정하기</button>
    </form>
</c:if>
</div>
</body>
</html>










