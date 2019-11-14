package com.pw3.controleestagio.model;

import org.hibernate.annotations.DiscriminatorFormula;

import javax.persistence.*;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
public class Usuario {
	
	@Id
	@GeneratedValue
	private int id;
	private String login;
	private String senha;
	private boolean valido = false;

	public boolean isValido() {
		return valido;
	}

	public void setValido(boolean valido) {
		this.valido = valido;
	}

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

	public boolean isAdmin() {
		if (this instanceof Administrador) {
			return true;
		}
		return false;
	}

	public boolean isAluno() {
		if (this instanceof Aluno) {
			return true;
		}
		return false;
	}

	public boolean isEmpresa() {
		if (this instanceof Empresa) {
			return true;
		}
		return false;
	}

	public boolean isSupervisor() {
		if (this instanceof Supervisor) {
			return true;
		}
		return false;
	}

}
