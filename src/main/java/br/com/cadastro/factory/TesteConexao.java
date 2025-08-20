package br.com.cadastro.factory;

import java.sql.Connection;

public class TesteConexao {
    public static void main(String[] args) {
        try {
            Connection con = Conexao.getConexao();
            System.out.println("Conexão estabelecida com sucesso!");
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
