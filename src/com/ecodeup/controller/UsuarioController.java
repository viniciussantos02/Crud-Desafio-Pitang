package com.ecodeup.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecodeup.dao.PersisDAO;
import com.ecodeup.model.Usuario;

/**
 * Servlet implementation class UsuarioController
 */
@WebServlet(description = "administracao de peticoes para a tabela de usuario", urlPatterns = { "/usuario" })
public class UsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuarioController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String option = request.getParameter("option");
		if (option.equals("cadastrar")) {
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/cadastrar.jsp");
			requestDispatcher.forward(request, response);
		} else if (option.equals("index")) {
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
			requestDispatcher.forward(request, response);
		} else if (option.equals("home")) {
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/home.jsp");
			requestDispatcher.forward(request, response);
		} else if (option.equals("consultar")) {
			PersisDAO persisDao = new PersisDAO();
			List<Usuario> lista = new ArrayList<>();
			
			try {
				lista = persisDao.arrayUsuarios();
				request.setAttribute("lista", lista);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/consultar.jsp");
				requestDispatcher.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (option.equals("editar")) {
			int id = Integer.parseInt(request.getParameter("id"));
			PersisDAO persisDao = new PersisDAO();
			Usuario u = new Usuario();
			try {
				u = persisDao.getUsuario(id);
				request.setAttribute("usuarios", u);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/editar.jsp");
				requestDispatcher.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (option.equals("deletar")) {
			PersisDAO persisDao = new PersisDAO();
			int id = Integer.parseInt(request.getParameter("id"));
			try {
				persisDao.delete(id);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/deleteSuccess.jsp");
				requestDispatcher.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String option = request.getParameter("option");
		
		//Utilização do metodo cadastrar
		if (option.equals("cadastrar")) {
			PersisDAO persisDao = new PersisDAO();
			Usuario usuario = new Usuario();
			usuario.setNome(request.getParameter("nome"));
			usuario.setEmail(request.getParameter("email"));
			usuario.setSenha(request.getParameter("senha"));
			usuario.setDdd(Integer.parseInt(request.getParameter("ddd")));
			usuario.setNumero(request.getParameter("numero"));
			usuario.setTipo(request.getParameter("tipo"));
			
			try {
				persisDao.include(usuario);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/cadastroSuccess.jsp");
				requestDispatcher.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//Utilização do metodo editar
		} else if (option.equals("editar")) {
			PersisDAO persisDao = new PersisDAO();
			Usuario usuario = new Usuario();
			usuario.setId(Integer.parseInt(request.getParameter("id")));
			usuario.setNome(request.getParameter("nome"));
			usuario.setEmail(request.getParameter("email"));
			usuario.setSenha(request.getParameter("senha"));
			usuario.setDdd(Integer.parseInt(request.getParameter("ddd")));
			usuario.setNumero(request.getParameter("numero"));
			usuario.setTipo(request.getParameter("tipo"));
			
			try {
				persisDao.edit(usuario);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/atualizaSuccess.jsp");
				requestDispatcher.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//Utilização do metodo de autenticação do usuario
		}
		
		//doGet(request, response);
	}

}
