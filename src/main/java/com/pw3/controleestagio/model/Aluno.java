package com.pw3.controleestagio.model;

import javax.persistence.*;

@Entity(name = "aluno")
public class Aluno extends Usuario {
	
	private String nome;
	private String ra;

	private boolean valido = false;
	
	@OneToOne(fetch = FetchType.EAGER,
            cascade =  CascadeType.ALL,
            mappedBy = "aluno")
	private Curriculo curriculo; 
	
	@OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "estagio_id")
	private Estagio estagio;

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
}
