<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Perfil do Estabelecimento</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/estabelecimento/perfil-estabelecimento.css">
</head>
<body>

<c:if test="${not empty estabelecimento}">
	<c:if test="${not empty sessionScope.usuarioLogado}">
    	<%@ include file="/WEB-INF/views/cabecalho/header-logado.jsp" %>
	</c:if>
	
	<div class="container">
	    
	    <img src="${pageContext.request.contextPath}/imagemFoto?id=${estabelecimento.id}" alt="Foto de ${estabelecimento.nome}" />
	    
	    <div class="inforcao-estabelecimento">
	    
		    <h1>${estabelecimento.nome}</h1>
		    
		    
		    <div class="informacoes">
		    	<p><strong>Endereço:</strong>
	                <c:choose>
	                    <c:when test="${not empty estabelecimento.endereco}">
	                        ${estabelecimento.endereco}
	                    </c:when>
	                    <c:otherwise>
	                        Não informado
	                    </c:otherwise>
	                </c:choose>
            	</p>

	            <p><strong>Telefone:</strong> ${estabelecimento.telefone}</p>
	            <p><strong>Email:</strong> ${estabelecimento.email}</p>
	            <p><strong>Tipo de estabelecimento:</strong> ${estabelecimento.tipo}</p>
	            <p><strong>CNPJ:</strong> ${estabelecimento.CNPJ}</p>
			    
			</div>
			
		    <form action="abrirAvaliacao" method="get">
		        <input type="hidden" name="id" value="${estabelecimento.id}">
		        <button type="submit">Avaliar Estabelecimento</button>
		    </form>
		    
		</div>
	</div>
</c:if>

<c:if test="${empty estabelecimento}">
    <p>Estabelecimento não encontrado.</p>
</c:if>

</body>
</html>
