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
import com.ecodeup.model.usuarios;

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
			usuarios usuario = new usuarios();
			
			try {
				usuario.setEmail(request.getParameter("emailLogin"));
				usuario.setSenha(request.getParameter("senhaLogin"));
				HttpSession session = request.getSession();
				System.out.println(persisDao.autentication(usuario));
				if (persisDao.autentication(usuario)) {
					session.setAttribute("msgErro", "");
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/home.jsp");
					requestDispatcher.forward(request, response);
				} else {
					session.setAttribute("msgErro", "Email ou senha incorreto!");
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
					requestDispatcher.forward(request, response);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}