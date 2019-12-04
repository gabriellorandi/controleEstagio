package com.pw3.controleestagio.model;

import javax.persistence.*;

@Entity
public class VagaEstagio {
	
	@Id
	@GeneratedValue
	private int id;
	
	private String descricao;
	private String requisitosObrigatorios;
	private String requisitosDesejaveis;

	@OneToOne
	private Aluno aluno;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "empresa_id")
	private Empresa empresa;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getRequisitosObrigatorios() {
		return requisitosObrigatorios;
	}

	public void setRequisitosObrigatorios(String requisitosObrigatorios) {
		this.requisitosObrigatorios = requisitosObrigatorios;
	}

	public String getRequisitosDesejaveis() {
		return requisitosDesejaveis;
	}

	public void setRequisitosDesejaveis(String requisitosDesejaveis) {
		this.requisitosDesejaveis = requisitosDesejaveis;
	}

	public Empresa getEmpresa() {
		return empresa;
	}

	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno candidato) {
		this.aluno = candidato;
	}
}
