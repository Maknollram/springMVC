<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<tags:pageTemplate titulo="Erro">

	<section id="index-section" class="container middle">

		<h2>Erro! Entre em contato com o administrado do sistema.</h2>
		
		<!-- 
			Mensagem: ${exception.mesage}
			<c:forEach items="${exception.stackTrace}" var="stk">
				${stk}
			</c:forEach>
		 -->
		
	</section>

</tags:pageTemplate>