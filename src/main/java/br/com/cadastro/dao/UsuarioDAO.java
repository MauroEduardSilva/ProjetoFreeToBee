package br.com.cadastro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.cadastro.model.Usuario;
import br.com.cadastro.util.Conexao;

public class UsuarioDAO {
	
	public Usuario verificarUsuario(String email, String senha) {
	    Usuario usuario = null;
	
	    try (Connection conn = Conexao.getConexao()) {
	        String sql = "SELECT * FROM usuarios WHERE email = ? AND senha = ?";
	        PreparedStatement stmt = conn.prepareStatement(sql);
	        stmt.setString(1, email);
	        stmt.setString(2, senha);
	
	        ResultSet rs = stmt.executeQuery();
	
	        if (rs.next()) {
	            usuario = new Usuario();
	            usuario.setNome(rs.getString("nome"));
	            usuario.setSobrenome(rs.getString("sobrenome"));
	            usuario.setApelido(rs.getString("apelido"));
	            usuario.setEmail(rs.getString("email"));
	            usuario.setSenha(rs.getString("senha"));
	            
	        }
	
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	
	    return usuario;
	}
	
	public void salvar(Usuario usuario) throws SQLException {
	    String sql = "INSERT INTO usuarios (nome, sobrenome, apelido, email, senha) VALUES (?, ?, ?, ?, ?)";
	    
	    try (Connection conn = Conexao.getConexao();
	         PreparedStatement stmt = conn.prepareStatement(sql)) {
	        
	        stmt.setString(1, usuario.getNome());
	        stmt.setString(2, usuario.getSobrenome());
	        stmt.setString(3, usuario.getApelido());
	        stmt.setString(4, usuario.getEmail());
	        stmt.setString(5, usuario.getSenha());
	        
	        stmt.executeUpdate();
	    }
	}
	
	public void atualizarUsuario (Usuario usuario) {
		String sql = "UPDATE usuarios SET nome = ?, sobrenome = ?, apelido = ?, senha = ? where email = ?";
		
		try (Connection con = Conexao.getConexao();
				PreparedStatement stmt = con.prepareStatement(sql)){
			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getSobrenome());
			stmt.setString(3, usuario.getApelido());
			stmt.setString(4, usuario.getSenha());
			stmt.setString(5, usuario.getEmail());
			
			stmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
