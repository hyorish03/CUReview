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
            margin-top:15px;
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
            width: 400px;            /*background-color: pink;*/
            display: flex;
            flex-direction: row;
            margin-bottom:15px;

        }
        .table{
            width: 400px;
            height: 100%;
            background-color:white;
            display: grid;
            flex-direction: row;
            grid-template-columns: repeat(2, 1fr);
            grid-gap:20px;
            justify-content: center;
            align-items: center;
            margin-top:30px;
            .row{
                width:100%;
                margin-bottom: 60px;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;

            }
        }
        .item{
            /*background-color: aqua;*/
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height:200px;
        }
        .itemImageWrapper :hover{
            transform: scale(1.1);
            transition: transform .3s;
        }
        .itemImg {
            width: 191px;
            border: 2px solid #EBEBEB;
            border-radius: 15%;

        }

        .itemPrice{
            color: #222;
            font-feature-settings: 'clig' off, 'liga' off;
            font-family: Pretendard;
            font-size: 20px;
            font-style: normal;
            font-weight: 700;
            line-height: 22px; /* 110% */
            padding-left: 10px;

        }

        .itemText{
            width: 100%;
            display: flex;
            align-items: flex-start;
            flex-direction: column;
            margin-bottom:4px;
            color: #222;
            font-feature-settings: 'clig' off, 'liga' off;
            font-family: Pretendard;
            font-size: 16px;
            font-style: normal;
            font-weight: 400;
            line-height: 22px;
        }

        .itemName{
            margin-top:10px;
            color:#222;
            font-size: 16px;
            padding-left: 10px;
            font-feature-settings: 'clig' off, 'liga' off;
            font-family: Pretendard;
            font-style: normal;
            font-weight: 500;
            line-height: 22px; /* 137.5% */
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
<body style="overflow: scroll; margin: 0px; width:100vw; display: flex; justify-content: center; flex-direction: column">
<script type="text/javascript">
    function TodetailPage(no){
        let num = no.toString();
        location.href = '/items/detail?no='+num;
    }
</script>
<div class="header">
    <div class="headerText">
    CU 인기상품
    </div>
</div>
<div class="container">
    <div class="count">
            검색 결과 &nbsp;<div style="font-weight: bold">${list.size()}</div>
    </div>
    <div class="table">
        <c:if test="${ !empty list}">
        <c:forEach items="${list}" var="item">
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
        <img alt="X" src="${pageContext.request.contextPath}/static/X.png" width="42" height="42"/>
        </div>
</div>
</c:if>

<c:if test="${ empty list }">
    등록된 상품이 없습니다.
</c:if>
<br>

</body>
</html>










