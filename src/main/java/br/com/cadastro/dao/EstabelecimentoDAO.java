package br.com.cadastro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.com.cadastro.model.Endereco;
import br.com.cadastro.model.Estabelecimento;
import br.com.cadastro.model.Foto;

public class EstabelecimentoDAO {
    private Connection connection;

    public EstabelecimentoDAO(Connection connection) {
        this.connection = connection;
    }

   //Verificar este parte de Salvar  
    
    public void salvar(Estabelecimento estabelecimento, Endereco endereco, Foto foto) throws SQLException {
        String sqlEstabelecimento = "insert into estabelecimento (nome, email, telefone, cnpj, tipo) VALUES (?, ?, ?, ?, ?)";
        
        PreparedStatement stmtEst = null;
        PreparedStatement stmtEnd = null;
        PreparedStatement stmtFoto = null;

        try {
            
            stmtEst = connection.prepareStatement(sqlEstabelecimento, Statement.RETURN_GENERATED_KEYS);
            stmtEst.setString(1, estabelecimento.getNome());
            stmtEst.setString(2, estabelecimento.getEmail());
            stmtEst.setString(3, estabelecimento.getTelefone());
            stmtEst.setString(4, estabelecimento.getCNPJ());
            stmtEst.setString(5, estabelecimento.getTipo());
            stmtEst.executeUpdate();

           
            ResultSet rs = stmtEst.getGeneratedKeys();
            long idEstabelecimento = 0;
            if (rs.next()) {
                idEstabelecimento = rs.getLong(1);
            }

            
            String sqlEndereco = "INSERT INTO endereco (estado, cidade, bairro, cep, logradouro, horario_funcionamento, id_estabelecimento) VALUES (?, ?, ?, ?, ?, ?, ?)";
            stmtEnd = connection.prepareStatement(sqlEndereco);
            stmtEnd.setString(1, endereco.getEstado());
            stmtEnd.setString(2, endereco.getCidade());
            stmtEnd.setString(3, endereco.getBairro());
            stmtEnd.setInt(4, endereco.getCep());
            stmtEnd.setString(5, endereco.getLogradouro());
            stmtEnd.setString(6, endereco.getHorarioFuncionamento());
            stmtEnd.setLong(7, idEstabelecimento);
            stmtEnd.executeUpdate();
            
            
            if(foto != null && foto.getConteudoFoto() != null && foto.getConteudoFoto().length > 0) {
            	String sqlFoto = "insert into foto (nome_arquivo, conteudo_foto, extensao_foto, estabelecimento_id) values (?, ?, ?, ?)";
            	stmtFoto = connection.prepareStatement(sqlFoto);
            	stmtFoto.setString(1, "foto_estab_" + idEstabelecimento);
            	stmtFoto.setBytes(2, foto.getConteudoFoto());
            	stmtFoto.setString(3, foto.getExtensaoFoto());
            	stmtFoto.setLong(4, idEstabelecimento);
            	stmtFoto.executeUpdate();
            }

        } finally {
            if (stmtEst != null) stmtEst.close();
            if (stmtEnd != null) stmtEnd.close();
            if (stmtFoto != null) stmtFoto.close();
        }
    }
    
    
    public void atualizar(Estabelecimento e, Endereco endereco) throws SQLException {
    	String sql = "UPDATE estabelecimento SET nome = ?, email = ?, telefone = ?, cnpj = ?, tipo = ? WHERE id = ?";
    	
    	PreparedStatement stmt = connection.prepareStatement(sql);
    	stmt.setString(1, e.getNome());
    	stmt.setString(2, e.getEmail());
    	stmt.setString(3, e.getTelefone());
    	stmt.setString(4, e.getCNPJ());
    	stmt.setString(5, e.getTipo());
    	stmt.setLong(6, e.getId());
    	stmt.executeUpdate();
    }
    public List<Estabelecimento> buscarRecentes() throws SQLException {
    	List<Estabelecimento> lista = new ArrayList<>();
    	String sql = "SELECT * FROM estabelecimento ORDER BY id DESC LIMIT 5";
    	
    	try (PreparedStatement stmt = connection.prepareStatement(sql);
    		ResultSet rs = stmt.executeQuery()) {
    		
    		while (rs.next()) {
    			Estabelecimento e = new Estabelecimento();
    			e.setId(rs.getLong("id"));
    			e.setNome(rs.getString("nome"));
    			e.setEmail(rs.getString("email"));
    			e.setTelefone(rs.getString("telefone"));
    			e.setCNPJ(rs.getString("cnpj"));
    			e.setTipo(rs.getString("tipo"));
    			lista.add(e);
    		}
    	}
    	return lista;
    }
    public List<Estabelecimento> buscarPorNome(String nome) throws SQLException {
        List<Estabelecimento> lista = new ArrayList<>();
        String sql = "SELECT * FROM estabelecimento WHERE nome LIKE ? ORDER BY nome ASC";

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, "%" + nome + "%");

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Estabelecimento e = new Estabelecimento();
                    e.setId(rs.getLong("id"));
                    e.setNome(rs.getString("nome"));
                    e.setEmail(rs.getString("email"));
                    e.setTelefone(rs.getString("telefone"));
                    e.setCNPJ(rs.getString("cnpj"));
                    e.setTipo(rs.getString("tipo"));
                    lista.add(e);
                }
            }
        }
        return lista;
    }
    public Estabelecimento buscarPorId(long id) throws SQLException {
    	String sql = "select * from estabelecimento where id = ?";
    	
    	try(PreparedStatement stmt = connection.prepareStatement(sql)) {
    		stmt.setLong(1, id);
    		try(ResultSet rs = stmt.executeQuery()) {
    			if (rs.next()) {
    				Estabelecimento e = new Estabelecimento();
    				e.setId(rs.getLong("id"));
    				e.setNome(rs.getString("nome"));
    				e.setEmail(rs.getString("email"));
    				e.setTelefone(rs.getString("telefone"));
    				e.setCNPJ(rs.getString("CNPJ"));
    				e.setTipo(rs.getString("tipo"));
    				return e;
    			}
    		}
    	}
    	return null;
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
