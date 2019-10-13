package com.ecodeup.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ecodeup.dao.PersisDAO;
import com.ecodeup.model.Usuario;

/**
 * Servlet implementation class UsuarioLoginController
 */
@WebServlet(description = "administracao de peticoes para a tabela de usuario", urlPatterns = { "/login" })
public class UsuarioLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuarioLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String option = request.getParameter("option");
		
		if (option.equals("logar")) {
			PersisDAO persisDao = new PersisDAO();
			Usuario usuario = new Usuario();
			
			try {
				HttpSession session = request.getSession();
				usuario.setEmail(request.getParameter("emailLogin"));
				usuario.setSenha(request.getParameter("senhaLogin"));
				System.out.println(persisDao.authentication(usuario));
				if (persisDao.authentication(usuario)) {
					session.setAttribute("usuario", usuario);
					session.setAttribute("msgErro", "");
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/home.jsp");
					requestDispatcher.forward(request, response);
				} else {
					session.setAttribute("msgErro", "Email ou Senha incorretos!");
					response.sendRedirect("index.jsp");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
