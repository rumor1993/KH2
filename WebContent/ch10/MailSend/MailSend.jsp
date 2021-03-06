<%-- 보내는 사람은 smtp 서버 주소를 설정한 네이버의 
		"아이디@naver.com" 으로 합니다. --%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.util.*" %>
<%-- 자바 메일 API를 사용하기 위해 관련 패키지를 import합니다 --%>
<%@ page import = "javax.activation.*" %>
<%@ page import = "javax.mail.*" %>
<%@ page import = "javax.mail.internet.*" %>

<%
	request.setCharacterEncoding("euc-kr");
	String sender = request.getParameter("sender");
	String receiver = request.getParameter("receiver");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	
	// SMTP 서버 주소를 지정합니다.
	String server = "smtp.naver.com";
	
	try{
		// 서버 정보를 Properties 객체에 저장합니다.
		Properties properties = new Properties();
		
		// SMTP 서버 정보 설정
		// 네이버일 경우 smtp.naver.com
		properties.put("mail.smtp.host", server);
		
		// 저장한 Properties 객체의 값으로 세션의 인스턴스를 생성합니다.
		// public static Session getDefaultInstance(Properties)
		Session s = Session.getDefaultInstance(properties);
		
		// 보내는 메일과 받는 주소를 설정합니다.
		Address sender_address=new InternetAddress(sender);
		Address receiver_address=new InternetAddress(receiver);
		
		// 메일을 보내기 위한 정보를 입력하기 위해 Massage 객체를 생성하니다.
		Message message = new MimeMessage(s);
		
		// 보내는 메일의 내용이 한글일 경우 깨지지 않도록 content-type을 지정합니다. 아주 오류 투성이구만?^^
		message.setHeader("content-type","text/html;charset=euc-kr");
		
		// 보내는 메일 주소 정보를 설정합니다^ㅅ^
		message.setFrom(sender_address);
		
		// 받는 메일 주소 정보를 설정합니닭
		// Message.RecipientType는 Message 클래스에서 허용하는
		// 수신자 유형을 정의합니다!!
		// Message.RecipientType.TO : 받는 사람을 의미합니다?
		
		message.addRecipient(Message.RecipientType.TO, receiver_address);
		
		// 제목 정보를 설정합니다>_<
		message.setSubject(subject);
		
		// 내용의 정보를 설정합니다ㅎㅅㅎ
		message.setContent(content,"text/html;charset=euc-kr");
		
		// 보내는 날짜를 설정합니다.
		message.setSentDate(new java.util.Date());
		
		// public Transport getTransport(String protocol)
		//					throws NoSuchProviderException
		// 지정된 프로토콜(smtp)을 구현하는 Transport 객체를 가져옵니다.
		// 메일을 전송하는 클래스입니다.
		
		Transport transport = s.getTransport("smtp");
		
		// 첫번째 인자는 연결할 호스트 입니다.
		
		
		// 첫번째 인자는 연결할 호스트 입니다.
		// 두번째 인자는 아이디, 세번째 인자는 비밀번호를 의미합니다.
		transport.connect(server,"rumor1993","!so46821300");
		
		// getAllRecipients() : 메세지의 모든 수신자 주소를 가져옵니다.
		// 지정한 주소 목록으로 메세지를 보냅니다.
		transport.sendMessage(message,message.getAllRecipients());
		
		// 연결을 종료합니다.
		transport.close();
		
		out.println("<h3>메일이 정상적으로 전송 되었습니다. </h3>");
	}catch(Exception e){
		out.println("SMPT 서버가 잘못 설정되었거나 , 서비스에 문제가 있습니다.");
		e.printStackTrace();
		
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

</body>
</html>