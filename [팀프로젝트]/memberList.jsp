<%@ page contentType="text/html; charset=EUC-KR"%>
<%@page import="java.util.*"%>
<%@page import="ch14.MemberBean"%>
<jsp:useBean id="mMgr" class="ch14.MemberMgr" />
<%
	List<MemberBean> memberList = mMgr.MemberList();
%>
<html>
<head>
<title>회원 목록보기</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<div align="center"><br/><br/>
	<table border="1" cellpadding="2" align="center" width="600">
		<tr align="center" bgcolor="#996600">
			<td colspan="10"><font color="#FFFFFF"><h4>회원 목록</h4></td>
		</tr>
		<tr>
			<td>id</td>
			<td>pwd</td>
			<td>name</td>
			<td>gender</td>
			<td>birthday</td>
			<td>email</td>
			<td>zipcode</td>
			<td>address</td>
			<td>hobby</td>
			<td>job</td>
		</tr>
		<%
			for (int i = 0; i < memberList.size(); i++) {
		%>
		<tr>
			<td><%=memberList.get(i).getId()%></td>
			<td><%=memberList.get(i).getPwd()%></td>
			<td><%=memberList.get(i).getName()%></td>
			<td><%=memberList.get(i).getGender()%></td>
			<td><%=memberList.get(i).getBirthday()%></td>
			<td><%=memberList.get(i).getEmail()%></td>
			<td><%=memberList.get(i).getZipcode()%></td>
			<td><%=memberList.get(i).getAddress()%></td>
			<%
				String hobbys = "";
					String hobby = Arrays.toString(memberList.get(i).getHobby());
					for (int j = 0; j < 5; j++) {
						hobbys += hobby.substring(3 * j + 1, 3 * j + 2);
					}
			%>
			<td><%= hobbys %>
			<td><%=memberList.get(i).getJob()%></td>
		</tr>
		<%
			}
		%>
	</table>
</div>
</body>
</html>