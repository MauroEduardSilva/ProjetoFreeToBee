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

<div class="form-container">
    <form action="avaliarEstabelecimento" method="post" class="avaliar-form">
        <input type="hidden" name="estabelecimentoId" value="${param.id}">

        <div class="avaliacao">
        
        	<label class="avaliacao-texto">
               Formulário desenvolvido a partir do artigo“Tackling Discrimination against 
               Lesbian, Gay, Bi, Trans, & Intersex People: Standards of Conduct for Business -  United Nations”
            </label><br><br>
            <label class="avaliacao-texto">
               1 - O estabelecimento possui políticas que são comunicadas de forma explícita e clara
                 para cumprir com o dever de respeitar os direitos humanos, incluindo expressamente
                 as pessoas da comunidade LGBTQIAPN+?
            </label>
            <div class="nota-estrelinha">
                <c:forEach begin="1" end="5" var="i">
    				<input type="radio" id="star-um-${i}" name="nota-um" value="${i}" required />
    				<label for="star-um-${i}" title="${i} estrela(s)">&#9733;</label>
				</c:forEach>
            </div><br>
            
            
             <label class="avaliacao-texto">
               2 - Os estabelecimentos possuem um canal seguro, acessível e confidencial para denúncias 
               de discriminação ou assédio, com proteção ao denunciante?
            </label>
            <div class="nota-estrelinha">
                <c:forEach begin="1" end="5" var="i">
    				<input type="radio" id="star-dois-${i}" name="nota-dois" value="${i}" required />
    				<label for="star-dois-${i}" title="${i} estrela(s)">&#9733;</label>
				</c:forEach>
            </div><br>
            
            
            <label class="avaliacao-texto">
               3 - Eventuais situações de discriminação e assédio, foram remediadas de forma satisfatória
                pelo estabelecimento? (Caso aplicado)
            </label>
            <div class="nota-estrelinha">
                <c:forEach begin="1" end="5" var="i">
    				<input type="radio" id="star-tres-${i}" name="nota-tres" value="${i}" required />
    				<label for="star-tres-${i}" title="${i} estrela(s)">&#9733;</label>
				</c:forEach>
            </div><br>
            
            <label class="avaliacao-texto">
               4 - O estabelecimento possui procedimentos claros e ativos para prevenir, combater e eliminar 
               casos de discriminação, assédio ou violência, contra colaboradores e clientes?
            </label>
            <div class="nota-estrelinha">
                <c:forEach begin="1" end="5" var="i">
    				<input type="radio" id="star-quatro-${i}" name="nota-quatro" value="${i}" required />
    				<label for="star-quatro-${i}" title="${i} estrela(s)">&#9733;</label>
				</c:forEach>
            </div><br>
            
            <label class="avaliacao-texto">
               5 - Os colaboradores aparentam receber treinamento para garantir que estejam cientes de
                sua responsabilidade de respeitar os direitos das pessoas LGBTQIAPN+?
            </label>
            <div class="nota-estrelinha">
                <c:forEach begin="1" end="5" var="i">
    				<input type="radio" id="star-cinco-${i}" name="nota-cinco" value="${i}" required />
    				<label for="star-cinco-${i}" title="${i} estrela(s)">&#9733;</label>
				</c:forEach>
            </div><br>
            
            <label class="avaliacao-texto">
               6 - Os colaboradores do estabelecimento fazem uso de linguagem inclusiva, garantindo que
                utilizem o nome, pronomes e termos corretos ao se referir aos clientes e colegas de trabalho?
            </label>
            <div class="nota-estrelinha">
                <c:forEach begin="1" end="5" var="i">
    				<input type="radio" id="star-seis-${i}" name="nota-seis" value="${i}" required />
    				<label for="star-seis-${i}" title="${i} estrela(s)">&#9733;</label>
				</c:forEach>
            </div><br>
            
            <label class="avaliacao-texto">
               7 - O estabelecimento oferece banheiros unissex e garante o direito de pessoas trans 
               usarem o banheiro de acordo com sua identidade de gênero?
            </label>
            <div class="nota-estrelinha">
                <c:forEach begin="1" end="5" var="i">
    				<input type="radio" id="star-sete-${i}" name="nota-sete" value="${i}" required />
    				<label for="star-sete-${i}" title="${i} estrela(s)">&#9733;</label>
				</c:forEach>
            </div><br>
            
            <label class="avaliacao-texto">
               8 - O estabelecimento respeita a privacidade de seus clientes e colaboradores, sem solicitar
                de forma incisiva, informações pessoais que não lhe dizem respeito, como por exemplo 
                orientação sexual, identidade de gênero, etc. considerando a área de atuação e tipo 
                do estabelecimento?
            </label>
            <div class="nota-estrelinha">
                <c:forEach begin="1" end="5" var="i">
    				<input type="radio" id="star-oito-${i}" name="nota-oito" value="${i}" required />
    				<label for="star-oito-${i}" title="${i} estrela(s)">&#9733;</label>
				</c:forEach>
            </div><br>
            
            <label class="avaliacao-texto">
               9 -O estabelecimento apresenta em sua estrutura, formas claras de apoio a comunidade
                LGBTQIAPN+, como por exemplo, bandeiras ou ilustrações que representem a 
                comunidade de forma positiva?
            </label>
            <div class="nota-estrelinha">
                <c:forEach begin="1" end="5" var="i">
    				<input type="radio" id="star-nove-${i}" name="nota-nove" value="${i}" required />
    				<label for="star-nove-${i}" title="${i} estrela(s)">&#9733;</label>
				</c:forEach>
            </div><br>
            
            <label class="avaliacao-texto">
               10 - O estabelecimento apresenta uma diversidade ampla de colaboradores ou 
               prestadores de serviço, incluindo diversidade dentro da própria comunidade LGBTQIAPN+?
            </label>
            <div class="nota-estrelinha">
                <c:forEach begin="1" end="5" var="i">
    				<input type="radio" id="star-dez-${i}" name="nota-dez" value="${i}" required />
    				<label for="star-dez-${i}" title="${i} estrela(s)">&#9733;</label>
				</c:forEach>
            </div><br>

            <button type="submit" class="enviar-btn">Enviar Avaliações</button>
        </div>
    </form>
</div>
</body>
</html>
