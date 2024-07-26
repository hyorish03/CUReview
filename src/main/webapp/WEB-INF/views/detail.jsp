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
            width:100%;
            height:60px;
            background-color: white;
            justify-content: center;
            display: flex;
            align-items: center;
            position: sticky;
            top:0;
            z-index: 1;
        }
        .headerText{
            color: #000;
            font-family: Pretendard;
            font-size: 24px;
            font-style: normal;
            font-weight: 700;
            line-height: normal;
            text-align: center;
            width: 400px;
            display: flex;
            justify-content: flex-start;

        }
        .containerWrapper {
            /*margin-top:30px;*/
            width: 100%;
            display: flex;
            justify-content: center;
            flex-direction: column;
            align-items: center;
            overflow: scroll;
            position: relative;
        }

        .container{
            width: 400px;
            height: 100%;
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
            border-bottom: 20px solid #F6F6F6 ;
            /*margin-bottom:34px;*/
            padding-bottom:40px;
        }

        .itemText{
            display: flex;
            align-items: flex-start;
            flex-direction: column;
            margin-top: 11px;
            margin-bottom:4px;
            width: 100%;
            color: #222;
            font-feature-settings: 'clig' off, 'liga' off;
            font-family: Pretendard;
            font-size: 20px;
            font-style: normal;
            font-weight: 600;
            line-height: 22px;
        }

        .itemName{
            margin-top:10px;
            flex-direction: column;
            margin-bottom:4px;
            color: #222;
            font-feature-settings: 'clig' off, 'liga' off;
            font-family: Pretendard;
            font-size: 20px;
            font-style: normal;
            font-weight: 700;
            line-height: 22px; /* 110% */
            margin-left:25px;

        }

        .itemPrice{
            margin-left:25px;
            color:  #222;
            font-feature-settings: 'clig' off, 'liga' off;
            font-family: Pretendard;
            font-size: 40px;
            font-style: normal;
            font-weight: 600;
            line-height: 22px; /* 55% */
            display: flex;
            flex-direction: row;
            margin-top:20px;
        }

        .ReviewContainer{
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
        }
        .title{
            font-size: 18px;
            color: #000;
            font-feature-settings: 'clig' off, 'liga' off;
            font-family: Pretendard;
            font-size: 18px;
            font-style: normal;
            font-weight: 700;
            line-height: 22px; /* 122.222% */
            padding-bottom:23px;
            margin-top: 34px;
            width: 360px;
         }

        .commentWrapper{
            display: flex;
            flex-direction: column;
            /*margin-left:23px;*/
            margin-bottom:32px;
            padding: 26px 7px 12px 30px;
            justify-content: center;
            align-items: center;
            background-color: #EBEBEB;
            width: 320px;
            border-radius: 14px;
            border: 1px solid  #DDD;
        }
        .commentText{
            display: flex;
            flex-direction: column;
            /*width: 200px;*/
            margin-right:12px;

        }

        .buttons{
            display: flex;
            flex-direction: row;
            width: 100%;
            /*background-color: #5F259F;*/
            justify-content: flex-end;
            margin-top: 20px;
            gap: 8px;

        }

        .buttons div{
            border: 2px solid #70A87F;
            padding: 2px 6px;
            border-radius: 10px;
            text-align: center;
            justify-content: center;
            display: flex;
            color: #74A381;
            font-family: Pretendard;
            font-size: 12px;
            font-style: normal;
            font-weight: 500;
            line-height: 22px; /* 183.333% */
        }

        .makeReviewButtonWrapper{
            width:100%;
            height: 100px;
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            position: sticky;
            bottom:0;
            z-index: 1;
        }
        .makeReviewButton{
            border-radius: 20px;
            background:  #11CD45;
            display: flex;
            width: 268px;
            height: 50px;
            justify-content: center;
            align-items: center;
            gap: 10px;
            flex-shrink: 0;
            color:  #FFF;
            font-feature-settings: 'clig' off, 'liga' off;
            font-family: Pretendard;
            font-size: 18px;
            font-style: normal;
            font-weight: 600;
            line-height: 22px; /* 122.222% */
        }
    </style>
</head>


<body style="overflow: scroll; margin: 0px">
<script>
    function ToNewReviewPage(no){
        let num = no.toString();
        location.href = '/review?no='+num;
    }
</script>
<div class="header">
    <div class="headerText">
        <
    </div>
</div>
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
                        <div class="commentText">${item.comment_text}</div>
                            <div class="buttons">
                        <div onclick="location.href='/delete?comment_id=${item.comment_id}&no=${item.no}'"> 삭제 </div>
                            <div onclick="location.href='/edit?comment_id=${item.comment_id}&no=${item.no}'"> 수정 </div>
                            </div>
                        </div>
                    </c:forEach>
                </c:if>
                <c:if test="${empty comments}">
                    <div> 댓글 없어용 </div>
                </c:if>
            </div>
        </div>
    </div>
</c:if>
<div class="makeReviewButtonWrapper" onclick="ToNewReviewPage(${list.no})">
    <div class="makeReviewButton">리뷰 쓰러 가기</div>
</div>

</body>
</html>










