<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Perfil do Estabelecimento</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/usuario/pagina-inicial-logado.css">
</head>
<body>

<c:if test="${not empty estabelecimento}">
	<c:if test="${not empty sessionScope.usuarioLogado}">
    	<%@ include file="/views/cabecalho/header-logado.jsp" %>
	</c:if>
	<div class="container">
	    <h1>${estabelecimento.nome}</h1>
	    <img src="${pageContext.request.contextPath}/imagemFoto?id=${estabelecimento.id}" alt="Foto de ${estabelecimento.nome}" />
	    <p><strong>Tipo:</strong> ${estabelecimento.tipo}</p>
	    <p><strong>Email:</strong> ${estabelecimento.email}</p>
	
	    <c:choose>
	        <c:when test="${not empty estabelecimento.endereco}">
	            <p><strong>Endereço:</strong> ${estabelecimento.endereco}</p>
	        </c:when>
	        <c:otherwise>
	            <p><strong>Endereço:</strong> Não informado</p>
	        </c:otherwise>
	    </c:choose>
	
	    <form action="abrirAvaliacao" method="get">
	        <input type="hidden" name="id" value="${estabelecimento.id}">
	        <button type="submit">Avaliar Estabelecimento</button>
	    </form>
	</div>
</c:if>

<c:if test="${empty estabelecimento}">
    <p>Estabelecimento não encontrado.</p>
</c:if>

</body>
</html>
