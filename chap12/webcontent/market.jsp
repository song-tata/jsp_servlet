<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�̹��� ����Ʈ - ���θ�</title>
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
        <h1>�̹��� ����Ʈ - ���θ�</h1>
    </header>

    <nav>
        <ul>
            <li><a href="#">�޴�1</a></li>
            <li><a href="#">�޴�2</a></li>
            <li><a href="#">�޴�3</a></li>
        </ul>
    </nav>

    <main>
        <aside>
            <h3>ī�װ�</h3>
            <ul>
                <li><a href="#">ī�װ�1</a></li>
                <li><a href="#">ī�װ�2</a></li>
                <li><a href="#">ī�װ�3</a></li>
                <li><a href="#">ī�װ�4</a></li>
            </ul>
        </aside>

        <div class="content1">
            <ul>
                <li>
                    <span class="image-info">�̹���</span>
                    <span class="image-info">�̹��� �̸�</span>
                    <span class="image-info last-info">�̹��� �����ϱ�</span>
                </li>
                <%
                for (int i = 1; i < 11; i++) {
                %>
                <li>
                    <a href="racoon.html">
                        <img alt="�ʱ���" src="IMAGES/ERRORjpg.jpg" width="60px" height="60px">
                    </a>
                    <div class="image-inf">
                        <span class="image-name">�ʱ���<%=i %></span>
                        <a href="racoon.html" class="button">�� ����</a> <!-- ���÷� "�� ����" ��ư �߰� -->
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
            <h3>����</h3>
            <img src="ad-image.jpg" alt="���� �̹���" width="180px" height="250px">
        </aside>
    </main>

    <footer>
        &copy; 2023 ���θ�. All rights reserved.
    </footer>
</body>
</html>
