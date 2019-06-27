<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Livros</title>
	</head>
	<body>
		<h1>Bem vindo à Casa do Código</h1>
		<form:form servletRelativeAction="/login" method="post" >
			<div>
				<label>E-mail:</label>
				<input name="username" type="text" class="form-control"/>
			</div>
			<div>
				<label>Senha:</label>
				<input name="password" type="password" class="form-control"/>
			</div>
			<button type="submit">Logar</button>
		</form:form>
	</body>
</html>