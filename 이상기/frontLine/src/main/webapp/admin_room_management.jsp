<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.frontline.db.RoomDB"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- 헤더 자바스크립트 -->
<!-- 어드민 헤더만 자바스크립트로 헤더 스타일 변경해줌 -->
<script src="resources/js/header_admin.js"></script>
<!-- 헤더 스타일 -->
<link rel="stylesheet" href="resources/css/header.css">
<!-- 관리자 메뉴 스타일 -->
<link rel="stylesheet" href="resources/css/admin_aside.css">
<script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous"></script>
    <style>
        h4{
            height: 40px;
        }

        h6 {
            margin-left: 10px;
            height: 40px;
        }
        /*셀렉트*/
        .head {
            display: block;
        }

        .parent{
            display: flex;
            justify-content: flex-end;
        }

        .sinput {
            width: 150px;
            height: 30px;
            font-size: 13px;
            text-align: center;
            border: 1px solid #aaa;
            border-radius: 6px;
            margin-top: 10px;
            margin-bottom: 10px;
            margin-right: 5px;
        }

        .sbtn {
            width: 50px;
            height: 30px;
            font-size: 14px;
            border: 1px solid #aaa;
            border-radius: 6px;
            margin-top: 10px;
            margin-bottom: 10px;
            margin-right: 5px;
        }

        .sbtn2 {
            width: 80px;
            height: 30px;
            font-size: 14px;
            border: 1px solid #aaa;
            border-radius: 6px;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        /*표*/

        table {
            border-collapse: collapse;
        }

        th,
        td {
            border: 1px solid #aaa;
            margin: auto;
            width: 110px;
            text-align: center;
        }

        /*페이징*/
        .page_wrap {
            margin-top: 30px;
            text-align: center;
        }

        .page_nation {
            display: inline-block;
        }

        .page_nation .none {
            display: none;
        }

        .page_nation a {
            margin: 0px;
            float: left;
            border: 1px solid #e6e6e6;
            width: 28px;
            height: 28px;
            line-height: 27px;
            background-color: #fff;
            font-size: 14px;
            color: #999999;
        }

        .page_nation .arrow {
            border: 1px solid #ccc;
        }

        .page_nation .prev {
            background: #f8f8f8 url('') no-repeat center center;
            margin-right: 6px;

        }

        .page_nation .next {
            background: #f8f8f8 url('') no-repeat center center;
            margin-left: 6px;
        }

        .page_nation a.active {
            background-color: #42454c;
            color: #fff;
            border: 1px solid #42454c;
        }

        .arrow.prev {
            margin-right: 10px;
        }

        .arrow.next {
            margin-left: 10px;
        }
    </style>

    <style>
        a,
        a:link,
        a visited {
            color: inherit;
            text-decoration: none;
        }

        .container {
            width: 1280px;
            height: 120px;
            background-color: #474747;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        button {
            background-color: #474747;
            all: unset;
        }

        .menuMargin {
            margin: 45px;
        }

        .nav {
            width: 220px;
            height: 790px;
            background-color: #474747;
            padding: 20px;
        }

        .managerMenu {
            color: #fff;

        }

        .mainFont {
            margin: 20px;
            line-height: 90px;
            font-size: 40px;
        }

        .flus {
            display: flex;
        }

        .members {
            margin-top: 5%;
            margin-left: 6%;
        }

        .autoPage {
            width: 1280px;
            margin: 0 auto;
        }
        
        .room_image {
        	height: 100px;
        	width: 100px;
        }
    </style>
</head>

<body>
<jsp:include page="header.jsp"/>
<main>
<jsp:include page="admin_aside.jsp"/>
<div class="flus">
            <div class="members">
                <div class="head">
                    <h1>
                        숙소 등록 관리
                    </h1>
                </div>
            <div class="parent">
                <input class="sinput" type="text" placeholder="검색어를 입력해주세요">
                <input class="sbtn" type="submit" value="검색">
                <a href="admin_2_1.jsp"><input class="sbtn2" type="button" value="신규등록"></a>
            </div>

                <div class="tablemain">
                    <table>
                            <tr>
                                <th>번호</th>
                                <th>숙소명</th>
                                <th>주소</th>
                                <th>전화번호</th>
                                <th>가격</th>
                                <th>숙소 이미지</th>
                                <th>상세내용</th>
                            </tr>

                <c:forEach var="user" items="<%=RoomDB.getRoomList()%>"  varStatus="status">
                            <tr>
                            	<td>${status.count}</td>
                                <td>${user.getRoomTitle()}</td>
                                <td>${user.getRoomAddress()}</td>
                                <td>${user.getRoomTell()}</td>
                                <td>${user.getRoomPrice()}</td>
                                <td><img class="room_image" src="${user.getRoomImage()}"></td>
                                <td>${user.getRoomDetail()}</td>
                            </tr>
                 </c:forEach>   
                    </table>
                </div>

                <div class="page_wrap">
                    <a class="arrow prev" href="#"><button><img
                                src="https://github.com/Jominsang1/FrontLine_Project/blob/main/images/Group%202187.png?raw=true"></button></a>
                    <div class="page_nation">
                        <a href="#" class="active">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#">6</a>
                        <a href="#">7</a>
                        <a href="#">8</a>
                        <a href="#">9</a>
                        <a href="#">10</a>
                    </div>
                    <a class="arrow next" href="#"><button><img
                                src="https://github.com/Jominsang1/FrontLine_Project/blob/main/images/Group%202188.png?raw=true"></button></a>
                </div>
            </div>
            
        </div>
</main>
</body>
</html>