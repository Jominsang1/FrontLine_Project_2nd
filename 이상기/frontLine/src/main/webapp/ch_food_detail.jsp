<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="resources/css/detail_page.css">

    <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5a611be24364678ff335af8c83f5d896&libraries=services"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

</head>
<script src="resources/js/detail_page.js"></script>

<body>

    <div class="wrap">
        <div class="div1">
            <div class="div1 area">
                <img class="area1"
                    src="https://github.com/Jominsang1/FrontLine_Project/blob/main/images/Location_icon.png?raw=true">
                <div class="area2">천안시</div>
            </div>

            <div class="div1 place"></div>

            <div class="best_food">

                <div class="food_item">

                </div>

            </div><br>

            <div class="div2">
                <span class="div2 img"><img
                        src="https://raw.githubusercontent.com/Jominsang1/FrontLine_Project/abd4804f1a43745a0ff936a8ba1c64227c0618d0/images/quotation_marks.png"></span>
                <span class="div2 title">text</span>
                <span class="div2 img"><img
                        src="https://raw.githubusercontent.com/Jominsang1/FrontLine_Project/7da459fdc0919fd19c1b2f1517354f19d0c0c86a/images/quotation_marks2.png"></span>
                <span class="div2 text"></span>
            </div>




            <div class="findWay">
                <p class="btnText">READY?</p>
                <div class="btnTwo">
                    <p class="btnText2">GO!</p>
                </div>
            </div>

            <div id="map"></div>

        </div>

        <div class="list">

            <ul class="ul4 info">

            </ul>

        </div>
    </div>



    <div class="div5">
        <div class="div5 review" style="margin-left: 20px;">
            리뷰<img src="https://github.com/Jominsang1/FrontLine_Project/blob/main/images/pencil-light.png?raw=true">
        </div>
        <div class="div5 bt">
            <input id="submit-comment" type="button" value="등록">
        </div>
    </div>

    <div>
        <hr style="margin:30px;">
    </div>

    <div class="comments_section">
        <input id="comment-input" type="text" placeholder="소중한 댓글을 남겨주세요"
            style="width:1820px; height:142px; border-color: #474747; margin:20px;">
    </div>

    <ul id="comment-list"></ul>


</body>

</html>