package com.pw3.controleestagio.model;

import javax.persistence.*;

@Entity
public class Curriculo {
	
	@Id
	@GeneratedValue
	private int id;
	private String formacaoAcademica;
	private String experienciaProfissional;
	
	@OneToOne(fetch = FetchType.LAZY)
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
	private Aluno getAluno() {
		return aluno;
	}

	private void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}

}
