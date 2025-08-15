package br.com.cadastro.model;

public class Endereco {
	private Long id;
    private String estado;
    private String cidade;
    private String bairro;
    private int cep;
    private String logradouro;
    private String horarioFuncionamento;
    
    public Endereco() {}
    
    public Endereco(Long id, String estado, String cidade, String bairro, int cep, String logradouro, String horarioFuncionamento) {
    	this.id = id;
    	this.estado = estado;
    	this.cidade = cidade;
    	this.bairro = bairro;
    	this.cep = cep;
    	this.logradouro = logradouro;
    	this.horarioFuncionamento = horarioFuncionamento;
    }
    
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }

    public String getEstado() {
        return estado;
    }
    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCidade() {
        return cidade;
    }
    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getBairro() {
        return bairro;
    }
    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public int getCep() {
        return cep;
    }
    public void setCep(int cep) {
        this.cep = cep;
    }

    public String getLogradouro() {
        return logradouro;
    }
    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public String getHorarioFuncionamento() {
        return horarioFuncionamento;
    }
    public void setHorarioFuncionamento(String horarioFuncionamento) {
        this.horarioFuncionamento = horarioFuncionamento;
    }
}
