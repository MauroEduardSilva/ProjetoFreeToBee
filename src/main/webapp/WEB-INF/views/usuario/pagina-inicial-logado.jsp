<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>O que há de novo?</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/usuario/pagina-inicial-usuario-logado.css">
</head>
<body>
    <%@ include file="/WEB-INF/views/cabecalho/header-logado.jsp" %>

    <div class="container">
        <div class="novidades">
            <h2>O que há de <span class="destaque-amarelo">novo?</span></h2>
            
            <div class="comentario">
                <div class="perfil">
                    <img src="${pageContext.request.contextPath}/img/images2.jpg" alt="Lorena" class="foto-perfil">
                    <div>
                        <strong>Lorena Maschio</strong><br>
                        <span class="usuario">@lorena</span>
                    </div>
                </div>
                <span class="tempo">há 5h</span>
                <div class="estrelas">★★★★★</div>
                <p class="texto-comentario">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                </p>
            </div>

            <div class="comentario">
                <div class="perfil">
                    <img src="${pageContext.request.contextPath}/img/images4.jpg" alt="Mário" class="foto-perfil">
                    <div>
                        <strong>Mário</strong><br>
                        <span class="usuario">@bratmario</span>
                    </div>
                </div>
                <span class="tempo">há 9h</span>
                <div class="estrelas">★★★★★</div>
                <p class="texto-comentario">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                </p>
            </div>
        </div>

        <div class="destaques-semana">
            <h3>Destaques da semana</h3>

            <section class="destaques">
	            <div class="cards">
	            
	            	
			        <c:forEach var="est" items="${recentes}">
					    <div class="destaque">
					        <a href="${pageContext.request.contextPath}/perfilEstabelecimento?id=${est.id}">
					            <img src="${pageContext.request.contextPath}/imagemFoto?id=${est.id}" alt="Foto de ${est.nome}" />
					        </a>
					    </div>
					</c:forEach>

					
	            </div>
	        </section>

            <a href="${pageContext.request.contextPath}/ranking-estabelecimentos" class="mais-destaques">Ver mais estabelecimentos amigáveis...</a>


        </div>
    </div>

</body>
</html>
