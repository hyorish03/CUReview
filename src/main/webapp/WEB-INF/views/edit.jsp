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

        .container {
            width: 400px;
            height: 100%;
            display: flex;
            align-items: center;
            flex-direction: column;
        }

        .makeReviewButtonWrapper{
            width:400px;
            height: 100px;
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            z-index: 1;
            border: none;
            position: absolute;
            bottom:0;
        }

        .itemInfo{
            width:350px;
            height: 140px;
            display: flex;
            flex-direction: row;
            padding: 0 25px 5px 25px;
            justify-content: space-between;
            align-items: center;
            border-bottom: 15px solid #F6F6F6;
        }
        .itemInfo .text {
            display: flex;
            flex-direction: column;
            align-items: end;
            gap:19px;
            color: #222;
            font-feature-settings: 'clig' off, 'liga' off;
            font-family: Pretendard;
            font-size: 20px;
            font-style: normal;
            font-weight: 700;
            line-height: 22px; /* 110% */
        }

        .itemInfo .text .price {
            color:  #222;
            font-feature-settings: 'clig' off, 'liga' off;
            font-family: Pretendard;
            font-size: 24px;
            font-style: normal;
            font-weight: 600;
            line-height: 22px; /* 91.667% */
            display: flex;
            flex-direction: row;
        }

        .itemInfo .text #won {
            color:  #222;
            font-feature-settings: 'clig' off, 'liga' off;
            font-family: Pretendard;
            font-size: 20px;
            font-style: normal;
            font-weight: 600;
            line-height: 22px;
        }
        .writeReview{
            width: 100%;
        }
        .writeReview #Title{
            color:  #000;
            font-feature-settings: 'clig' off, 'liga' off;
            font-family: Pretendard;
            font-size: 24px;
            font-style: normal;
            font-weight: 700;
            line-height: 22px; /* 91.667% */
            margin-top:36px;
            margin-left:19px;

        }

        .writeReview .smallTitle{
            color:  #000;
            font-feature-settings: 'clig' off, 'liga' off;
            font-family: Pretendard;
            font-size: 16px;
            font-style: normal;
            font-weight: 700;
            line-height: 22px; /* 137.5% */
            margin-top: 27px;
            margin-bottom: 20px;
            margin-left:19px;
        }
        .writeReview #images{
            width: 100%;
            display: flex;
            justify-content: center;
            gap: 5px;
            flex-direction: column;
            align-items: center;
        }
        .reviewAdvice{
            color: #757D86;
            font-feature-settings: 'clig' off, 'liga' off;
            font-family: Pretendard;
            font-size: 12px;
            font-style: normal;
            font-weight: 500;
            line-height: 22px; /* 183.333% */
        }

        input {
            width:350px;
            min-height: 150px;
            border-radius: 7px;
            border: 1px solid  #DDD;
            padding:14px;
            font-feature-settings: 'clig' off, 'liga' off;
            font-family: Pretendard;
            font-style: normal;
            line-height: 22px; /* 183.333% */
            color:  #222;
            font-feature-settings: 'clig' off, 'liga' off;
            font-size: 12px;
            font-style: normal;
            font-weight: 500;
            line-height: 22px; /* 183.333% */
        }

        input:focus{
            outline-color: #11CD45;
        }

        form{
            width:100%;
            display: flex;
            justify-content: center;
            flex-direction: column;
        }
        .editBtn{

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
            border: none;
        }

    </style>
</head>


<body style="height:100vh; overflow: scroll; margin: 0px; width:100vw; display: flex; align-items:center; justify-content: center; flex-direction: column">
<script>
    let num ;
    window.onload = function(){
        num = new URLSearchParams(window.location.search).get('no');
        if(num){
            document.getElementById("id").value=parseInt(num);
        }
    }
</script>
<div class="header">
    <div class="headerText">
        리뷰하기
    </div>
</div>
<div class="container">

    <c:if test="${!empty item}">
        <div class="itemInfo">
            <img src="${item.img}" width="132" height="132"/>
            <div class="text">
                <div class="name">${item.name}</div>
                <div class="price">${item.price} <div id="won">원</div></div>
            </div>
        </div>
        <div class="writeReview">
            <div id="Title">상품은 어떠셨나요 ? </div>
            <div class="smallTitle">리뷰작성 TIP </div>
            <div id="images">
                <div id="image">
                    <img src="${pageContext.request.contextPath}/static/ReviewSample1.png"/>
                    <img src="${pageContext.request.contextPath}/static/ReviewSample2.png"/>
                </div>
                <div class="reviewAdvice">초콜릿의 질감, 제품의 단면 등 상품의 디테일을 보여주세요 ! </div>

            </div>
            <div class="smallTitle"> 솔직한 상품 리뷰를 남겨주세요 </div>
            <form id="test" method="post">
            </form>
            <c:if test="${!empty singleComment}">
                <form id="test"  method="post">
                    <input  type="hidden" name="no" value="" />
                    <input class="name" type="text" name="comment_text" value="${singleComment.comment_text}"/>
                            <div class="makeReviewButtonWrapper" >
                    <button class="editBtn" type="submit">리뷰 수정하기</button>
                            </div>
                </form>
            </c:if>
        </div>
    </c:if>

</div>
<%--    <button form="test" class="makeReviewButtonWrapper" type="submit" >--%>
<%--&lt;%&ndash;        <div class="makeReviewButton">리뷰 수정하기</div>&ndash;%&gt;--%>
<%--        수정하기--%>
<%--    </button>--%>

</body>
</html>





<%--<c:if test="${!empty singleComment}">--%>
<%--    <form method="post">--%>
<%--        <input id ="id" type="hidden" name="no" value="" />--%>
<%--        <input type="text" name="comment_text" value="${singleComment.comment_text}"/>--%>
<%--        <button type="submit">리뷰 수정하기</button>--%>
<%--    </form>--%>
<%--</c:if>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>







