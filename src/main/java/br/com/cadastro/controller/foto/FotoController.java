package br.com.cadastro.controller.foto;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/foto")
public class FotoController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        
        
        long id = Long.parseLong(request.getParameter("id"));
        request.setAttribute("idUsuario", id);
        request.getRequestDispatcher("/WEB-INF/views/foto/foto.jsp").forward(request, response);

    }
}

//Esse servlet é só para encaminhar para o JSP de modo seguro.