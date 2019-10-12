package com.ecodeup.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ecodeup.conection.Conection;
import com.ecodeup.model.usuarios;

public class PersisDAO {
	private Connection connection;
	private PreparedStatement statement;
	private boolean estadoOperacao;
	
	//Inserir usuário no banco
	public boolean include(usuarios usuarios) throws SQLException {
		String sql = null;
		estadoOperacao = false;
		connection = obterConnection();
		
		try {
			connection.setAutoCommit(false);
			//Cria a Query SQL para alimentar o banco de dados
			sql = "INSERT INTO usuario (id, nome, email, senha, ddd, numero, tipo) VALUES(?, ?, ?, ?, ?, ?, ?)";
			statement = connection.prepareStatement(sql);
			statement.setString(1, null);
			statement.setString(2, usuarios.getNome());
			statement.setString(3, usuarios.getEmail());
			statement.setString(4, usuarios.getSenha());
			statement.setInt(5, usuarios.getDdd());
			statement.setString(6, usuarios.getNumero());
			statement.setString(7, usuarios.getTipo());
			
			estadoOperacao = statement.executeUpdate() > 0;
			connection.commit();
			statement.close();
			connection.close();
		} catch (SQLException e) {
			connection.rollback();
			e.printStackTrace();
		}
		
		return estadoOperacao;
	}
	
	//Editar usuário do banco
	public boolean edit(usuarios usuarios) throws SQLException {
		String sql = null;
		estadoOperacao = false;
		connection = obterConnection();
		
		try {
			connection.setAutoCommit(false);
			//Cria a Query SQL para atualizar o banco de dados de acordo com o id escolhido
			sql = "UPDATE usuario SET nome = ?, email = ?, senha = ?, ddd = ?, numero = ?, tipo = ? WHERE id = ?";
			statement = connection.prepareStatement(sql);
			statement.setString(1, usuarios.getNome());
			statement.setString(2, usuarios.getEmail());
			statement.setString(3, usuarios.getSenha());
			statement.setInt(4, usuarios.getDdd());
			statement.setString(5, usuarios.getNumero());
			statement.setString(6, usuarios.getTipo());
			statement.setInt(7, usuarios.getId());
			
			estadoOperacao = statement.executeUpdate() > 0;
			connection.commit();
			statement.close();
			connection.close();
		} catch (SQLException e){
			connection.rollback();
			e.printStackTrace();
		}
		return estadoOperacao;
	}
	
	//Deletar usuário do banco
	public boolean delete(int idUsuario) throws SQLException {
		String sql = null;
		estadoOperacao = false;
		connection = obterConnection();
		
		try {
			connection.setAutoCommit(false);
			//Cria a Query SQL para deletar um usuario através do id escolhido
			sql = "DELETE FROM usuario WHERE id = ?";
			statement = connection.prepareStatement(sql);
			statement.setInt(1, idUsuario);
			
			estadoOperacao = statement.executeUpdate() > 0;
			connection.commit();
			statement.close();
			connection.close();
		} catch (SQLException e){
			connection.rollback();
			e.printStackTrace();
		}
		return estadoOperacao;
	}
	
	//Lista todos usuários do banco
	public List<usuarios> arrayUsuarios() throws SQLException {
		ResultSet resultSet = null;
		List<usuarios> arrayUsuarios = new ArrayList<>();
		String sql = null;
		estadoOperacao = false;
		connection = obterConnection();
		
		try {
			sql = "SELECT * FROM usuario";
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				usuarios u = new usuarios();
				u.setId(resultSet.getInt(1));
				u.setNome(resultSet.getString(2));
				u.setEmail(resultSet.getString(3));
				u.setSenha(resultSet.getNString(4));
				u.setDdd(resultSet.getInt(5));
				u.setNumero(resultSet.getString(6));
				u.setTipo(resultSet.getString(7));
				arrayUsuarios.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return arrayUsuarios;
	}
	
	//Consulta um usuário como o id informado
	public usuarios getUsuario(int idUsuario) throws SQLException {
		ResultSet resultSet = null;
		usuarios u = new usuarios();
		String sql = null;
		estadoOperacao = false;
		connection = obterConnection();
		
		try {
			sql = "SELECT * FROM usuario WHERE id = ?";
			statement = connection.prepareStatement(sql);
			statement.setInt(1, idUsuario);
			resultSet = statement.executeQuery();
			if (resultSet.next()) {
				u.setId(resultSet.getInt(1));
				u.setNome(resultSet.getString(2));
				u.setEmail(resultSet.getString(3));
				u.setSenha(resultSet.getNString(4));
				u.setDdd(resultSet.getInt(5));
				u.setNumero(resultSet.getString(6));
				u.setTipo(resultSet.getString(7));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return u;
	}
	
	public boolean autentication(usuarios usuario) throws SQLException {
		statement = null;
		ResultSet resultSet = null;
		String sql = null;
		connection = obterConnection();
		
		try {
			sql = "SELECT * FROM usuario WHERE email = ? AND senha = ?";
			statement = connection.prepareStatement(sql);
			statement.setString(1, usuario.getEmail());
			statement.setString(2, usuario.getSenha());
			resultSet = statement.executeQuery();
			
			if(resultSet.absolute(1)) {
				return true;
			}
			statement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	//Obter conexão com o banco
	private Connection obterConnection() throws SQLException {
		return Conection.getConnection();
	}
	
}