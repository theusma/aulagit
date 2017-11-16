package br.usjt.avalie.model.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

@Entity
public class Estabelecimento implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	//Atributos
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="idEstabelecimento")
	private int id;
	
	@NotNull
	@Column(name="nomeEstabelecimento")
	private String nome;
	
	@NotNull
	@Column(name="enderecoEstabelecimento")
	private String endereco;
	
	@NotNull
	@JoinColumn(name="cnpjEstabelecimento")
	private String cnpj;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name="idCategoria")
	private Categoria categoria;
	
	//Get e set
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	@Override
	public String toString() {
		return "Estabelecimento [id=" + id + ", nome=" + nome + ", endereco=" + endereco
				+ ", cnpj=" + cnpj + ", categoria=" + categoria + "]";
	}
	
}
