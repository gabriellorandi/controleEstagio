package com.pw3.controleestagio.model;

import javax.persistence.*;

@Entity(name = "supervisor")
public class Supervisor extends Usuario {
	
	private String nome;

	@OneToOne(fetch = FetchType.EAGER)
	private Aluno aluno;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}
}
