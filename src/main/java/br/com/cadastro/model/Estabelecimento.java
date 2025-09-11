package br.com.cadastro.model;

import java.sql.Date;

public class Estabelecimento {
	private long id;
	private String nome;
	private String email;
	private String tipo;
	private String telefone;
	private String CNPJ;
	private int curtidas;
	private Date dataCadastro;
	private String endereco;
	private double notaMedia;
	private int qtdAvaliacoes;

	
	public Estabelecimento () {}
	
	public Estabelecimento(long id, String nome, String email, String tipo, String telefone, String CNPJ, String endereco) {
		this.id = id;
		this.nome = nome;
		this.email = email;
		this.tipo = tipo;
		this.telefone = telefone;
		this.CNPJ = CNPJ;
		this.endereco = endereco;
	}

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	public String getCNPJ() {
		return CNPJ;
	}
	public void setCNPJ(String CNPJ) {
		this.CNPJ = CNPJ;
		
	}
	public int getCurtidas() {
	    return curtidas;
	}
	public void setCurtidas(int curtidas) {
	    this.curtidas = curtidas;
	}

	public Date getDataCadastro() {
	    return dataCadastro;
	}
	public void setDataCadastro(Date dataCadastro) {
	    this.dataCadastro = dataCadastro;
	}
	
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	
	public double getNotaMedia() {
	    return notaMedia;
	}

	public void setNotaMedia(double notaMedia) {
	    this.notaMedia = notaMedia;
	}

	public int getQtdAvaliacoes() {
	    return qtdAvaliacoes;
	}

	public void setQtdAvaliacoes(int qtdAvaliacoes) {
	    this.qtdAvaliacoes = qtdAvaliacoes;
	}

	
}
