package br.com.cadastro.model;

public class Avaliacao {
    private int id;
    private int estabelecimentoId;
    private int nota;
    private String comentario;

    
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public int getEstabelecimentoId() {
        return estabelecimentoId;
    }
    public void setEstabelecimentoId(int estabelecimentoId) {
        this.estabelecimentoId = estabelecimentoId;
    }

    public int getNota() {
        return nota;
    }
    public void setNota(int nota) {
        this.nota = nota;
    }

    public String getComentario() {
        return comentario;
    }
    public void setComentario(String comentario) {
        this.comentario = comentario;
    }
}
