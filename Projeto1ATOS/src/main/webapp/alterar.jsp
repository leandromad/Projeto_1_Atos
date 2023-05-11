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
<title>Listagem de Produtos</title>
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
    		<% for (int i = 0; i < lista.size(); i++) { %>
	        <tr>
	            <td><%= lista.get(i).getId() %></td>
	            <td><%= lista.get(i).getCodigo() %></td>
	            <td>
	                <form method="post" action="alterar">
	                    <input type="hidden" name="id" value="<%= lista.get(i).getId() %>">
	                    <input type="text" name="nome" value="<%= lista.get(i).getNome() %>">
	                    <input type="text" name="categoria" value="<%= lista.get(i).getCategoria() %>">
	                    <input type="text" name="valor" value="<%= lista.get(i).getValor() %>">
	                    <input type="text" name="quantidade" value="<%= lista.get(i).getQuantidade() %>">
	                    <button type="submit">Alterar</button>
	                </form>
	            </td>
	        </tr>
    	<% } %>
		</tbody>
	</table>
	<p>
	<a href="home">Sair</a>
</body>
</html>