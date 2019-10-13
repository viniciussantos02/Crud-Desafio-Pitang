package com.ecodeup.model;

public class Usuario {
	private int id;
	private String nome;
	private String email;
	private String senha;
	private int ddd;
	private String numero;
	private String tipo;
	public Usuario(int id, String nome, String email, String senha, int ddd, String numero, String tipo) {
		super();
		this.id = id;
		this.nome = nome;
		this.email = email;
		this.senha = senha;
		this.ddd = ddd;
		this.numero = numero;
		this.tipo = tipo;
	}
	
	public Usuario() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public int getDdd() {
		return ddd;
	}

	public void setDdd(int ddd) {
		this.ddd = ddd;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	@Override
	public String toString() {
		return "usuarios [id=" + id + ", nome=" + nome + ", email=" + email + ", senha=" + senha + ", ddd=" + ddd
				+ ", numero=" + numero + ", tipo=" + tipo + "]";
	}
}
