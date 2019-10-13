package com.ecodeup.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UsuarioLogoutController
 */
@WebServlet(description = "administracao de peticoes para a tabela de usuario", urlPatterns = { "/logout" })
public class UsuarioLogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuarioLogoutController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String option = request.getParameter("option");
		HttpSession session = request.getSession(false);
		
		if (option.equals("sair")) {
			if (session != null) {
			    session.invalidate();
			    System.out.println("finalizada");
			    response.sendRedirect("index.jsp");
			}
		}
	}

}
