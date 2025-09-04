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
                    <img src="${pageContext.request.contextPath}/imagens/lorena.jpg" alt="Lorena" class="foto-perfil">
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
                    <img src="${pageContext.request.contextPath}/imagens/mario.jpg" alt="Mário" class="foto-perfil">
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

            <div class="destaque">
                <img src="${pageContext.request.contextPath}/imagens/padaria.jpg" alt="Pastelaria Oscar">
                <div>
                    <strong>Pastelaria Oscar</strong><br>
                    <span>126 avaliações</span>
                </div>
            </div>

            <div class="destaque">
                <img src="${pageContext.request.contextPath}/imagens/mercado.jpg" alt="Mercearia do Doc's">
                <div>
                    <strong>Mercearia do Doc's</strong><br>
                    <span>19 avaliações</span>
                </div>
            </div>

            <a href="#" class="mais-destaques">Ver mais estabelecimentos amigáveis...</a>
        </div>
    </div>

</body>
</html>
