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

        .commentWrapper{
            display: flex;
            flex-direction: row;

        }
    </style>
</head>


<body style="overflow: scroll; margin: 0px">

<script>
    function ToNewReviewPage(no){
        alert(no);
        let num = no.toString();
        location.href="/review?no="+num;
    }
</script>

<div><div class="header">상세페이지</div>

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

                <c:if test="${!empty comments}">
                    <div class="title">전체리뷰(${comments.size()})</div>
                    <c:forEach items="${comments}" var="item">
                        <div class="commentWrapper">
                        <div>${item.comment_text}</div>
                            <div>${item.comment_id}</div>
                        <div onclick="location.href='/delete?comment_id=${item.comment_id}&no=${item.no}'"> 삭제 </div>
                        </div>
                    </c:forEach>
                </c:if>
                <c:if test="${empty comments}">
                    <div> 댓글 없어용 </div>
                </c:if>
                <div class="makeReviewButton" onclick="ToNewReviewPage(${list.no})">댓글 달러 가기</div>

            </div>

        </div>
    </div>
</c:if>


    <c:if test="${empty list}">
        <div>비었어요</div>
    </c:if>
</div>
</body>
</html>










