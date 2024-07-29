<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core"  prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title> 상세페이지 </title>
    <style>
        .headerWrapper{
            width: 100%;
            justify-content: center;
            display: flex;
            align-items: center;
            background-color: #fafafa;
        }
        .header{
            width:400px;
            height:60px;
            background-color: white;
            position: sticky;
            top:0;
            z-index: 1;
            justify-content: center;
            display: flex;
            align-items: center;
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
            width: 100%;
            display: flex;
            justify-content: center;
            flex-direction: column;
            align-items: center;
            overflow: scroll;
            position: relative;
            height: 100%;
            z-index: 1;
            background-color: #fafafa;
        }

        .container{
            width: 400px;
            height: 100%;
            display: flex;
            align-items: center;
            flex-direction: column;
            background-color: #fff;
            z-index: -1;
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
            z-index: -1;
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
            /*z-index: -1;*/
         }

        .commentWrapper{
            display: flex;
            flex-direction: row;
            margin-bottom:32px;
            padding: 8px 7px 12px 30px;
            justify-content: center;
            align-items: center;
            width: 320px;
            border-radius: 14px;
            border: 1px solid  #DDD;
            min-height: 120px

        }
        .commentText{
            display: flex;
            flex-direction: column;
            margin-right:12px;
            justify-content: flex-start;
            width: 100%;
            margin-top:20px;
        }

        #buttons {
            display: flex;
            gap: 8px;
            flex-direction: column;
            justify-content: center;
            width: 24px;
            background-color: #fff;
            align-items: flex-end;
            margin-top: 10px;
        }

        #buttons div{
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
            cursor:pointer;
            width:32px;

        }

        .makeReviewButtonWrapper{
            width:400px;
            height: 100px;
            background-color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            position: sticky;
            bottom:0;
            z-index: 1;
            border: none;
        }

        .makeReviewButtonWrapperBG{
            background-color: #fafafa;
            width:100%;
            display: flex;
            justify-content: center;
            align-items: center;
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

        /*모달 스타일링*/
        .modal {
            display: flex;
            justify-content: center;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 3;

        }

        .modal_background {
            background-color: rgba(0, 0, 0, 0.6);
            width: 100%;
            height: 100%;
            position: absolute;
        }

        .modal_content {
            text-align: center;
            position: relative;
            background-color: white;
            border-radius: 10px;
            top: 0;
            /*padding: 10px 25px;*/
            width: 334px;
            height: 181px;
            flex-shrink: 0;
        }
        .modal_content #deleteText{
            color:  #343434;
            text-align: center;
            font-family: Pretendard, serif;
            font-size: 22px;
            font-style: normal;
            font-weight: 700;
            line-height: 157%; /* 34.54px */
            margin-top: 40px;
        }
        button {
            width: 142px;
            height: 48px;
            flex-shrink: 0;
            margin-top: 30px;
            border: none;

        }
        #no{
            color: #5D5D5D;
            text-align: center;
            font-family: Pretendard;
            font-size: 18px;
            font-style: normal;
            font-weight: 500;
            line-height: normal;
            letter-spacing: 0.54px;
            border-radius: 12px;
            /*background:  #F5F6F8;*/
        }

        #yes{
            color:  #FFF;
            text-align: center;
            font-family: Pretendard;
            font-size: 18px;
            font-style: normal;
            font-weight: 700;
            line-height: normal;
            letter-spacing: 0.54px;
            border-radius: 12px;
            background:#1EDD81;
        }

        .hidden {
            display: none;
        }


        .noComment{
            font-size: 28px;
            font-family: Pretendard;
            color:  #9A9A9A;
            font-weight: 400;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            margin-top: 32px;
        }

        /* summary 버튼  */
        .menuDots{
            cursor: pointer;
        }
        .menuDots:focus{
            transform: scale(1.4);
        }
        summary::-webkit-details-marker { /* Safari 브라우저용 사용자 정의 스타일 */
            display: none;
        }
        summary {
            display: flex; /* 그 외의 브라우저용 사용자 정의 스타일 */
            transition: transform 0.1s; /* Animation */
            justify-content: flex-start;
            align-items: flex-start;
            margin-right: 10px;
            z-index: 1;
            width:100%;

        }
        summary:active{
            transform: translateY(2px);
        }
        details{
            display: flex;
            justify-content: flex-end;
            align-items: center;
            width: 24px;
        }
        .menus{
            display: flex;
            flex-direction: column;
            width: 36px;
            height: 100%;
            align-items: center;
            z-index: 1;
        }

        /*비밀번호 입력 모달*/
        .pwModal {
            display: flex;
            justify-content: center;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 2;
        }
        .pwHidden{
            display: none;
        }
        .pwModal_background {
            background-color: rgba(0, 0, 0, 0.6);
            width: 100%;
            height: 100%;
            position: absolute;
        }

        .pwModal_content {
            text-align: center;
            position: relative;
            background-color: white;
            border-radius: 10px;
            top: 0;
            /*padding: 10px 25px;*/
            width: 334px;
            height: 181px;
            flex-shrink: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .pwModal_content #pwDeleteText{
            color:  #343434;
            text-align: center;
            font-family: Pretendard, serif;
            font-size: 22px;
            font-style: normal;
            font-weight: 700;
            line-height: 157%; /* 34.54px */
            margin-top: 15px;
            margin-bottom: 15px;

        }
        button {
            width: 142px;
            height: 48px;
            flex-shrink: 0;
            margin-top: 30px;
            border: none;
            border-radius: 12px;
        }

        #pwinput{
            border: none;
            border-radius: 12px;
            background: #F5F6F8;
            height: 36px;
            width: 60%;
            padding: 0 20px;
        }
        #inputWrapper :focus{
            outline: none;
        }

        #inputWrapper{
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            gap: 10px;
            margin-top: 10px;
            color: #343434;
            font-family: Pretendard;
            font-size: 14px;
            font-style: normal;
            font-weight: 500;
            line-height: 157%; /* 21.98px */

        }

        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }
        /* Firefox  */
        input[type='number'] {
            -moz-appearance: textfield;
        }

        #pwYes{
            color:  #FFF;
            text-align: center;
            font-family: Pretendard;
            font-size: 20px;
            font-style: normal;
            font-weight: 500;
            line-height: normal;
            border-radius: 12px;
            background:#1EDD81;
            height: 40px;
        }

    </style>


