package br.usjt.avalie.model.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

@Entity
public class Avaliacao implements Serializable{
	
	private static final long serialVersionUID = 1L;

	//Atributos
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="idAvaliacao")
	private int id;
	
	@NotNull
	@Column(name="dataAvaliacao")
	private Date data;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name="idUsuario")
	private Usuario usuario;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name="idEstabelecimento")
	private Estabelecimento estabelecimento;
	
	@NotNull
	@Column(name="comentario_sanitario")
	private String comentarioSanitario;
	
	@NotNull
	@Column(name="nota_sanitario")
	private double notaSanitario;
	
	@NotNull
	@Column(name="comentario_instrucao")
	private String comentarioInstrucao;
	
	@NotNull
	@Column(name="nota_instrucao")
	private double notaInstrucao;
	
	@NotNull
	@Column(name="comentario_sinalizacao")
	private String comentarioSinalizacao;
	
	@NotNull
	@Column(name="nota_sinalizacao")
	private double notaSinalizacao;
	
	@NotNull
	@Column(name="comentario_cadeirante")
	private String comentarioCadeirante;
	
	@NotNull
	@Column(name="nota_cadeirante")
	private double notaCadeirante;
	
	@NotNull
	@Column(name="media_notas")
	private double mediaNotas;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Estabelecimento getEstabelecimento() {
		return estabelecimento;
	}

	public void setEstabelecimento(Estabelecimento estabelecimento) {
		this.estabelecimento = estabelecimento;
	}

	public String getComentarioSanitario() {
		return comentarioSanitario;
	}

	public void setComentarioSanitario(String comentarioSanitario) {
		this.comentarioSanitario = comentarioSanitario;
	}

	public double getNotaSanitario() {
		return notaSanitario;
	}

	public void setNotaSanitario(double notaSanitario) {
		this.notaSanitario = notaSanitario;
	}

	public String getComentarioInstrucao() {
		return comentarioInstrucao;
	}

	public void setComentarioInstrucao(String comentarioInstrucao) {
		this.comentarioInstrucao = comentarioInstrucao;
	}

	public double getNotaInstrucao() {
		return notaInstrucao;
	}

	public void setNotaInstrucao(double notaInstrucao) {
		this.notaInstrucao = notaInstrucao;
	}

	public String getComentarioSinalizacao() {
		return comentarioSinalizacao;
	}

	public void setComentarioSinalizacao(String comentarioSinalizacao) {
		this.comentarioSinalizacao = comentarioSinalizacao;
	}

	public double getNotaSinalizacao() {
		return notaSinalizacao;
	}

	public void setNotaSinalizacao(double notaSinalizacao) {
		this.notaSinalizacao = notaSinalizacao;
	}

	public String getComentarioCadeirante() {
		return comentarioCadeirante;
	}

	public void setComentarioCadeirante(String comentarioCadeirante) {
		this.comentarioCadeirante = comentarioCadeirante;
	}

	public double getNotaCadeirante() {
		return notaCadeirante;
	}

	public void setNotaCadeirante(double notaCadeirante) {
		this.notaCadeirante = notaCadeirante;
	}

	public double getMediaNotas() {
		return mediaNotas;
	}

	public void setMediaNotas(double mediaNotas) {
		this.mediaNotas = mediaNotas;
	}

	@Override
	public String toString() {
		return "Avaliacao [id=" + id + ", data=" + data + ", usuario=" + usuario + ", estabelecimento="
				+ estabelecimento + ", comentarioSanitario=" + comentarioSanitario + ", notaSanitario=" + notaSanitario
				+ ", comentarioInstrucao=" + comentarioInstrucao + ", notaInstrucao=" + notaInstrucao
				+ ", comentarioSinalizacao=" + comentarioSinalizacao + ", notaSinalizacao=" + notaSinalizacao
				+ ", comentarioCadeirante=" + comentarioCadeirante + ", notaCadeirante=" + notaCadeirante
				+ ", mediaNotas=" + mediaNotas + "]";
	}
	
}
