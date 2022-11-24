<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mMgr" class="ch14.MemberMgr" />
<%
	String id = (String) session.getAttribute("idKey");
	String pwd = request.getParameter("pwd");
	String url = "memberDelete.jsp";
	String msg = "비밀번호가 틀렸습니다.";

	boolean result = mMgr.loginMember(id, pwd);
	if (result) {
		
		msg = "회원 탈퇴가 정상적으로 실행되지 않았습니다. 다시 시도해주세요.";
		boolean result2 = mMgr.deleteMember(id);
		
		if(result2){
		session.invalidate();
		msg = "회원 탈퇴가 성공적으로 실행되었습니다.";
		url = "contentWin.jsp";
		}
	}
%>
<script>
	alert("<%=msg%>");	
	location.href="<%=url%>";
</script>