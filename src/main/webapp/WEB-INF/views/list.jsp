<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core"  prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title> CU 인기상품</title>

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
        .container {
            margin-top:30px;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            background-color: white;
            flex-direction: column;
            align-items: center;
            overflow: scroll;
        }
        .count{
            width: 50%;
            /*background-color: pink;*/
            display: flex;
            flex-direction: row;

        }
        .table{
            width: 40%;
            height: 100%;
            background-color:white;
            display: grid;
            flex-direction: row;
            grid-template-columns: repeat(2, 1fr);
            grid-gap:20px;
            justify-content: center;
            align-items: center;
            .row{
                width:100%;
                margin-bottom: 10px;
                border: 2px solid #EBEBEB;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                border-radius: 15px;
            }
        }
        .item{
            /*background-color: aqua;*/
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height:180px;
        }
        .itemImg {
            width: 100px;
        }

        .itemPrice{
            font-weight: bold;
            font-size:20px;
        }

        .itemImageWrapper :hover{
            transform: scale(1.2);
            transition: transform .3s;
        }

        .itemText{
            display: flex;
            align-items: flex-start;
            flex-direction: column;
        }
        .itemName{
            margin-top:10px;
        }
        .NewItemButton{
            position: fixed;
            top:90%;
            right:10%;
            background-color: #5F259F;
            width: 50px;
            height: 50px;
            border-radius: 100%;

        }
    </style>
</head>

<%--
    List<Item> list = (List<Item>)request.getAttribute("list");
--%>
<body style="overflow: scroll; margin: 0px">
<script type="text/javascript">
    function TodetailPage(no){
        alert("hi"+no);
        location.href = `/items/detail?no=${no}`;
    }
</script>
<div class="header">CU 픽</div>
<div class="container">
    <div class="count">
            검색 결과 &nbsp;<div style="font-weight: bold">${list.size()}</div>
    </div>
    <div class="table">
        <c:if test="${ !empty list }">
        <c:forEach items="${list }" var="item">
            <div class="row">
                <div class ="item" >
                    <div class ="itemImageWrapper" onclick="TodetailPage(${item.no})" >
                        <img  class ="itemImg" src=${item.img} />
                    </div>
                    <div class ="itemText">
                        <div class ="itemName">${item.name }</div>
                        <div style="display:flex; flex-direction: row; justify-content:center; text-align: center">
                             <div class="itemPrice">
                                     ${item.price}
                             </div>
                            <div style=" font-size: 18px; display:flex; text-align: center; align-items: center">원</div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
        <div class="NewItemButton">
        <img  alt="X" src="/" width="42" height="42"/>
        </div>
</div>
</c:if>

<c:if test="${ empty list }">
    등록된 상품이 없습니다.
</c:if>
<br>

</body>
</html>










