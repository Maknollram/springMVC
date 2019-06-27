<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

			<div class="clearfix container">
				<a href="/" id="logo"> </a>
				<div id="header-content">
					<nav id="main-nav">
						<ul class="clearfix">
							<li><a href="${s:mvcUrl('HC#index').build()}" rel="nofollow">
								<fmt:message key="menu.inicio"/>
							</a></li>
								<s:message code="menu.carrinho" arguments="${carrinhoCompras.quantidade}"/>
							</a></li> 
						</ul>
						<ul class="clearfix">
							<security:authorize access="isAuthenticated()">
								<li><a href="${s:mvcUrl('PC#listar').build()}" rel="nofollow">
									<fmt:message key="menu.lista"/>
								</a></li>
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