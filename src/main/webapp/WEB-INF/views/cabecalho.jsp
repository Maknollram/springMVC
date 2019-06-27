<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

			<div class="clearfix container">
				<a href="/" id="logo"> </a>
				<div id="header-content">
					<nav id="main-nav">
						<security:authorize access="isAuthenticated()">
							<h5>
								<fmt:message key="menu.bemVindo"/>
								<security:authentication property="principal" var="usuario"/>
								<a href="#">${usuario.username }</a>
							</h5>
						</security:authorize>
						<ul class="clearfix">
							<li><a href="${s:mvcUrl('HC#index').build()}" rel="nofollow">
								<fmt:message key="menu.inicio"/>
							</a></li>
<%-- 							<li><a href="${s:mvcUrl('CCC#itens').build()}" rel="nofollow">Carrinho ()</a></li> --%>
							<li><a href="${s:mvcUrl('CCC#itens').build()}" rel="nofollow">
<!-- 								<fmt:message key="menu.carrinho"> -->
<%-- 									<fmt:param value="${carrinhoCompras.quantidade}"/> --%>
<!-- 								</fmt:message> -->
								<s:message code="menu.carrinho" arguments="${carrinhoCompras.quantidade}"/>
							</a></li> 
						</ul>
						<ul class="clearfix">
							
								<li><a href="${s:mvcUrl('PC#listar').build()}" rel="nofollow">
									<fmt:message key="menu.lista"/>
								</a></li>
							<security:authorize access="isAuthenticated()">
								<li><a href="${s:mvcUrl('PC#form').build()}" rel="nofollow">
									<fmt:message key="menu.criar"/>
								</a></li>
								<li><a href="<c:url value="/logout" />">
									<fmt:message key="menu.sair"/>
								</a></li>
							</security:authorize>
						</ul>
					</nav>
				</div>
			</div>
