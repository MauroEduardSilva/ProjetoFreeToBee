<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cabecalho/header-logado.css">

<body>
	<header>
		<nav id="topo-pagina">
			<div class="menu-hamburguer" onclick="abrirMenu()">&#9776;</div>
			
			<div id="logo">
				<img src="${pageContext.request.contextPath}/css/logo-nova.svg">
			</div>
		
			<ul id="menu">
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
			<c:if test="${not empty usuarioLogado}">
    			<div class="user-info">
        			<img class="user-avatar" src="${pageContext.request.contextPath}/imagemUsuario?id=${usuarioLogado.id}" alt="Foto do Usuário">
    			</div>
			</c:if>
		</nav>
	</header>
</body>
