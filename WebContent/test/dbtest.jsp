<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커넥션 풀 테스트</title>
</head>
<body>
<h3>커넥션 풀아 한번에 되자 제발</h3>
<table border="1">
	<tr>
		<td width="100">아이디</td>
		<td width="100">패스워드</td>
		<td width="100">이름</td>
		<td width="250">생년월일</td>
	</tr>
	<%
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
		
	try{
		Context initCtx=new InitialContext();
		Context envCtx=(Context)initCtx.lookup("java:comp/env");
		DataSource ds=(DataSource)envCtx.lookup("jdbc/blogdt");
		conn=ds.getConnection();
		
		String sql="select id,pw,name,birth from member";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		
		while(rs.next()){
			String id=rs.getString("id");
			String pw=rs.getString("pw");
			String name=rs.getString("name");
			Timestamp birth=rs.getTimestamp("birth");
%>
	<tr>
		<td width="100"><%=id %></td>
		<td width="100"><%=pw %></td>
		<td width="100"><%=name %></td>
		<td width="250"><%=birth.toString() %></td>
	</tr>
<%
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(conn!=null) try{conn.close();}catch(SQLException sqle){}
	}
	%>
</table>
</body>
</html>