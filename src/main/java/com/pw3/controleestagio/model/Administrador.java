package com.pw3.controleestagio.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity(name = "administrador")
@DiscriminatorValue("Administrador")
public class Administrador extends Usuario {
	
	private String nome;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

}
