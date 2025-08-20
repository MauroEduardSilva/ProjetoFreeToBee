<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Avaliar Estabelecimento</title>
</head>
<body>
    <h2>Avaliar Estabelecimento</h2>

    <form action="avaliarEstabelecimento" method="post">
        <input type="hidden" name="estabelecimentoId" value="${param.id}">

        <div id="avaliacoes">
            <div class="avaliacao">
                <label>A expressão Lorem ipsum em design gráfico e editoração <br>
                é um texto padrão em latim utilizado na produção gráfica para <br>
                preencher os espaços de texto em publicações para testar e 	<br>
                ajustar aspectos visuais antes de utilizar conteúdo real.</label><br>
                <textarea name="comentarios" rows="4" cols="50"></textarea><br>

                <label>Nota:</label><br>
				<c:forEach begin="1" end="5" var="i">
					<input type="radio" name="nota" value="${i}" required> ${i} estrela(s)
				</c:forEach>
            </div>
        </div>
        <button type="submit">Enviar Avaliações</button>
    </form>
</body>
</html>
