<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
 <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
  <div class="header min-width">
    <div class="container">
      <div class="fn-left logo"> <a class="" href="<%=basePath%>invest/recommendShow.do"> <img src="<%=basePath%>images/logo.png"  title=""> </a> </div>
      <ul class="top-nav fn-clear">
        <li > <a href="<%=basePath%>invest/recommendShow.do">首页</a> </li>
        <li> <a href="<%=basePath%>invest/investSel.do" class="">我要投资</a> </li>
        <li> <a href="<%=basePath%>borrowadd.jsp" class="">我要借款</a> </li>
        <li> <a href="${pageContext.request.contextPath}/help.jsp">安全保障</a> </li>
        <li class="top-nav-safe" > <a href="#" onclick="keys();">我的账户</a> </li>
        <li> <a href="<%=basePath %>notice/notlist.do?ids=1">关于我们</a> </li>
      </ul>
    </div>
  </div>
</header>

<script type="text/javascript">
	function keys(){
		var id="${globaluser.uid}";
		if(id!=""){
		window.location.href="<%=basePath %>query.do?id=${globaluser.uid}";
		}else {
			alert("请先登入!");
		window.location.href="<%=basePath%>/login.jsp";
		}
	}

	
</script>
 

</body>
</html>