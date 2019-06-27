<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<tags:pageTemplate titulo="Livros de Programa��o">

	<section id="index-section" class="container middle">

		<ul class="clearfix book-collection">

			<c:forEach items="${produtos}" var="produto">
			
			<a href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build()}" class="block clearfix">
					<h2 class="product-title">${produto.titulo}</h2>
					<img width="143"
						height="202"
						src="https://cdn.shopify.com/s/files/1/0155/7645/products/java8-featured_large.png?v=1411490181"
						alt="Java 8 Pr�tico"
						title="Java 8 Pr�tico"/>
					<small class="buy-button">Compre</small>
			</a>
			
			</c:forEach>
			
		</ul>

	</section>

	
</tags:pageTemplate>

