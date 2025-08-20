package br.com.cadastro.controller.estabelecimento;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.cadastro.dao.AvaliacaoDAO;
import br.com.cadastro.factory.Conexao;
import br.com.cadastro.model.Avaliacao;

@WebServlet("/avaliarEstabelecimento")
public class AvaliarEstabelecimentoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            int estabelecimentoId = Integer.parseInt(request.getParameter("estabelecimentoId"));
            int nota = Integer.parseInt(request.getParameter("nota"));
            String comentario = request.getParameter("comentario");

            Avaliacao avaliacao = new Avaliacao();
            avaliacao.setEstabelecimentoId(estabelecimentoId);
            avaliacao.setNota(nota);
            avaliacao.setComentario(comentario);

            Connection conn = Conexao.getConexao();
            AvaliacaoDAO dao = new AvaliacaoDAO(conn);
            dao.salvar(avaliacao);

            request.getRequestDispatcher("/WEB-INF/views/estabelecimento/avaliar-estabelecimento.jsp").forward(request, response);;
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Erro ao enviar avaliação.");
        }
    }
}
