<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mMgr" class="ch14.MemberMgr" />
<%
	String id = (String) session.getAttribute("idKey");
	String pwd = request.getParameter("pwd");
	String url = "memberDelete.jsp";
	String msg = "��й�ȣ�� Ʋ�Ƚ��ϴ�.";

	boolean result = mMgr.loginMember(id, pwd);
	if (result) {
		
		msg = "ȸ�� Ż�� ���������� ������� �ʾҽ��ϴ�. �ٽ� �õ����ּ���.";
		boolean result2 = mMgr.deleteMember(id);
		
		if(result2){
		session.invalidate();
		msg = "ȸ�� Ż�� ���������� ����Ǿ����ϴ�.";
		url = "contentWin.jsp";
		}
	}
%>
<script>
	alert("<%=msg%>");	
	location.href="<%=url%>";
</script>