<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Livros</title>
		<div class="clearfix container">
			<a href="/" id="logo"> </a>
			<div id="header-content">
				<nav id="main-nav">
					<ul class="clearfix">
						<li><a href="${s:mvcUrl('HC#index').build()}" rel="nofollow">Início</a></li>
						<li><a href="${s:mvcUrl('CCC#itens').build()}" rel="nofollow">Carrinho (${carrinhoCompras.quantidade})</a></li>
						<li><a href="<c:url value="/logout" />">Sair</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</head>
	<body>
		<form:form action="${s:mvcUrl('PC#gravar').build()}" method="post" commandName="produto" enctype="multipart/form-data">
			<div>
				<label>Título:</label>
				<form:input path="titulo"/>
				<form:errors path="titulo"/>
			</div>
			<div>
				<label>Descrição:</label>
				<form:textarea rows="10" cols="10" path="descricao"/>
				<form:errors path="descricao"/>
			</div>
			<div>
				<label>Páginas:</label>
				<form:input path="paginas"/>
				<form:errors path="paginas"/>
			</div>
			<div>
				<label>Data de lançamento:</label>
				<form:input path="dataLancamento"/>
				<form:errors path="dataLancamento"/>
			</div>
			<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
<%-- 				<% System.out.println( "tipo = " + pageContext.findAttribute("tipoPreco") ); %> --%>
				<div>
					<label>${tipoPreco}</label>
					<form:input path="precos[${status.index}].valor"/>
					<form:hidden path="precos[${status.index}].tipo" value="${tipoPreco}"/>
				</div>
			</c:forEach>
<!-- 			<div> -->
<!-- 				<label>Sumário</label> -->
<!-- 				<input name="sumario" type="file"/> -->
<!-- 			</div> -->
			<button type="submit">Cadastrar</button>
		</form:form>
	</body>
</html>