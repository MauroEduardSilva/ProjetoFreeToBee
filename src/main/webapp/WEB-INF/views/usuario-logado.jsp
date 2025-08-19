<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
	<title>Página Inicial</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/header-logado.jsp" %>
	
	<form action="pesquisarEstabelecimento" method="get">
    	<input type="text" name="nome" placeholder="Digite o nome..." required>
    	<button type="submit">Buscar</button>
	</form>
	
	<h2>Resultado da pesquisa</h2>
	<c:if test="${not empty resultados}">
	    <ul>
	        <c:forEach var="est" items="${resultados}">
	            <li>${est.nome} - ${est.tipo} - ${est.email}</li>
	        </c:forEach>
	    </ul>
	</c:if>
	
	<c:if test="${empty resultados and param.nome != null}">
	    <p>Nenhum estabelecimento encontrado.</p>
	</c:if>

	<h2>Destaque da semana</h2>
	
	
	
	<h2>Cadastro Recentemente</h2>
	<ul>
		<c:forEach var="est" items="${recentes}">
			<li>${est.nome} - ${est.tipo} - ${est.email}</li>
		</c:forEach>
		
	</ul>
</body>
</html>