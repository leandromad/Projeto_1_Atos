<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="com.Model.Produto" %>
    <%@page import="java.util.ArrayList" %>
    
    <%
    	@ SuppressWarnings("unchecked")
    	ArrayList<Produto> lista = (ArrayList<Produto>) request.getAttribute("listaProdutos");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Deletar Produtos</title>
</head>
<body>
	<h1>Lista de Produtos Cadastrados</h1>
	<table>
		<thead>
			<tr>
				<th>Id</th>
				<th>Codigo</th>
				<th>Nome</th>
				<th>Categoria</th>
				<th>Valor</th>
				<th>Quantidade</th>
				<th>Ações</th> <!-- Coluna extra para o botão de exclusão -->
			</tr>
		</thead>

		<tbody>
			<%for(int i=0; i<lista.size(); i++){ %>
				<tr>
					<td><%=lista.get(i).getId() %></td>
					<td><%=lista.get(i).getCodigo() %></td>
					<td><%=lista.get(i).getNome() %></td>
					<td><%=lista.get(i).getCategoria() %></td>
					<td><%=lista.get(i).getValor() %></td>
					<td><%=lista.get(i).getQuantidade() %></td>
					<td>
	                	<form method="post" action="deletar">
    						<input type="hidden" name="id" value="<%= lista.get(i).getId() %>">
    						<button type="submit">Excluir</button>
						</form>
            		</td>
				</tr>
			<%} %>
		</tbody>
	</table>
	<p>
	<a href="home">Sair</a>
</body>
</html>