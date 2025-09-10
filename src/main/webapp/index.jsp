<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pagina/pagina-inicial.css">
    <title>Cadastro de Usuário</title>
</head>
<body>
  <div class="tela">
    <%@ include file="/WEB-INF/views/cabecalho/header.jsp" %>
    
    <main>
        <section class="hero">
            <p>Em busca de estabelecimentos <span class="destaque">amigáveis?</span> Descubra, avalie e compartilhe locais que respeitam e acolhem a <span class="destaque">diversidade</span>.</p>
        </section>

        <section class="destaques">
            <h2>Estabelecimentos <span class="destaque">destaques</span></h2>
            <div class="cards">
                <c:forEach var="est" items="${recentes}">
                    <div class="card">
                        <a href="${pageContext.request.contextPath}/perfilEstabelecimento?id=${est.id}">
                            <img src="${pageContext.request.contextPath}/imagemFoto?id=${est.id}" alt="Foto de ${est.nome}">
                        </a>
                    </div>
                </c:forEach>
            </div>
        </section>
        
        <section class="depoimentos">
		    <h2>Depoimentos da <span class="destaque">comunidade</span></h2>
		    <div class="depoimentos-container">
		        <div class="depoimento">
		            <img src="img/images1.jpg" alt="Foto de Rafael">
		            <p><strong>@Rafael</strong> ⭐⭐⭐⭐⭐</p>
		            <p>Fui com meu namorado e nos sentimos totalmente à vontade. Funcionários respeitosos e ambiente seguro. Recomendo muito!</p>
		        </div>
		        <div class="depoimento">
		            <img src="img/images2.jpg" alt="Foto de Lucas">
		            <p><strong>@Lucas T.</strong> ⭐⭐⭐⭐⭐</p>
		            <p>Sou homem trans e nunca tive problemas aqui. Eles usam meu nome social corretamente e me tratam com dignidade. Um exemplo pra outros lugares!</p>
		        </div>
		        <div class="depoimento">
		            <img src="img/images3.jpg" alt="Foto de Ana Beatriz">
		            <p><strong>@Ana Beatriz</strong> ⭐⭐⭐⭐⭐</p>
		            <p>Me surpreendi positivamente. Mesmo em uma cidade pequena, o pessoal daqui mostra que respeito e acolhimento não têm tamanho.</p>
		        </div>
		        <div class="depoimento">
		            <img src="img/images4.jpg" alt="Foto de Marcela G.">
		            <p><strong>@Marcela G.</strong> ⭐⭐⭐⭐⭐</p>
		            <p>Sou uma mulher trans e frequento o estabelecimento há mais de um ano. Nunca me senti discriminada ou invisibilizada. Apoio total!</p>
		        </div>
		    </div>
		</section>
		
        <section class="cta">
            <p>Já é uma abelha? <br> Conecte à <span class="destaque">Colmeia</span> que acolhe e compartilha.</p>
            <a class="botao" href="login">Fazer login</a>
        </section>

        <footer>
		    <div class="footer-content">
		        <div class="footer-logo">
		            <img src="${pageContext.request.contextPath}/css/logo-nova.svg" alt="Logo da FreetoBee">
		        </div>
		        <div class="footer-links">
		            <div>
		                <strong>FreetoBee</strong><br>
		                <a href="#">Sobre nós</a><br>
		                <a href="#">Página inicial</a>
		            </div>
		            <div>
		                <strong>Atendimento</strong><br>
		                <a href="#">Contato</a><br>
		                <a href="#">Termos de uso</a>
		            </div>
		            <div>
		                <strong>Redes Sociais</strong><br>
		                <a href="#">LinkedIn</a><br>
		                <a href="#">GitHub</a>
		            </div>
		        </div>
		    </div>
		    <hr class="footer-divider">
		    <p class="copyright">2025 © Todos os direitos reservados</p>
		</footer>

    </main>
  </div>
</body>

</html>
