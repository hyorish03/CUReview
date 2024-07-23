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
    </style>
</head>


<body style="overflow: scroll; margin: 0px">
<script>
    window.onload = function (){
            let url = document.location.href;
            if(url.indexOf("?") > -1){
                let splits = url.split("?");
                let gets = splits[1];
                let para = gets.split("&");
                let len = para.length
                for(let i = 0; i < len; i++){
                    var param = para[i].split("=");
                    var name  = param[0];
                    var value = param[1];

                    alert(value);
                }
            }
    }

</script>
<div><div class="header">상세페이지</div>

</div>
</body>
</html>










