package br.com.cadastro.controller.estabelecimento;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cadastroEstabelecimento")
public class ExibirEstabelecimentoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/views/estabelecimento/cadastrar-estabelecimento.jsp").forward(request, response);
    }
}
