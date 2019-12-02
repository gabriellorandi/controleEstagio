package com.pw3.controleestagio.model;

import javax.persistence.*;

@Entity(name = "supervisor")
public class Supervisor extends Usuario {
	
	private String nome;
	private boolean valido = false;

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "aluno_id")
	private Aluno aluno;

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

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}
}
