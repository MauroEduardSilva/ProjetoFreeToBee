package br.com.cadastro.model;

public class Foto {
    private long id;
    private String nomeArquivo;
    private byte[] conteudoFoto;
    private String extensaoFoto;
    private long estabelecimentoId;

    public Foto() {}

    public Foto(byte[] conteudoFoto, String extensaoFoto) {
        this.conteudoFoto = conteudoFoto;
        this.extensaoFoto = extensaoFoto;
    }

 

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNomeArquivo() {
        return nomeArquivo;
    }

    public void setNomeArquivo(String nomeArquivo) {
        this.nomeArquivo = nomeArquivo;
    }

    public byte[] getConteudoFoto() {
        return conteudoFoto;
    }

    public void setConteudoFoto(byte[] conteudoFoto) {
        this.conteudoFoto = conteudoFoto;
    }

    public String getExtensaoFoto() {
        return extensaoFoto;
    }

    public void setExtensaoFoto(String extensaoFoto) {
        this.extensaoFoto = extensaoFoto;
    }

    public long getEstabelecimentoId() {
        return estabelecimentoId;
    }

    public void setEstabelecimentoId(long estabelecimentoId) {
        this.estabelecimentoId = estabelecimentoId;
    }
}
