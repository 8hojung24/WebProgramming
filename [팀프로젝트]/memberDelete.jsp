<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	String id = (String) session.getAttribute("idKey");
%>
<html>
<head>
<title>ȸ�� Ż��</title>
<title>Insert title here</title>
<script type="text/javascript">
	function pwdCheck() {
		if (document.pwdFrm.pwd.value == "") {
			alert("��й�ȣ�� �Է��� �ּ���.");
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
					<td colspan="2"><h>���� Ż���Ͻðڽ��ϱ�?</h></td>
				</tr>
				<tr>
					<td colspan="2"><h4>��й�ȣ Ȯ��</h4></td>
				</tr>
				<tr>
					<td>��й�ȣ:</td>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<td colspan="2">
						<div align="right">
							<input type="button" value="Ȯ��" onclick="pwdCheck()">&nbsp;
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