<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	String id = (String) session.getAttribute("idKey");
%>
<html>
<head>
<title>회원 탈퇴</title>
<title>Insert title here</title>
<script type="text/javascript">
	function pwdCheck() {
		if (document.pwdFrm.pwd.value == "") {
			alert("비밀번호를 입력해 주세요.");
			document.pwdFrm.pwd.focus();
			returnl
		}
		document.pwdFrm.submit();
	}
</script>
</head>
<%
	if (id != null) {
%>
<body>
	<div>
		<br /> <br />
		<form name="pwdFrm" method="post" action="memberDeleteProc.jsp">
			<table>
				<tr>
					<td colspan="2"><h>정말 탈퇴하시겠습니까?</h></td>
				</tr>
				<tr>
					<td colspan="2"><h4>비밀번호 확인</h4></td>
				</tr>
				<tr>
					<td>비밀번호:</td>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<td colspan="2">
						<div align="right">
							<input type="button" value="확인" onclick="pwdCheck()">&nbsp;
						</div>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
<%
	} else {
%>
<script>
	location.href = "login.jsp";
</script>
<%
	}
%>
</html>