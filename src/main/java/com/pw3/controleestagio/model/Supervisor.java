package com.pw3.controleestagio.model;

import javax.persistence.Entity;

@Entity(name = "supervisor")
public class Supervisor extends Usuario {
	
	private String nome;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
}
