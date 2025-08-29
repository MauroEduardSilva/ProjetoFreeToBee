<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cabecalho/header-nao-logado.css">

<body>
	<header>
		<nav id="topo-pagina">
			<div class="menu-hamburguer" onclick="abrirMenu()">&#9776;</div>
			<ul id="menu">
			    <li class="nav-item"><a href="${pageContext.request.contextPath}/inicio">Inicio</a></li>
			    <li class="nav-item"><a href="${pageContext.request.contextPath}/estabelecimento">Estabelecimento</a></li>
			    <li class="nav-item"><a href="${pageContext.request.contextPath}/ranking">Ranking</a></li>
			</ul>
			<div id="logo">
			    <img src="./css/logo-nova.svg" alt="Logo">
			</div>
		</nav>
	</header>
</body>

<script src="${pageContext.request.contextPath}/js/script.js"></script>