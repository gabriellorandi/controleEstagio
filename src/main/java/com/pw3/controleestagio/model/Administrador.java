package com.pw3.controleestagio.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity(name = "administrador")
@DiscriminatorValue("Administrador")
public class Administrador extends Usuario {
	
	private String nome;
	private boolean valido = true;

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
