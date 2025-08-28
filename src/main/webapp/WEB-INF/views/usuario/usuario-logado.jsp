<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	<title>Página Inicial</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/cabecalho/header-logado.jsp" %>
	
	<form action="pesquisarEstabelecimento" method="get">
    	<input type="text" name="nome" placeholder="Digite o nome..." required>
    	<button type="submit">Buscar</button>
	</form>
	
	<h2>Resultado da pesquisa</h2>
	<c:if test="${not empty resultados}">
	    <ul>
	        <c:forEach var="est" items="${resultados}">
	            <li>
	            	<a href="perfilEstabelecimento?id=${est.id}">
	            		${est.nome} - ${est.tipo} - ${est.email}
	            	</a>
	            </li>
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
			<li>
				<img src="${pageContext.request.contextPath}/imagemFoto?id=${est.id}" alt="Foto de ${est.nome}" style="width:100px; height:100px; object-fit:cover; border-radius:8px;"/><br>
				${est.nome} - ${est.tipo} - ${est.email}
			</li>
		</c:forEach>
	</ul>
</body>
</html>