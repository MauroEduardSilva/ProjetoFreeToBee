package br.com.cadastro.util;

import java.sql.Connection;

public class testeDeConecxao {
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
