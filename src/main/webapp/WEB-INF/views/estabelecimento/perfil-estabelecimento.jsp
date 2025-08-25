<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	<title>Perfil do estabelecimento</title>
</head>
<body>
	<h2>${estabelecimento.nome}</h2>
	
	<p>Tipo: ${estabelecimento.tipo}</p>
	<p>Email: ${estabelecimento.email}</p>
	<c:if test="${not empty estabelecimento.endereco}">
    	<p>Endereço: ${estabelecimento.endereco.logradouro}, ${estabelecimento.endereco.numero}</p>
	</c:if>
	
	<form action="abrirAvaliacao" method="get">
    	<input type="hidden" name="id" value="${estabelecimento.id}">
    	<button type="submit">Avaliar Estabelecimento</button>
	</form>
	
	
</body>
</html>