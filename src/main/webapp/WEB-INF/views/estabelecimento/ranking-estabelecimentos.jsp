<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Avaliar Estabelecimento</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estabelecimento/avaliar-estabelecimento.css">
</head>
<body>

	<%@ include file="/WEB-INF/views/cabecalho/header-logado.jsp" %>
	
	<div class="container-ranking">
	    <form action="${pageContext.request.contextPath}/pesquisarEstabelecimento" method="get" class="form-busca">
	        <input type="text" name="nome" placeholder="Buscar estabelecimento..." />
	        <button type="submit" class="btn-filtro">
	            <img src="${pageContext.request.contextPath}/img/filtro-icon.png" alt="Filtro" />
	        </button>
	    </form>
	
	    <div class="grid-estabelecimentos">
	        <c:forEach var="est" items="${resultados}">
	            <div class="card-estabelecimento">
	                <div class="imagem-est">
	                    <img src="${pageContext.request.contextPath}/imagemFoto?id=${est.id}" alt="Foto de ${est.nome}" />
	                    <div class="nota-badge">
	                        ${est.notaMedia}
	                    </div>
	                </div>
	                <h4>${est.nome}</h4>
	                <p>${est.qtdAvaliacoes} avaliações</p>
	            </div>
	        </c:forEach>
	    </div>
	</div>

</body>
</html>