package br.com.cadastro.dao;

import br.com.cadastro.model.Avaliacao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AvaliacaoDAO {
    private Connection connection;

    public AvaliacaoDAO(Connection connection) {
        this.connection = connection;
    }

    public void salvar(Avaliacao avaliacao) throws SQLException {
        String sql = "INSERT INTO avaliacao (estabelecimento_id, nota, comentario) VALUES (?, ?, ?)";
        PreparedStatement stmt = connection.prepareStatement(sql);
        stmt.setInt(1, avaliacao.getEstabelecimentoId());
        stmt.setInt(2, avaliacao.getNota());
        stmt.setString(3, avaliacao.getComentario());
        stmt.executeUpdate();
        stmt.close();
    }
}
