package com.pw3.controleestagio.model;

import javax.persistence.*;
import java.time.ZonedDateTime;
import java.util.List;

@Entity(name = "estagio")
public class Estagio extends VagaEstagio{

	private ZonedDateTime dataInicio;
	private ZonedDateTime dataFim;
	private int duracao;

	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL )
	private List<Relatorio> relatorios;
		
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

}
