<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head id="layout-header">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Livros</title>
		<div class="clearfix container">
			<a href="/" id="logo"> </a>
			<div id="header-content">
				<nav id="main-nav">
					<ul>
						<li>Bem vindo <a href="#">
							<security:authentication property="principal" var="usuario"/>
							${usuario.username }
						</a></li>
					</ul>
					<ul class="clearfix">
						<li><a href="${s:mvcUrl('HC#index').build()}" rel="nofollow">Início</a></li>
						<li><a href="${s:mvcUrl('CCC#itens').build()}" rel="nofollow">Carrinho (${carrinhoCompras.quantidade})</a></li>
						<li><a href="${s:mvcUrl('PC#form').build()}" rel="nofollow">Criar item</a></li>
						<li><a href="<c:url value="/logout" />">Sair</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</head>
	<body>
		<h1>Lista de Produtos</h1>
		
		<div>${sucesso}</div>
		<div>${falha}</div>
		<br/>
		<table>
			<tr>
				<td>Título</td>
				<td>Descrição</td>
<!-- 				<td>Data de Lançamento</td> -->
				<td>Preços</td>
				<td>Pagínas</td>
			</tr>
			<c:forEach items="${produtos}" var="produto">
				<tr>
					<td><a href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build()}">${produto.titulo}</a></td>			
					<td>${produto.descricao}</td>
<%-- 					<td>${produto.dataLancamento}</td> --%>
					<td>${produto.precos}</td>
					<td>${produto.paginas}</td>
				</tr>
			</c:forEach>
			
		</table>
	</body>
</html>