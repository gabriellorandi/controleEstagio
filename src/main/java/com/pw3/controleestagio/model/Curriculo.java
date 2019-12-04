package com.pw3.controleestagio.model;

import javax.persistence.*;

@Entity
public class Curriculo {
	
	@Id
	@GeneratedValue
	private int id;
	private String formacaoAcademica;
	private String experienciaProfissional;
	
	@OneToOne(fetch = FetchType.EAGER)
	private Aluno aluno;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFormacaoAcademica() {
		return formacaoAcademica;
	}

	public void setFormacaoAcademica(String formacaoAcademica) {
		this.formacaoAcademica = formacaoAcademica;
	}

	public String getExperienciaProfissional() {
		return experienciaProfissional;
	}

	public void setExperienciaProfissional(String experienciaProfissional) {
		this.experienciaProfissional = experienciaProfissional;
	}
	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}

}
