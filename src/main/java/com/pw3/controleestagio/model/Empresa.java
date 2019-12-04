package com.pw3.controleestagio.model;

import javax.persistence.*;
import java.util.List;

@Entity(name = "empresa")
public class Empresa extends Usuario {
	
	private String razaoSocial;
	private String nomeFantasia;
	private String cnpj;

	private boolean valido = false;

	@OneToMany(cascade = CascadeType.ALL, orphanRemoval = true, mappedBy = "empresa")
	private List<VagaEstagio> vagaEstagios;


	public String getRazaoSocial() {
		return razaoSocial;
	}

	public void setRazaoSocial(String razaoSocial) {
		this.razaoSocial = razaoSocial;
	}

	public String getNomeFantasia() {
		return nomeFantasia;
	}

	public void setNomeFantasia(String nomeFantasia) {
		this.nomeFantasia = nomeFantasia;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public boolean isValido() {
		return valido;
	}

	public void setValido(boolean valido) {
		this.valido = valido;
	}

	public List<VagaEstagio> getVagaEstagios() {
		return vagaEstagios;
	}

	public void setVagaEstagios(List<VagaEstagio> vagaEstagios) {
		this.vagaEstagios = vagaEstagios;
	}
}
