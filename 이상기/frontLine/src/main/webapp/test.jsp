<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="playReset">
				<div id="hright">
				<div> <h1>놀거리 등록 페이지 입니다.</h1></div><br>
					<form name="local" method="POST" action="playReset">
						<select class="local" name="city">
							<option value="천안" selected="selected">천안</option>
							<option value="아산">아산</option>
							<option value="태안">태안</option>
							<option value="서산">서산</option>
							<option value="당진">당진</option>
							<option value="예산">예산</option>
							<option value="홍성">홍성</option>
							<option value="청양">청양</option>
							<option value="보령">보령</option>
							<option value="부여">부여</option>
							<option value="서천">서천</option>
							<option value="공주">공주</option>
							<option value="논산">논산</option>
							<option value="금산">금산</option>
						</select>
						
						<div >
						<input name="title" class="sinput" type="text" placeholder="상호명">
						</div>
						<div >
						<input name="address" class="sinput" type="text" placeholder="주소">
						</div>
						<div>
						<input name="tell" class="sinput" type="text" placeholder="번호">
						</div> 

						<div>
						<input name="openTime" class="sinput" type="text"placeholder="영업시간"> 
						</div> 

						<div>
						<input name="detail" class="sinput"type="text" placeholder="상세정보"> 
						</div> 

						
						<div>
						<input name="image"class="sinput" type="text" placeholder="이미지">
						</div>
						
						<div>
						<input class="sbtn" type="submit" value="등록">
						</div> 
					</form>
				</div>
			</div>
</body>
</html>