package com.pw3.controleestagio.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name = "usuario")
public class Usuario {
	
	@Id
	@GeneratedValue
	private int id; 
	private String login;
	private String senha;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public static boolean isAdmin(Object o) {
		if (o instanceof Administrador) {
			return true;
		}
		return false;
	}

	public static boolean isAluno(Object o) {
		if (o instanceof Aluno) {
			return true;
		}
		return false;
	}

	public static boolean isEmpresa(Object o) {
		if (o instanceof Empresa) {
			return true;
		}
		return false;
	}

	public static boolean isSupervisor(Object o) {
		if (o instanceof Supervisor) {
			return true;
		}
		return false;
	}

}
