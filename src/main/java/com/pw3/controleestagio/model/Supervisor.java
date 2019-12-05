package com.pw3.controleestagio.model;

import javax.persistence.*;
import java.util.List;

@Entity(name = "supervisor")
public class Supervisor extends Usuario {
	
	private String nome;

	@OneToMany(fetch = FetchType.EAGER)
	private List<Aluno> alunos;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public List<Aluno> getAlunos() {
		return alunos;
	}

	public void setAlunos(List<Aluno> alunos) {
		this.alunos = alunos;
	}

	public void setAluno(Aluno aluno) {
		this.alunos.add(aluno);
	}
}
