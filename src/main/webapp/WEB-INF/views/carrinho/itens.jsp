<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<tags:pageTemplate titulo="Seu carrinho de compras">
	
	<jsp:attribute name="extraScripts">
	
		<script>
			function chamada(){
				console.log("Hello World")
			}
		</script>
	
	</jsp:attribute>
	
	<jsp:body>
	<section class="container middle">
		<h2 id="cart-title">Seu carrinho de compras</h2>
		<table id="cart-table">
			<colgroup>
				<col class="item-col" />
				<col class="item-price-col" />
				<col class="item-quantity-col" />
				<col class="line-price-col" />
				<col class="delete-col" />
			</colgroup>
			<thead>
				<tr>
					<th class="cart-img-col"></th>
					<th width="65%">Item</th>
					<th width="10%">Preço</th>
					<th width="10%">Quantidade</th>
					<th width="10%">Total</th>
					<th width="5%"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${carrinhoCompras.itens}" var="item">
					<tr>
						<td class="cart-img-col"><img src="http://cdn.shopify.com/s/files/1/0155/7645/products/css-eficiente-featured_large.png?v=1435245145"
							width="71px" height="100px" />
						</td>
						<td class="item-title">${item.produto.titulo}</td>
						<td class="numeric-cell" style="text-align: center;">${item.preco}</td>
						<td class="quantity-input-cell">
								<input type="number" min="0" id="quantidade" name="quantidade" value="${carrinhoCompras.getQuantidade(item)}" />
						</td>
						<td class="numeric-cell" style="text-align: center;">${carrinhoCompras.getTotal(item)}</td>
						<td class="remove-item">
							<form:form action="${s:mvcUrl('CCC#remover').arg(0, item.produto.id).arg(1, item.tipoPreco).build()}" method="post">
								<input type="image" src="${contextPath }/resources/imagens/excluir.png" 
									alt="Excluir" title="Excluir" />
							</form:form>	
						</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="3">
					<form:form action="${s:mvcUrl('PC#finalizar').build()}" method="post">
						<input type="submit" class="checkout" name="checkout" id="checkout" value="Finalizar compra" /></td>
					</form:form>
					<td class="numeric-cell">Total: ${carrinhoCompras.total}</td>
					<td></td>
				</tr>
			</tfoot>
		</table>
	</section>
	
	</jsp:body>
	
</tags:pageTemplate>
