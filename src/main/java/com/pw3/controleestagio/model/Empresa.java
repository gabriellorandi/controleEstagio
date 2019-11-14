package com.pw3.controleestagio.model;

import javax.persistence.*;
import java.util.List;

@Entity(name = "empresa")
@PrimaryKeyJoinColumn(name = "id")
public class Empresa extends Usuario {
	
	private String razaoSocial;
	private String nomeFantasia;
	private String cnpj;

	@OneToMany(cascade = CascadeType.ALL )
	private List<Estagio> estagios;

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

	public List<Estagio> getEstagios() {
		return estagios;
	}

	public void setEstagios(List<Estagio> estagios) {
		this.estagios = estagios;
	}

}
