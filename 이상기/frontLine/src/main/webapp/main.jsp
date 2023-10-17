<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="http://mattstow.com/experiment/responsive-image-maps/jquery.rwdImageMaps.min.js"></script>
    <!-- 헤더 자바스크립트 -->
    <script src="resources/js/header.js"></script>
    <!-- 헤더 스타일 -->
    <link rel="stylesheet" href="resources/css/header.css">
    <!-- 글꼴 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@600&family=Roboto&display=swap"
        rel="stylesheet">
    <script>
        window.addEventListener("load", function(){
            hover();
            $(function(){
                $('img[usemap]').rwdImageMaps();
                $("#img").width("100%");
            });
        })

        let result = new Array(15);

        for (let i = 0; i < result.length; i++){
            result[i] = new Array(6);
        }

            result[0][0]="천안"
            result[1][0]="아산"
            result[2][0]="당진"
            result[3][0]="서산"
            result[4][0]="태안"
            result[5][0]="예산"
            result[6][0]="공주"
            result[7][0]="홍성"
            result[8][0]="보령"
            result[9][0]="청양"
            result[10][0]="부여"
            result[11][0]="서천"
            result[12][0]="논산"
            result[13][0]="계룡"
            result[14][0]="금산"

            result[0][1]="nx=63&ny=110"
            result[1][1]="nx=60&ny=110"
            result[2][1]="nx=54&ny=112"
            result[3][1]="nx=51&ny=110"
            result[4][1]="nx=48&ny=109"
            result[5][1]="nx=58&ny=107"
            result[6][1]="nx=63&ny=102"
            result[7][1]="nx=55&ny=106"
            result[8][1]="nx=54&ny=100"
            result[9][1]="nx=57&ny=103"
            result[10][1]="nx=59&ny=99"
            result[11][1]="nx=55&ny=94"
            result[12][1]="nx=62&ny=97"
            result[13][1]="nx=65&ny=99"
            result[14][1]="nx=69&ny=95"

            const time = Date.now();
            const data = new Date(time)
            const data2 = new Date(time-(1000*60*60))

            let year = data.getFullYear()
            let month = Number(data.getMonth()+1)
            let date = data.getDate()
            let hours = data.getHours()
            let hours2 = data2.getHours()
            let minutes = data.getMinutes()

            console.log(hours)

            let input_hours;
            let check_hours;

            if(Number(hours) == 0){
                date = data2.getDate();
            }
            
            if(Number(month) < 10){
                month = "0"+Number(month)
            }

            if(Number(date) < 10){
                date = "0"+Number(date)
            }

            if(Number(hours) < 10){
                hours = "0"+Number(hours)
            }

            if(Number(hours2) < 10){
                hours2 = "0"+Number(hours2)
            }

            if(Number(minutes) < 30){
                input_hours = hours2
                check_hours = hours
                console.log("inputhours3",input_hours)
            } else {
                input_hours = hours
                check_hours = Number(hours)+1
                console.log("inputhours",input_hours)
            }

            if(Number(check_hours) == 24){
                check_hours = "00"
            }

            if(Number(check_hours) < 10){
                check_hours = "0"+Number(check_hours)
            }

            console.log(year)
            console.log(month)
            console.log(date)
            console.log("input_hours",input_hours)
            console.log("checkhours",check_hours)

            for(let i = 0; i<result.length; i++){
                let input_xy = result[i][1];
                let xhr = new XMLHttpRequest();
                    //초단기예보조회 30분 기준
                let url = 'http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtFcst?serviceKey=ZVVKvZ%2F9XZ0XNbYrTeRqtelsi5YnTmeE0eXfkBXt319boYdmGKbF0L712MaVdYhwHBb5%2BV0Ic%2BrRwxIVuIBwYQ%3D%3D&dataType=JSON&numOfRows=1000&pageNo=1&base_date='+year.toString()+month+date+'&base_time='+(input_hours).toString()+'30'+'&'+input_xy+''
                xhr.open("GET", url);
                xhr.send();
                
                xhr.onload = function () {
                    let data = JSON.parse(xhr.responseText)
                    // console.log(xhr.responseText)
                    console.log(data)
                    //for문 돌려서 배열 data값 일치할때만 출력

                    let item = data.response.body.items.item

                    for(let j = 0; j<item.length; j++){

                        // console.log(item[j])
                        if(item[j].fcstTime == check_hours+"00"){
                            // console.log(item[j].category, item[j].fcstValue)
                            if(item[j].category == "PTY"){
                                result[i][2] = item[j].fcstValue
                            }
                            if(item[j].category == "SKY"){
                                result[i][3] = item[j].fcstValue
                            }
                            if(item[j].category == "T1H"){
                                result[i][4] = item[j].fcstValue
                            }
                            if(item[j].category == "REH"){
                                result[i][5] = item[j].fcstValue
                            }
                        }
                    }
                }
            }
        
        function hover(){
            let 천안 = document.querySelector(".천안")
            let 아산 = document.querySelector(".아산")
            let 당진 = document.querySelector(".당진")
            let 서산 = document.querySelector(".서산")
            let 태안 = document.querySelector(".태안")
            let 예산 = document.querySelector(".예산")
            let 홍성 = document.querySelector(".홍성")
            let 공주 = document.querySelector(".공주")
            let 청양 = document.querySelector(".청양")
            let 보령 = document.querySelector(".보령")
            let 서천 = document.querySelector(".서천")
            let 부여 = document.querySelector(".부여")
            let 논산 = document.querySelector(".논산")
            let 계룡 = document.querySelector(".계룡")
            let 금산 = document.querySelector(".금산")
           
            천안.addEventListener("mouseover", function(){
                document.querySelector(".weather").style.backgroundColor = "white"
                document.querySelector(".weather").style.border = "4px solid lightgray"
                document.querySelector(".map").setAttribute("src", "resources/images/map_ch.png")
                let html = "천안의 현재 <br>"
                let weater = document.querySelector(".weather_text")
                for (let i = 4; i<6; i++){
                    if( i == 4){
                        html += "온도 : "
                    }

                    if( i == 5 ){
                        html += "습도 : "
                    }
                    html += result[0][i];
                    if( i == 4){
                        html += "도 <br>"
                    }

                    if( i == 5 ){
                        html += "% <br>"
                    }
                }
                weater.innerHTML = html;

                check(result[0]);
            })

            천안.addEventListener("mouseout", function(){
                document.querySelector(".map").setAttribute("src", "resources/images/map.png")
                
            })

            아산.addEventListener("mouseover", function(){
                document.querySelector(".weather").style.backgroundColor = "white"
                document.querySelector(".weather").style.border = "4px solid lightgray"
                document.querySelector(".map").setAttribute("src", "resources/images/map_as.png")
                let html = "아산의 현재 <br>"
                let weater = document.querySelector(".weather_text")
                for ( let i = 4; i<6; i++){
                    if( i == 4){
                        html += "온도 : "
                    }

                    if( i == 5 ){
                        html += "습도 : "
                    }
                    html += result[1][i];
                    if( i == 4){
                        html += "도 <br>"
                    }

                    if( i == 5 ){
                        html += "% <br>"
                    }
                }
                weater.innerHTML = html;

                check(result[1]);
            })

            아산.addEventListener("mouseout", function(){
                document.querySelector(".map").setAttribute("src", "resources/images/map.png")
                 
            })

            당진.addEventListener("mouseover", function(){
                document.querySelector(".weather").style.backgroundColor = "white"
                document.querySelector(".weather").style.border = "4px solid lightgray"
                document.querySelector(".map").setAttribute("src", "resources/images/map_dj.png")
                let html = "당진의 현재 <br>"
                let weater = document.querySelector(".weather_text")
                for ( let i = 4; i<6; i++){
                    if( i == 4){
                        html += "온도 : "
                    }

                    if( i == 5 ){
                        html += "습도 : "
                    }
                    html += result[2][i];
                    if( i == 4){
                        html += "도 <br>"
                    }

                    if( i == 5 ){
                        html += "% <br>"
                    }
                }
                weater.innerHTML = html;

                check(result[2]);
            })

            당진.addEventListener("mouseout", function(){
                document.querySelector(".map").setAttribute("src", "resources/images/map.png")
                 
            })

            서산.addEventListener("mouseover", function(){
                document.querySelector(".weather").style.backgroundColor = "white"
                document.querySelector(".weather").style.border = "4px solid lightgray"
                document.querySelector(".map").setAttribute("src", "resources/images/map_ss.png")
                let html = "서산의 현재 <br>"
                let weater = document.querySelector(".weather_text")
                for ( let i = 4; i<6; i++){
                    if( i == 4){
                        html += "온도 : "
                    }

                    if( i == 5 ){
                        html += "습도 : "
                    }
                    html += result[3][i];
                    if( i == 4){
                        html += "도 <br>"
                    }

                    if( i == 5 ){
                        html += "% <br>"
                    }
                }
                weater.innerHTML = html;

                check(result[3]);
            })

            서산.addEventListener("mouseout", function(){
                document.querySelector(".map").setAttribute("src", "resources/images/map.png")
                 
            })

            태안.addEventListener("mouseover", function(){
                document.querySelector(".weather").style.backgroundColor = "white"
                document.querySelector(".weather").style.border = "4px solid lightgray"
                document.querySelector(".map").setAttribute("src", "resources/images/map_ta.png")
                let html = "태안의 현재 <br>"
                let weater = document.querySelector(".weather_text")
                for ( let i = 4; i<6; i++){
                    if( i == 4){
                        html += "온도 : "
                    }

                    if( i == 5 ){
                        html += "습도 : "
                    }
                    html += result[4][i];
                    if( i == 4){
                        html += "도 <br>"
                    }

                    if( i == 5 ){
                        html += "% <br>"
                    }
                }
                weater.innerHTML = html;

                check(result[4]);
            })

            태안.addEventListener("mouseout", function(){
                document.querySelector(".map").setAttribute("src", "resources/images/map.png")
                 
            })

            예산.addEventListener("mouseover", function(){
                document.querySelector(".weather").style.backgroundColor = "white"
                document.querySelector(".weather").style.border = "4px solid lightgray"
                document.querySelector(".map").setAttribute("src", "resources/images/map_ys.png")
                let html = "예산의 현재 <br>"
                let weater = document.querySelector(".weather_text")
                for ( let i = 4; i<6; i++){
                    if( i == 4){
                        html += "온도 : "
                    }

                    if( i == 5 ){
                        html += "습도 : "
                    }
                    html += result[5][i];
                    if( i == 4){
                        html += "도 <br>"
                    }

                    if( i == 5 ){
                        html += "% <br>"
                    }
                }
                weater.innerHTML = html;

                check(result[5]);
            })

            예산.addEventListener("mouseout", function(){
                document.querySelector(".map").setAttribute("src", "resources/images/map.png")
                 
            })

            공주.addEventListener("mouseover", function(){
                document.querySelector(".weather").style.backgroundColor = "white"
                document.querySelector(".weather").style.border = "4px solid lightgray"
                document.querySelector(".map").setAttribute("src", "resources/images/map_gj.png")
                let html = "공주의 현재 <br>"
                let weater = document.querySelector(".weather_text")
                for ( let i = 4; i<6; i++){
                    if( i == 4){
                        html += "온도 : "
                    }

                    if( i == 5 ){
                        html += "습도 : "
                    }
                    html += result[6][i];
                    if( i == 4){
                        html += "도 <br>"
                    }

                    if( i == 5 ){
                        html += "% <br>"
                    }
                }
                weater.innerHTML = html;

                check(result[6]);
            })

            공주.addEventListener("mouseout", function(){
                document.querySelector(".map").setAttribute("src", "resources/images/map.png")
                 
            })

            홍성.addEventListener("mouseover", function(){
                document.querySelector(".weather").style.backgroundColor = "white"
                document.querySelector(".weather").style.border = "4px solid lightgray"
                document.querySelector(".map").setAttribute("src", "resources/images/map_hs.png")
                let html = "홍성의 현재 <br>"
                let weater = document.querySelector(".weather_text")
                for ( let i = 4; i<6; i++){
                    if( i == 4){
                        html += "온도 : "
                    }

                    if( i == 5 ){
                        html += "습도 : "
                    }
                    html += result[7][i];
                    if( i == 4){
                        html += "도 <br>"
                    }

                    if( i == 5 ){
                        html += "% <br>"
                    }
                }
                weater.innerHTML = html;

                check(result[7]);

            })

            홍성.addEventListener("mouseout", function(){
                document.querySelector(".map").setAttribute("src", "resources/images/map.png")
                 
            })

            보령.addEventListener("mouseover", function(){
                document.querySelector(".weather").style.backgroundColor = "white"
                document.querySelector(".weather").style.border = "4px solid lightgray"
                document.querySelector(".map").setAttribute("src", "resources/images/map_br.png")
                let html = "보령의 현재 <br>"
                let weater = document.querySelector(".weather_text")
                for ( let i = 4; i<6; i++){
                    if( i == 4){
                        html += "온도 : "
                    }

                    if( i == 5 ){
                        html += "습도 : "
                    }
                    html += result[8][i];
                    if( i == 4){
                        html += "도 <br>"
                    }

                    if( i == 5 ){
                        html += "% <br>"
                    }
                }
                weater.innerHTML = html;

                check(result[8]);

            })

            보령.addEventListener("mouseout", function(){
                document.querySelector(".map").setAttribute("src", "resources/images/map.png")
                 
            })

            청양.addEventListener("mouseover", function(){
                document.querySelector(".weather").style.backgroundColor = "white"
                document.querySelector(".weather").style.border = "4px solid lightgray"
                document.querySelector(".map").setAttribute("src", "resources/images/map_cy.png")
                let html = "청양의 현재 <br>"
                let weater = document.querySelector(".weather_text")
                for ( let i = 4; i<6; i++){
                    if( i == 4){
                        html += "온도 : "
                    }

                    if( i == 5 ){
                        html += "습도 : "
                    }
                    html += result[9][i];
                    if( i == 4){
                        html += "도 <br>"
                    }

                    if( i == 5 ){
                        html += "% <br>"
                    }
                }
                weater.innerHTML = html;
                check(result[9]);
            })

            청양.addEventListener("mouseout", function(){
                document.querySelector(".map").setAttribute("src", "resources/images/map.png")
                 
            })

            부여.addEventListener("mouseover", function(){
                document.querySelector(".weather").style.backgroundColor = "white"
                document.querySelector(".weather").style.border = "4px solid lightgray"
                document.querySelector(".map").setAttribute("src", "resources/images/map_by.png")
                let html = "부여의 현재 <br>"
                let weater = document.querySelector(".weather_text")
                for ( let i = 4; i<6; i++){
                    if( i == 4){
                        html += "온도 : "
                    }

                    if( i == 5 ){
                        html += "습도 : "
                    }
                    html += result[10][i];
                    if( i == 4){
                        html += "도 <br>"
                    }

                    if( i == 5 ){
                        html += "% <br>"
                    }
                }
                weater.innerHTML = html;
                check(result[10]);
            })

            부여.addEventListener("mouseout", function(){
                document.querySelector(".map").setAttribute("src", "resources/images/map.png")
                 
            })

            서천.addEventListener("mouseover", function(){
                document.querySelector(".weather").style.backgroundColor = "white"
                document.querySelector(".weather").style.border = "4px solid lightgray"
                document.querySelector(".map").setAttribute("src", "resources/images/map_sc.png")
                let html = "서천의 현재 <br>"
                let weater = document.querySelector(".weather_text")
                for ( let i = 4; i<6; i++){
                    if( i == 4){
                        html += "온도 : "
                    }

                    if( i == 5 ){
                        html += "습도 : "
                    }
                    html += result[11][i];
                    if( i == 4){
                        html += "도 <br>"
                    }

                    if( i == 5 ){
                        html += "% <br>"
                    }
                }
                weater.innerHTML = html;
                check(result[11]);
            })

            서천.addEventListener("mouseout", function(){
                document.querySelector(".map").setAttribute("src", "resources/images/map.png")
                 
            })
            
            논산.addEventListener("mouseover", function(){
                document.querySelector(".weather").style.backgroundColor = "white"
                document.querySelector(".weather").style.border = "4px solid lightgray"
                document.querySelector(".map").setAttribute("src", "resources/images/map_ns.png")
                let html = "논산의 현재 <br>"
                let weater = document.querySelector(".weather_text")
                for ( let i = 4; i<6; i++){
                    if( i == 4){
                        html += "온도 : "
                    }

                    if( i == 5 ){
                        html += "습도 : "
                    }
                    html += result[12][i];
                    if( i == 4){
                        html += "도 <br>"
                    }

                    if( i == 5 ){
                        html += "% <br>"
                    }
                }
                weater.innerHTML = html;
                check(result[12]);

            })

            논산.addEventListener("mouseout", function(){
                document.querySelector(".map").setAttribute("src", "resources/images/map.png")
                 
            })

            계룡.addEventListener("mouseover", function(){
                document.querySelector(".weather").style.backgroundColor = "white"
                document.querySelector(".weather").style.border = "4px solid lightgray"
                document.querySelector(".map").setAttribute("src", "resources/images/map_gr.png")
                let html = "계룡의 현재 <br>"
                let weater = document.querySelector(".weather_text")
                for ( let i = 4; i<6; i++){
                    if( i == 4){
                        html += "온도 : "
                    }

                    if( i == 5 ){
                        html += "습도 : "
                    }
                    html += result[13][i];
                    if( i == 4){
                        html += "도 <br>"
                    }

                    if( i == 5 ){
                        html += "% <br>"
                    }
                }
                weater.innerHTML = html;

                check(result[13]);

            })

            계룡.addEventListener("mouseout", function(){
                document.querySelector(".map").setAttribute("src", "resources/images/map.png")
                 
            })

            금산.addEventListener("mouseover", function(){
                document.querySelector(".weather").style.backgroundColor = "white"
                document.querySelector(".weather").style.border = "4px solid lightgray"
                document.querySelector(".map").setAttribute("src", "resources/images/map_gs.png")
                let html = "금산의 현재 <br>"
                let weater = document.querySelector(".weather_text")
                for ( let i = 4; i<6; i++){
                    if( i == 4){
                        html += "온도 : "
                    }

                    if( i == 5 ){
                        html += "습도 : "
                    }
                    html += result[14][i];
                    if( i == 4){
                        html += "도 <br>"
                    }

                    if( i == 5 ){
                        html += "% <br>"
                    }
                }
                weater.innerHTML = html;

                check(result[14]);

            })

            금산.addEventListener("mouseout", function(){
                document.querySelector(".map").setAttribute("src", "resources/images/map.png")
                 
            })
        }

        function check(result){
            let img = document.querySelectorAll(".weather_img img")
                for (let i = 0; i<img.length; i++){
                    img[i].style.display = "none"
                }

            if(result[2] == 0){
                if(result[3] == 1){
                    document.querySelector(".sunny").style.display = "block"
                } else {
                    document.querySelector(".cloudy").style.display = "block"
                }
            } else {
                if(result[2] == 1 || result[2] == 2 || result[2] == 5 || result[2] == 6){
                    document.querySelector(".rain").style.display = "block"
                } else {
                    document.querySelector(".snow").style.display = "block"
                }
            }
           
            // pty=2  0없음 1비 2비/눈 3눈 5빗방울 6빗방울눈날림 7눈날림
            // sky=3  1맑음 3구름많음 4흐림
            // t1h=4
            // reh=5
        }
    </script>
    <style>
        div {
            /* border: 1px solid red; */
        }
        .map {
            max-width: 100%;
            max-height: 100%;
        }
        .main_wrap {
            display: flex;
            justify-content: center;
            padding-top: 3%;
            padding-bottom: 3%;

            background-image: url(resources/images/main_background.png);
            background-repeat: no-repeat;
            background-size: 100%;

            margin-bottom: 5%;

        }
        .main {
            width: 60%;
        }

        .main_map {
            height: 100%;
            width: 100%;

            display: flex;
            justify-content: center;
        }

        .sunny, .cloudy, .rain, .snow {
            display: none;
        }

        .weather_wrap {
            position: absolute;
            top: 150px;
            right: 30px;
        }

        .weather {
            border: 4px solid;
            border-style: none;
            display: flex;
            flex-direction: column;
            justify-content: center;
            border-radius: 15px;
            background-color: none;

            min-width: 150px;   
            min-height: 150px;

            z-index: 2;
        }

        .weather_img {
            display: flex;
            justify-content: center;
        }
        .weather_text {
            text-align: center;
        }
    </style>

    <style>
        
        /* 푸터 */
        footer {
            font-family: 'Noto Sans KR', sans-serif;
            /* font-family: 'Roboto', sans-serif; */
            font-weight: 400;
            color: #FFFFFF;
            font-size: 25px;
            line-height: 34.05px;

            position : relative;
            
            top : 100%;

            /* border: 1px solid red; */
            width: 100%;
            height: 245px;
            background-color: #474747;
            
            
            
        }

        footer .footer_div {
            padding-top: 10px;
            padding-bottom: 10px;
            margin-left: 10px;
            margin-right: 10px;
            /* border: solid 1px red; */
        }

        footer .textdiv {
            display: inline-block;
            padding-top: 30px;
            /* padding-left: 30px; */
            margin-left: 40px;
        }

        footer .icondiv {
            /* display: flex;
            justify-content: flex-end;
            display: inline-block; */
            padding-top: 30px;
            margin-right: 40px;
        }

        footer #logo {
            /* position: relative; */
            /* top: 61px;
            left: 50px; */
        }

        footer .number {
            font-size: 35px;
            font-weight: 600;
            text-align: right;
            /* margin-right: 34px; */
            margin-right: 25px;
            /* margin-bottom:30px; */
            margin-top: -35px;
        }

        footer .rightText {
            text-align: right;
            font-weight: 600;
            /* margin-right: 34px; */
            /* vertical-align: top; */
            margin-right: 25px;
            margin-bottom:20px;
            margin-top: -30px;
        }

        footer .footer_top {
            /* border: 1px solid red; */
            display: flex;
            justify-content: space-between;
            border-bottom: 1px solid white;
            /* border-bottom: 1px solid white; */
        
        }

        footer .footer_bottom {
            /* height: 500px; */
            /* border: 1px solid red; */
            padding: 0px;
            display: flex;
            justify-content: space-between;
        }

        footer .text_footer {
            display: flex;
            flex-direction: column;
            align-items: flex-end;
        }
        
        footer .logo_footer{
            margin-left: 40px;
            margin-top: -15px;
        }
        
        footer a {
            color: #fff; text-decoration: none; outline: none
        }
    </style>
    
    <style>
        /* 미디어 */
        @media screen and (max-width: 800px) {
           
        }
    </style>