</head>


<body style="height:100vh; overflow: scroll; margin: 0px; width:100vw; display: flex;  flex-direction: column; ">
<div class="headerWrapper">
    <div class="header">
        <div onclick="location.href='/items/list'" class="headerText">
            <img class="back" src="${pageContext.request.contextPath}/static/ChevronLeft.png"/>
        </div>
    </div>
</div>
    <div class="modal hidden">
        <div class="modal_background"> </div>
        <div class="modal_content">
            <div id="deleteText">삭제하시겠습니까?</div>
            <button id="no" onclick="">아니오</button>
            <button id="yes">네</button>
        </div>
    </div>
        <div class="pwModal pwHidden">
            <div class="pwModal_background"></div>
            <div class="pwModal_content">
                <div id="pwDeleteText">비밀번호를 입력해주세요</div>
                <div id="inputWrapper" >
                <input id="pwinput" type="number" name="checkPW"/>
                <button style="margin-top: 5px; background-color:#1EDD81;" id="pwYes" onclick="handleCommentPW()">다음</button>
                </div>
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
                                <div class="menus">
                                <details>
                                    <summary>
                                        <img class="menuDots" src="${pageContext.request.contextPath}/static/MenuDotHoriz.png"/>
                                    </summary>
                                    <div id="buttons">
<%--                                        <div  onclick="OpenDeleteModal(${item.comment_id},${item.no})" id="deleteButton" data-comment-id="${item.comment_id}" data-no="${item.no}">삭제</div>--%>
    <div  onclick="OpenPWCheckModal(${item.comment_id},${item.no},${item.comment_pw}, 'delete')" id="openDeleteBTN" data-comment-id="${item.comment_id}" data-no="${item.no}">삭제</div>

    <div  onclick="OpenPWCheckModal(${item.comment_id},${item.no},${item.comment_pw}, 'edit')" id="openDeleteBTN" data-comment-id="${item.comment_id}" data-no="${item.no}">수정</div>
<%--    <div id="editButton" onclick="location.href='/edit?comment_id=${item.comment_id}&no=${item.no}'">수정</div>--%>
                                    </div>
                                </details>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>
                    <c:if test="${empty comments}">
                        <div class="title">전체리뷰(${comments.size()})</div>
                        <img src="${pageContext.request.contextPath}/static/Simbol.png"/>
                        <div class="noComment"> 아직 리뷰가 없어요 :( <br/> 첫 리뷰를 쓰러 가볼까요 ? </div>
                    </c:if>

            </div>
        </div>

    </c:if>
</div>
<div class="makeReviewButtonWrapperBG">
    <div class="makeReviewButtonWrapper" onclick="ToNewReviewPage(${list.no})">
        <div class="makeReviewButton">리뷰 쓰러 가기</div>
    </div>
</div>

    <script>
        function ToNewReviewPage(no){
            let num = no.toString();
            location.href = '/review?no='+num;
        }

            function navigateDelete(no, comment_id) {
                alert(no);
                location.href = '/delete?comment_id=' + comment_id + '&no=' + no;
            }


            const modal = document.querySelector(".modal");
            const closeButton = modal.querySelector("#no");
            const modalBackground = modal.querySelector(".modal_background");
            const yesButton = modal.querySelector("#yes");

            function displayModal() {
                modal.classList.toggle("hidden");
            }

            function OpenDeleteModal(commentId, no) {
                console.log(commentId, no);
                let deleteUrl = '/delete?comment_id=' + commentId + '&no=' + no;
                yesButton.addEventListener("click", function () {
                    window.location.href = deleteUrl;
                });
                displayModal();
            }

            const pwModal = document.querySelector(".pwModal");
            const pwModalBackground = pwModal.querySelector(".pwModal_background");
            const pwYesButton = pwModal.querySelector("#pwYes");
            function displayPWModal(from) {
                pwModal.classList.toggle("pwHidden");
                pwYesButton.setAttribute("from", from);
            }

            let pwTemp = 0;
            let commentIdTemp, noTemp;
            function OpenPWCheckModal(commentId, no, pw, from) {
                displayPWModal(from);
                pwTemp = pw;
                commentIdTemp = commentId;
                noTemp = no;
                console.log("올바른 비밀번호 " + pw);
            }

            function handleCommentPW() {
                console.log("TEMP",pwTemp);
                var pw = document.getElementById('pwinput').value;
                var from = document.getElementById('pwYes').getAttribute("from");
                console.log("F", from);
                if(pw == pwTemp) {
                    console.log("정답");
                    if(from == 'delete') {
                        displayPWModal();
                        OpenDeleteModal(commentIdTemp, noTemp);
                    } else if (from == 'edit'){
                        console.log(commentIdTemp, noTemp);
                        location.href='/edit?comment_id='+commentIdTemp +'&no=' + noTemp;
                    }
                } else {
                    alert('비밀번호가 다릅니다.');
                }
            }
            closeButton.addEventListener("click", displayModal);
            modalBackground.addEventListener("click", displayModal);
            pwModalBackground.addEventListener("click", displayPWModal);
    </script>
</body>
</html>










