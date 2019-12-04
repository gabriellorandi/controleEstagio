package com.pw3.controleestagio.model;

import javax.persistence.*;
import java.util.List;

@Entity(name = "aluno")
public class Aluno extends Usuario {
	
	private String nome;
	private String ra;

	private boolean valido = false;
	
	@OneToOne(fetch = FetchType.EAGER,
            cascade =  CascadeType.ALL,
            mappedBy = "aluno", orphanRemoval = true)
	private Curriculo curriculo; 
	
	@OneToOne(fetch = FetchType.LAZY)
	private Estagio estagio;

	@ManyToMany(mappedBy = "alunos")
	private List<VagaEstagio> vagaEstagios;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getRa() {
		return ra;
	}

	public void setRa(String ra) {
		this.ra = ra;
	}

	public boolean isValido() {
		return valido;
	}

	public void setValido(boolean valido) {
		this.valido = valido;
	}

	public Curriculo getCurriculo() {
		return curriculo;
	}

	public void setCurriculo(Curriculo curriculo) {
		this.curriculo = curriculo;
	}

	public Estagio getEstagio() {
		return estagio;
	}

	public void setEstagio(Estagio estagio) {
		this.estagio = estagio;
	}

	public List<VagaEstagio> getVagaEstagios() {
		return vagaEstagios;
	}

	public void setVagaEstagios(List<VagaEstagio> vagaEstagios) {
		this.vagaEstagios = vagaEstagios;
	}
}
