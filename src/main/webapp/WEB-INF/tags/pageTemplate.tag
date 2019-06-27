<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ attribute name="titulo" required="true"%>
<%@ attribute name="bodyClass" required="false"%>
<%@ attribute name="extraScripts" fragment="true"%>

<c:url value="/resources/css" var="contextPath" />

<!DOCTYPE html>
<html>
	<head id="layout-header">
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		
		<link rel="icon" href="//cdn.shopify.com/s/files/1/0155/7645/t/177/assets/favicon.ico?11981592617154272979" type="image/ico" />
		<link href="https://plus.googlecom/108540024862647200608" rel="publisher" />
		<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' />
		<link href="${contextPath}/cssbase-min.css" rel="stylesheet" type="text/css" media="all" />
		<link href="${contextPath}/fonts.css" rel="stylesheet" type="text/css" media="all" />
		<link href="${contextPath}/fontello-ie7.css" rel="stylesheet" type="text/css" media="all" />
		<link href="${contextPath}/fontello-embedded.css" rel="stylesheet" type="text/css" media="all" />
		<link href="${contextPath}/fontello.css" rel="stylesheet" type="text/css" media="all" />
		<link href="${contextPath}/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="${contextPath}/layout-colors.css" rel="stylesheet" type="text/css" media="all" />
		<link href="${contextPath}/responsive-style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="${contextPath}/guia-do-programador-style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="${contextPath}/produtos.css" rel="stylesheet" type="text/css" media="all" />

		<title>${titulo} - Casa do Código</title>
		
	</head>
				
	<body class="${bodyClass}">
		
		<%@ include file="/WEB-INF/views/cabecalho.jsp" %>
		
		<jsp:doBody />
		
		<jsp:invoke fragment="extraScripts"></jsp:invoke>
		
		<%@ include file="/WEB-INF/views/rodape.jsp" %>
	
	</body>
	
</html>