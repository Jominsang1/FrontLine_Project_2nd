<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	
	<!-- ��� �ڹٽ�ũ��Ʈ -->
    <script src="resources/js/header.js"></script>
    <!-- ��� ��Ÿ�� -->
    <link rel="stylesheet" href="resources/css/header.css">
    
    <link rel="stylesheet" href="resources/css/cheonAn_main.css">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="resources/js/cheonAn_main.js"></script>

</head>

<body>

    <!-- <div id="cs">
    </div> -->
	<jsp:include page="header.jsp"/>
    
    
    <div class="wrap">

        




        <div class="best_travel">
            <div class="weathers">
                <div class="weather_img">
                    <img class="sunny"
                        src="https://github.com/Jominsang1/FrontLine_Project/blob/main/images/Sunny.png?raw=true">
                    <img class="cloudy"
                        src="https://github.com/Jominsang1/FrontLine_Project/blob/main/images/Cloudy.png?raw=true">
                    <img class="rain"
                        src="https://github.com/Jominsang1/FrontLine_Project/blob/main/images/Rain.png?raw=true">
                    <img class="snow"
                        src="https://github.com/Jominsang1/FrontLine_Project/blob/main/images/Snow.png?raw=true">
                </div>
                <div id="weather"></div>
            </div>
            <div class="title">
                <p4>õ��<br>
                    ����Ʈ ������</p4>
            </div>
            <div class="items">
                <div class="itemss">
                    ////////////////////////////////// �̹��� �迭 Ŭ���� �ڵ� �߰��� //////////////////////////////////
                </div>
            </div>
            <div style="margin-top : 5px;"></div>
            <div class="btns">
                <input type="button" id="btn1">
                <div id="count"> 1 / 4 </div>
                <input type="button" id="btn2">
            </div>
        </div><br>


        <div class="second_line">
            <span>
                <p4>���� ��ġ�� �ȵ� �԰Ÿ�</p4>
            </span><br>
            <div style="margin-top : 5px;"></div>
            <span>
                <p5>���� �ǹ� �ִ� õ�ȸ���</p5>
            </span><a href="./cheonAn_foodMore.html" class="item_more">
                <p5>������</p5>
            </a></span><br><br>

        </div>

        <div class="best_food">
            ////////////////////////////////// �̹��� �迭 Ŭ���� �ڵ� �߰��� //////////////////////////////////
        </div><br>


        <div class="second_line">
            <span>
                <p4>���� ������ ������ ����</p4>
            </span><br>
            <div style="margin-top : 5px;"></div>
            <span>
                <p5>���� ������ õ���� �̻����</p5>
            </span><a href="./cheonAn_playMore.html" class="item_more">
                <p5>������</p5>
            </a></span><br><br>
        </div>

        <div class="best_play">
            ////////////////////////////////// �̹��� �迭 Ŭ���� �ڵ� �߰��� //////////////////////////////////
        </div><br><br>


        <div class="best_sleep">

            <div id="sleep_img">
                ////////////////////////////////// �̹��� �迭 Ŭ���� �ڵ� �߰��� //////////////////////////////////
            </div>


            <div id="sleep_more">
                <div id="logoimg"><img
                        src="https://github.com/Jominsang1/FrontLine_Project/blob/main/images/simbol_white.png?raw=true">
                </div>
                <div id="moreinn" style="color: white;">
                    <p4>���� ���Ҹ� ����������</p4><br><br><br>
                    <button type="button" class="sleep_more_btn">
                        <p6>���� ������</p6>
                </div>
            </div>
        </div><br><br><br>
        <div style="text-align : center;">
            <p4>��û���� ��������</p4>
        </div><br><br>

        <div class="select_place_list">
            <div class="select_place_img">
                <img src="https://github.com/Jominsang1/FrontLine_Project/blob/main/%EC%88%99%EC%86%8C%EB%A9%94%EC%9D%B8/%EC%9D%B4%EB%AF%B8%EC%A7%80/%EC%A7%80%EC%97%AD%EC%84%A0%ED%83%9D_%EC%9B%90%EB%B3%B8%20(1).png?raw=true"
                    id="sp_1">

            </div>

            <div class="select_place_img">
                <img src="https://github.com/Jominsang1/FrontLine_Project/blob/main/%EC%88%99%EC%86%8C%EB%A9%94%EC%9D%B8/%EC%9D%B4%EB%AF%B8%EC%A7%80/%EC%A7%80%EC%97%AD%EC%84%A0%ED%83%9D_%EC%9B%90%EB%B3%B8%20(2).png?raw=true"
                    id="sp_2">

            </div>

            <div class="select_place_img">
                <img src="https://github.com/Jominsang1/FrontLine_Project/blob/main/%EC%88%99%EC%86%8C%EB%A9%94%EC%9D%B8/%EC%9D%B4%EB%AF%B8%EC%A7%80/%EC%A7%80%EC%97%AD%EC%84%A0%ED%83%9D_%EC%9B%90%EB%B3%B8%20(3).png?raw=true"
                    id="sp_3">

            </div>

            <div class="select_place_img">
                <img src="https://github.com/Jominsang1/FrontLine_Project/blob/main/%EC%88%99%EC%86%8C%EB%A9%94%EC%9D%B8/%EC%9D%B4%EB%AF%B8%EC%A7%80/%EC%A7%80%EC%97%AD%EC%84%A0%ED%83%9D_%EC%9B%90%EB%B3%B8%20(4).png?raw=true"
                    id="sp_4">

            </div>

            <div class="select_place_img">
                <img src="https://github.com/Jominsang1/FrontLine_Project/blob/main/%EC%88%99%EC%86%8C%EB%A9%94%EC%9D%B8/%EC%9D%B4%EB%AF%B8%EC%A7%80/%EC%A7%80%EC%97%AD%EC%84%A0%ED%83%9D_%EC%9B%90%EB%B3%B8%20(5).png?raw=true"
                    id="sp_5">

            </div>

            <div class="select_place_img">
                <img src="https://github.com/Jominsang1/FrontLine_Project/blob/main/%EC%88%99%EC%86%8C%EB%A9%94%EC%9D%B8/%EC%9D%B4%EB%AF%B8%EC%A7%80/%EC%A7%80%EC%97%AD%EC%84%A0%ED%83%9D_%EC%9B%90%EB%B3%B8%20(6).png?raw=true"
                    id="sp_6">

            </div>
        </div>

        <div class="chungnam_city">
            ////////////////////////////////// �̹��� �迭 Ŭ���� �ڵ� �߰��� //////////////////////////////////
        </div>
        <div>

        </div>

        <footer>
            <div class="footer_div footer_wrap">
                <div class="footer_div footer_top">
                    <div class="footer_div textdiv">
                        <span><a href="../terms.html">�̿���</a>&nbsp;</span>|
                        <span><a href="../terms.html">��������ó����ħ</a>&nbsp;</span>|
                        <span><a href="../serviceCenter.html">������</a></span>
                    </div>
                    <div class="footer_div icondiv">
                        <span><a href="https://www.facebook.com/?locale=ko_KR"><img
                            src="https://github.com/Jominsang1/FrontLine_Project/blob/main/images/Facebook.png?raw=true"></a>&nbsp;&nbsp;</span>
                        
                            <span><a href="https://www.youtube.com/"><img
                                src="https://github.com/Jominsang1/FrontLine_Project/blob/main/images/YouTube.png?raw=true"></a>&nbsp;&nbsp;</span>
                        
                        
                            <span><a href="https://www.instagram.com/"><img
                                src="https://github.com/Jominsang1/FrontLine_Project/blob/main/images/Instagram.png?raw=true"></a></span>
                        
                    </div>
                </div>
                <div class="footer_div line2"></div>
               
        
                <div class="footer_div footer_bottom">
                    <div class="footer_div logo_footer">
                        <a href="../main.html"><img id="logo" src="https://github.com/Jominsang1/FrontLine_Project/blob/main/images/%EB%86%80%EC%95%84%EC%9C%A0_white.png?raw=true"></a>
                    </div>
                    
                    <div class="footer_div text_footer">
                        <div class="footer_div rightText">������</div>
                        <div class="footer_div number">1313-1212</div>
                    </div>
                        
                </div>
            </div>
        </footer>

    </div>

</body>

</html