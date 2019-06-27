<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Livros</title>
	</head>
	<body>
		<h1>Seja Bem Vindo !</h1>
		<h2><a href="${s:mvcUrl('PC#listar').build()}" rel="nofollow">Clique aqui</a> para ver nossos livros.</h2>
	</body>
</html>