<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cabecalho/header-logado.css">

<body>
	<header>
		<nav id="topo-pagina">
			<div class="menu-hamburguer" onclick="abrirMenu()">&#9776;</div>
		
			<ul id="menu">
				<li class="nav-item">
					<a href="${pageContext.request.contextPath}/inicio">Inicio</a>
				</li>
				<li class="nav-item">
					<a href="${pageContext.request.contextPath}/cadastrarEstabelecimento">Estabelecimento</a>
				</li>
				<li class="nav-item">
					<a href="${pageContext.request.contextPath}/favorito">Favorito</a>
				</li>
				<li class="nav-item">
					<a href="${pageContext.request.contextPath}/Conquista">Conquista</a>
				</li>
				<li class="nav-item">
					<a href="${pageContext.request.contextPath}/ranking">Ranking</a>
				</li>
			</ul>
			
			<div id="logo">
				<img src="${pageContext.request.contextPath}/css/logo-nova.svg">
			</div>
		</nav>
	</header>
</body>
