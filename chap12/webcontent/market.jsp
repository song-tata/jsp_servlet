<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>이미지 리스트 - 쇼핑몰</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
    }

    header {
        background-color: #f2f2f2;
        padding: 20px;
    }

    nav {
        background-color: #eaeaea;
        padding: 10px;
    }

    main {
        padding: 20px;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }

    ul {
        list-style-type: none;
        padding: 0;
        margin: 0;
    }

    li {
        display: flex;
        align-items: center;
        padding: 10px;
        background-color: #fff;
        border-bottom: 1px solid #ccc;
        width: calc(50% - 20px);
        margin-bottom: 20px;
    }
    
    .last-info {
        margin-left: auto;
    }

    img {
        margin-right: 10px;
    }

    .image-info {
        flex: 1;
    }

    .image-name {
        font-weight: bold;
        margin-bottom: 5px;
    }

    .image-inf {
        flex: 1;
        display: flex;
        align-items: center;
    }

    .button {
        display: inline-block;
        padding: 5px 10px;
        background-color: #4CAF50;
        color: #fff;
        text-decoration: none;
        border-radius: 3px;
    }

    aside {
        background-color: #eaeaea;
        padding: 10px;
        width: 200px;
    }

    footer {
        background-color: #f2f2f2;
        padding: 20px;
        text-align: center;
    }
</style>
</head>
<body>
    <header>
        <h1>이미지 리스트 - 쇼핑몰</h1>
    </header>

    <nav>
        <ul>
            <li><a href="#">메뉴1</a></li>
            <li><a href="#">메뉴2</a></li>
            <li><a href="#">메뉴3</a></li>
        </ul>
    </nav>

    <main>
        <aside>
            <h3>카테고리</h3>
            <ul>
                <li><a href="#">카테고리1</a></li>
                <li><a href="#">카테고리2</a></li>
                <li><a href="#">카테고리3</a></li>
                <li><a href="#">카테고리4</a></li>
            </ul>
        </aside>

        <div class="content1">
            <ul>
                <li>
                    <span class="image-info">이미지</span>
                    <span class="image-info">이미지 이름</span>
                    <span class="image-info last-info">이미지 선택하기</span>
                </li>
                <%
                for (int i = 1; i < 11; i++) {
                %>
                <li>
                    <a href="racoon.html">
                        <img alt="너굴쓰" src="IMAGES/ERRORjpg.jpg" width="60px" height="60px">
                    </a>
                    <div class="image-inf">
                        <span class="image-name">너굴쓰<%=i %></span>
                        <a href="racoon.html" class="button">상세 보기</a> <!-- 예시로 "상세 보기" 버튼 추가 -->
                    </div>
                    <div class="image-checkbox">
                        <input type="checkbox">
                    </div>
                </li>
                <%
                }
                %>
            </ul>
        </div>

        <aside>
            <h3>광고</h3>
            <img src="ad-image.jpg" alt="광고 이미지" width="180px" height="250px">
        </aside>
    </main>

    <footer>
        &copy; 2023 쇼핑몰. All rights reserved.
    </footer>
</body>
</html>
