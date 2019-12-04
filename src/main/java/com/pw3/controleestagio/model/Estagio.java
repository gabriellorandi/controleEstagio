package com.pw3.controleestagio.model;

import javax.persistence.*;
import java.time.ZonedDateTime;
import java.util.List;

@Entity(name = "estagio")
public class Estagio extends VagaEstagio{

	private ZonedDateTime dataInicio;
	private ZonedDateTime dataFim;
	private int duracao;

	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL )
	private List<Relatorio> relatorios;

	@OneToOne(fetch = FetchType.EAGER,
			cascade =  CascadeType.ALL,
			mappedBy = "estagio")
	private Aluno estagiario;
		
	public ZonedDateTime getDataInicio() {
		return dataInicio;
	}

	public void setDataInicio(ZonedDateTime dataInicio) {
		this.dataInicio = dataInicio;
	}

	public ZonedDateTime getDataFim() {
		return dataFim;
	}

	public void setDataFim(ZonedDateTime dataFim) {
		this.dataFim = dataFim;
	}

	public int getDuracao() {
		return duracao;
	}

	public void setDuracao(int duracao) {
		this.duracao = duracao;
	}

	public List<Relatorio> getRelatorios() {
		return relatorios;
	}

	public void setRelatorios(List<Relatorio> relatorios) {
		this.relatorios = relatorios;
	}

	public Aluno getEstagiario() {
		return estagiario;
	}

	public void setEstagiario(Aluno estagiario) {
		this.estagiario = estagiario;
	}
}
