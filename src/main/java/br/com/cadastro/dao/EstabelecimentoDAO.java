package br.com.cadastro.dao;

import java.sql.*;

import br.com.cadastro.model.Endereco;
import br.com.cadastro.model.Estabelecimento;

public class EstabelecimentoDAO {
    private Connection connection;

    public EstabelecimentoDAO(Connection connection) {
        this.connection = connection;
    }

    public void salvar(Estabelecimento estabelecimento, Endereco endereco) throws SQLException {
        String sqlEstabelecimento = "INSERT INTO estabelecimento (nome, email, telefone, cnpj, data_cadastro, curtidas) VALUES (?, ?, ?, ?, CURRENT_DATE, 0)";
        
        PreparedStatement stmtEst = null;
        PreparedStatement stmtEnd = null;

        try {
            
            stmtEst = connection.prepareStatement(sqlEstabelecimento, Statement.RETURN_GENERATED_KEYS);
            stmtEst.setString(1, estabelecimento.getNome());
            stmtEst.setString(2, estabelecimento.getEmail());
            stmtEst.setString(3, estabelecimento.getTelefone());
            stmtEst.setString(4, estabelecimento.getCNPJ());
            stmtEst.executeUpdate();

           
            ResultSet rs = stmtEst.getGeneratedKeys();
            long idEstabelecimento = 0;
            if (rs.next()) {
                idEstabelecimento = rs.getLong(1);
            }

            
            String sqlEndereco = "INSERT INTO endereco (estado, cidade, bairro, cep, logradouro, horarioFuncionamento, estabelecimento_id) VALUES (?, ?, ?, ?, ?, ?, ?)";
            stmtEnd = connection.prepareStatement(sqlEndereco);
            stmtEnd.setString(1, endereco.getEstado());
            stmtEnd.setString(2, endereco.getCidade());
            stmtEnd.setString(3, endereco.getBairro());
            stmtEnd.setInt(4, endereco.getCep());
            stmtEnd.setString(5, endereco.getLogradouro());
            stmtEnd.setString(6, endereco.getHorarioFuncionamento());
            stmtEnd.setLong(7, idEstabelecimento); 
            stmtEnd.executeUpdate();

        } finally {
            if (stmtEst != null) stmtEst.close();
            if (stmtEnd != null) stmtEnd.close();
        }
    }
}
