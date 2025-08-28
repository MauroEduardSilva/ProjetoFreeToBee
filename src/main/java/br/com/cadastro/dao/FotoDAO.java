package br.com.cadastro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.cadastro.model.Foto;

public class FotoDAO {
	private Connection connection;
	
	public FotoDAO(Connection connection) {
		this.connection = connection;
	}
	
	
	public Foto buscarPorEstabelecimentoId(long estabelecimentoId) throws SQLException {
		String sql = "select * from foto where estabelecimento_id = ?";
		
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setLong(1, estabelecimentoId);
			try (ResultSet rs = stmt.executeQuery()) {
				if(rs.next()) {
					Foto foto = new Foto();
					foto.setId(rs.getLong("id"));
					foto.setNomeArquivo(rs.getString("nome_arquivo"));
					foto.setConteudoFoto(rs.getBytes("conteudo_foto"));
					foto.setExtensaoFoto(rs.getString("extensao_foto"));
					foto.setEstabelecimentoId(rs.getLong("estabelecimento_id"));
					return foto;
				}
			}
		}
		return null;
	}
}
