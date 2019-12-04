package com.pw3.controleestagio.model;

import javax.persistence.*;
import java.util.List;

@Entity(name = "vagaestagio")
public class VagaEstagio {
	
	@Id
	@GeneratedValue
	private int id;
	
	private String descricao;
	private String requisitosObrigatorios;
	private String requisitosDesejaveis;

	@ManyToMany
	@JoinTable(name = "vagaestagio_aluno",
			joinColumns = @JoinColumn(name = "vagaestagio_id"),
			inverseJoinColumns = @JoinColumn(name = "aluno_id"))
	private List<Aluno> alunos;

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

	public List<Aluno> getAlunos() {
		return alunos;
	}

	public void setAlunos(List<Aluno> alunos) {
		this.alunos = alunos;
	}
}