</head>
<body>
    <jsp:include page="header.jsp"/>
    <!-- <a href="./login.html"><input type="button" value="대충 로그인페이지 가는 버튼"></a>
    <a href="./main_2.html"><input type="button" value="대충 main_2페이지 가는 버튼"></a> -->
    <div class="main_wrap">
        <div class="main">
            <div class="main_map">
                <img class="map" src="resources/images/map.png" usemap="#image-map">
        
                <map name="image-map">
                    <area class="천안" target="" alt="천안" title="천안" href="./아산_천안_페이지/cheonAn_main.html" coords="561,88,577,109,573,119,574,136,575,147,588,154,582,167,582,182,579,196,592,207,591,221,579,222,571,237,569,253,551,267,540,281,530,297,546,304,571,308,590,298,612,311,622,330,622,302,622,276,607,263,614,247,636,248,652,260,673,275,698,275,711,259,711,245,729,246,726,226,752,230,768,236,777,222,765,206,764,193,732,170,723,166,723,150,708,146,710,129,692,112,669,96,655,99,645,84,620,67,593,64,581,76,582,87" shape="poly">
                    <area class="아산" target="" alt="아산" title="아산" href="./아산_천안_페이지/asan_main.html" coords="560,88,542,93,517,93,503,105,479,117,456,127,431,138,428,159,433,185,434,200,424,204,423,224,436,234,445,248,462,250,471,268,496,272,509,287,513,302,531,298,541,275,567,252,574,230,581,217,593,215,580,194,580,165,587,154,572,140,577,120,573,103,564,93" shape="poly">
                    <area class="당진" target="" alt="당진" title="당진" href="" coords="224,8,205,37,217,56,223,91,218,120,229,137,242,159,259,176,285,167,294,182,312,194,320,214,345,208,351,195,364,200,382,224,414,223,421,208,434,196,430,174,430,149,430,126,412,98,404,78,402,63,367,55,346,41,313,55,297,34,268,19,244,5" shape="poly">
                    <area class="서산" target="" alt="서산" title="서산" href="" coords="147,34,130,50,145,60,156,64,156,71,142,69,136,66,147,84,157,86,166,92,175,97,175,109,180,120,165,125,153,131,147,146,142,160,137,145,127,146,130,165,137,187,147,200,141,229,140,270,147,300,161,329,192,336,192,305,198,270,206,311,231,315,243,312,286,297,293,254,318,219,305,185,291,174,291,165,246,170,235,137,210,121,227,72,212,42,157,36" shape="poly">
                    <area class="태안" target="" alt="태안" title="태안" href="" coords="113,64,102,75,105,106,97,119,77,111,40,130,47,153,38,180,36,161,27,168,25,196,2,218,8,241,7,264,28,246,26,225,46,230,57,244,65,265,46,264,31,259,22,274,36,289,63,280,77,271,80,261,96,261,90,276,106,303,105,333,105,355,121,348,123,373,132,396,133,443,133,474,143,483,155,495,170,495,187,496,190,474,168,451,171,432,162,415,155,394,153,366,152,347,136,347,130,335,138,325,145,306,140,279,140,242,148,196,130,179,101,177,120,161,122,135,138,120,118,107,116,75" shape="poly">
                    <area class="예산" target="" alt="예산" title="예산" href="" coords="282,298,285,322,303,324,303,305,340,290,370,290,371,305,377,313,391,337,378,354,375,372,375,385,393,389,412,392,425,374,431,360,462,362,482,345,482,324,495,303,500,280,510,273,475,268,457,250,437,239,423,215,392,224,372,214,361,198,341,199,328,210,310,225,295,253,293,280" shape="poly">
                    <area class="공주" target="" alt="공주" title="공주" href="" coords="621,335,654,360,632,379,635,399,634,407,645,427,642,445,664,467,686,471,702,479,687,491,687,527,679,550,666,525,646,521,630,542,605,554,589,530,570,562,555,584,534,570,512,557,516,532,519,507,547,489,520,452,484,442,469,449,467,427,461,400,457,365,485,336,492,310,499,287,510,297,534,296,574,309,584,300,616,314" shape="poly">
                    <area class="홍성" target="" alt="홍성" title="홍성" href="" coords="208,311,213,336,200,345,202,375,206,389,228,400,245,404,277,415,286,437,325,445,355,430,366,436,382,404,392,390,368,377,387,351,390,334,373,306,375,289,336,292,310,312,300,327,283,322,282,301,255,307,221,321" shape="poly">
                    <area class="보령" target="" alt="보령" title="보령" href="" coords="222,404,212,426,222,466,213,504,241,512,251,527,242,548,227,549,253,577,252,599,243,626,246,647,275,652,308,657,330,651,345,646,352,621,368,609,347,587,345,552,345,528,357,516,363,501,342,471,337,446,283,441,283,408,257,413,226,397" shape="poly">
                    <area class="청양" target="" alt="청양" title="청양" href="" coords="331,445,346,479,372,511,402,517,418,504,436,502,427,517,443,541,471,536,491,545,512,534,518,502,545,490,518,441,475,447,460,411,457,367,428,360,420,392,395,385,376,417,368,434,350,431" shape="poly">
                    <area class="부여" target="" alt="부여" title="부여" href="" coords="358,504,346,529,337,556,348,581,361,610,346,646,376,651,402,655,406,680,428,696,431,730,453,732,468,682,495,685,507,672,526,680,516,639,528,626,541,631,555,592,563,569,517,557,518,529,483,546,465,536,447,546,431,500,410,515,386,519,367,501" shape="poly">
                    <area class="서천" target="" alt="서천" title="서천" href="" coords="246,645,238,670,226,670,225,685,248,674,253,690,276,692,288,714,310,721,303,737,323,760,330,781,368,784,377,771,417,759,443,737,455,724,430,722,430,695,408,676,395,646,358,650,342,640,307,656,287,659,261,640" shape="poly">
                    <area class="논산" target="" alt="논산" title="논산" href="" coords="521,679,548,687,561,719,593,732,606,739,612,724,636,724,655,714,678,726,678,704,705,699,705,669,721,645,708,615,692,611,668,611,657,596,646,597,637,536,606,547,592,539,577,536,561,565,560,591,545,615,538,627,525,627,513,647" shape="poly">
                    <area class="계룡" target="" alt="계룡" title="계룡" href="" coords="643,532,642,586,650,596,661,602,690,610,697,591,681,576,680,545,662,524,651,524" shape="poly">
                    <area class="금산" target="" alt="금산" title="금산" href="" coords="736,587,727,629,713,667,710,704,726,711,740,755,763,780,781,766,801,799,837,801,851,780,838,756,881,776,901,784,896,764,907,755,896,741,907,731,901,714,893,697,881,684,881,659,880,637,875,611,851,609,842,592,805,617,790,637,760,630,760,604,750,586" shape="poly">
                </map>
            </div>
            <div class="weather_wrap">
                <div class="weather">
                    <div class="weather_img">
                        <img class="sunny" src="resources/images/Sunny.png">
                        <img class="cloudy" src="resources/images/Cloudy.png">
                        <img class="rain" src="resources/images/Rain.png">
                        <img class="snow" src="resources/images/Snow.png">
                    </div>
                    <div class="weather_text">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="footer_div footer_wrap">
            <div class="footer_div footer_top">
                <div class="footer_div textdiv">
                    <span><a href="./terms.html">이용약관</a>&nbsp;</span>|
                    <span><a href="./terms.html">개인정보처리방침</a>&nbsp;</span>|
                    <span><a href="./serviceCenter.html">고객센터</a></span>
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
                    <a href="./main.html"><img id="logo" src="https://github.com/Jominsang1/FrontLine_Project/blob/main/images/%EB%86%80%EC%95%84%EC%9C%A0_white.png?raw=true"></a>
                </div>
                
                <div class="footer_div text_footer">
                    <div class="footer_div rightText">고객센터</div>
                    <div class="footer_div number">1313-1212</div>
                </div>
                    
            </div>
        </div>
    </footer>
</body>
</html>