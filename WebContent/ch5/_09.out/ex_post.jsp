<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link href = "validate.css" rel="stylesheet" type="text/css">
	<script src = "http://code.jquery.com/jquery-3.3.1.js"></script>
	<script src = "validate.js"></script>
</head>
<body>
<fieldset>
  <legend>유효성 검사</legend>
 <form name="myform" method="post" action="send.jsp" 
       id="myform"   onSubmit="return check()">
 <label>ID</label> 
 <input type="text" size="30" name="id" id="id">
 <input type="button" value="ID중복검사" onclick="idcheck()"><br>
  
 <label>비밀번호</label>
 <input type="password" name="pass" id="pass" size="42"><br>
 
 <label>주민번호</label>
 <input type="text" size="17" maxlength="6"
  name="jumin1" id="jumin1">
 &nbsp;-&nbsp;
 <input type="text" size="17" maxlength="7"
  name="jumin2" id="jumin2" ><br>
     
 <label>E-Mail</label> 
 <input type="text" name="email" id="email" size=10>&nbsp;@
 <input type="text" name="domain" id="domain" size=10>
   <select name="sel" id="sel" onChange="domain1()" >
     <option value="">직접입력</option>
     <option value="naver.com">naver.com</option>
     <option value="daum.net">daum.net</option>
     <option value="nate.com">nate.com</option>
     <option value="gmail.com">gmail.com</option>
   </select><br>
   

 <label>성별</label> 
  <span>  
 <input type="radio" name="gender" value="m" id="gender1"><sup>남자</sup>
 <input type="radio" name="gender" id="gender2"><sup>여자</sup>
 </span>  
 <br>
 <label>취미</label>  
  <span> 
 <input type="checkbox" name="hobby" id="hobby1" value="공부"><sup>공부</sup>
 <input type="checkbox" name="hobby" id="hobby2" value="게임"><sup>게임</sup>
 <input type="checkbox" name="hobby" id="hobby3" value="운동"><sup>운동</sup>
 <input type="checkbox" name="hobby" id="hobby4" value="등산"><sup>등산</sup>
 <input type="checkbox" name="hobby" id="hobby5" value="낚시"><sup>낚시</sup>
 </span>  
 
 <br>
    <!-- 선택한 것을 hobby배열로 처리 -->
    
 <label>우편번호</label>  
 <input type="text" size="12" maxlength="3" 
        name="post1" id="post1">-
 <input type="text" size="12" maxlength="3" 
        name="post2" id="post2">
 <input type="button" value="우편검색" onClick="post()"><br>
    
 <label>주소</label> 
 <input type="text" size="42" name="address" id="address"><br>
 
 <label>자기소개</label> <br>
 <textarea rows="10" cols="60" name="intro" id="intro"></textarea><br><br>

 <input type="submit" value="회원가입">
 <input type="reset" value="취소">

 </form>
</fieldset>
</body>
</html>