package com.pw3.controleestagio.model;

import javax.persistence.*;

@Entity
public class Relatorio {
	
	@Id
	@GeneratedValue
	private int id;

	private String descricao;
	private String observacoes;

	private boolean valido = false;

	@ManyToOne
	@JoinColumn(name = "fk_estagio")
	private Estagio estagio;

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

	public String getObservacoes() {
		return observacoes;
	}

	public void setObservacoes(String observacoes) {
		this.observacoes = observacoes;
	}

	public boolean isValido() {
		return valido;
	}

	public void setValido(boolean valido) {
		this.valido = valido;
	}

	public Estagio getEstagio() {
		return estagio;
	}

	public void setEstagio(Estagio estagio) {
		this.estagio = estagio;
	}
}
