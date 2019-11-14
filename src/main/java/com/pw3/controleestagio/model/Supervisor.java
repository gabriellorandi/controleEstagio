package com.pw3.controleestagio.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity(name = "supervisor")
public class Supervisor extends Usuario {
	
	private String nome;
	private boolean valido = false;

	public boolean isValido() {
		return valido;
	}

	public void setValido(boolean valido) {
		this.valido = valido;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
}
