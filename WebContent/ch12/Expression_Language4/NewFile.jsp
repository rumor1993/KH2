<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE>
<html>
<head>
<title>ex_post.jsp</title>
<link href="../../../css/ex_post.css" rel="stylesheet" type="text/css">
<script src="../../../js/jquery-3.0.0.js" ></script>
<script src="validate_kr.js" charset="euc-kr"></script>

</head>

<body>
	<fieldset>
		<legend>��ȿ�� �˻�</legend>
		<form name="myform" method="post" action="send.jsp">
          ID: <input type=text size=10 name=id id=id>
              <input type=button value="id�ߺ�üũ" id=idcheck>
			<br> ��й�ȣ <input type=password name=pass id=pass><br>
			�ֹι�ȣ :<input type=text size=6 name=jumin1 id=jumin1 maxlength=6>-
			<input type=text size=7 name=jumin2 id=jumin2 maxlength=7><br>
			E-Mail: <input type=text name=email id=email>@ <input
				type=text name=domain id=domain> 
			<select name=sel id=sel>
				<option value="">�����Է�</option>
				<option value="naver.com">naver.com</option>
				<option value="daum.net">daum.net</option>
				<option value="nate.com">nate.com</option>
				<option value="gmail.com">gmail.com</option>
			</select><br> 
			����: <input type=radio name=gender id=gender1 value="woman">����
			<input type=radio name=gender id=gender2 value="man">����<br>
			���: <input type=checkbox name=hobby id=hobby1 value="����"> ����
			<input type=checkbox name=hobby id=hobby2 value="���">��� <input
				type=checkbox name=hobby id=hobby3 value="���">��� <input
				type=checkbox name=hobby id=hobby4 value="�뷡">�뷡 <input
				type=checkbox name=hobby id=hobby5 value="����">����<br>
			�����ȣ:<input type=text size=3 name=post1 id=post1 maxlength=3>-
			<input type=text size=3 name=post2 id=post2 maxlength=3> <input
				type=button value=����˻� id=postcode><br> 
			�ּ�: <input type=text size=50 name=address id=address><br> 
			�ڱ�Ұ�:
			<textarea rows=10 cols=75 name=intro id=intro></textarea>
			<br>
			<br> <input type="submit" value="ȸ������"> <input type=reset
				value="���">

		</form>

	</fieldset>
</body>
</html>




