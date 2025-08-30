<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/usuario/pagina-inicial-logado.css">
	<title>Página Inicial</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/cabecalho/header-logado.jsp" %>
	
	<div class="container">
		<h2>Destaque da semana</h2>
		
		
		
		<h2>Cadastro Recentemente</h2>
		
		<ul>
			<c:forEach var="est" items="${recentes}">
				<li>
					<a href="${pageContext.request.contextPath}/perfilEstabelecimento?id=${est.id}">
						<div class="container-img">
							<div class="imagem-estabelecimento">
								<img src="${pageContext.request.contextPath}/imagemFoto?id=${est.id}" alt="Foto de ${est.nome}"/>
							</div>
						</div>
					</a>
				</li>
			</c:forEach>
		</ul>
	</div>
</body>
</html>