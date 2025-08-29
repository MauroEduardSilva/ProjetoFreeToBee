<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
</body>
</html>