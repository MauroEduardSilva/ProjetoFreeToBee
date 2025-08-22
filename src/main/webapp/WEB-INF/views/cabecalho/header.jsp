<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/header-nao-logado.css">


<header class="topo-pagina">
	<div class="menu-hamburguer" onclick="abrirMenu()">&#9776</div>
	
	<div class="logo-freetobee">
		<span class="bold">FreeTo</span><span class="highlight">Bee!</span>
	</div>
</header>

<nav id="menu" class="menu">
	<a href="${pageContext.request.contextPath}/inicio">Inicio</a><br>
	<a href="${pageContext.request.contextPath}/abrirCadastroEstabelecimento">Estabelecimento</a><br>
	<a href="${pageContext.request.contextPath}/ranking">Ranking</a><br>
</nav>

<script src="${pageContext.request.contextPath}/js/script.js"></script>