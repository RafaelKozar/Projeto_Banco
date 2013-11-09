package org.ufpr.lpoo.projetobanco;

import org.ufpr.lpoo.projetobanco.Conta;

public class ContaCorrente extends Conta{
    private double limite;
    private double depInicial; //valor do deposito inicial

    public ContaCorrente(double limite, double depInicial, double saldo) {
        this.limite = limite;
        this.depInicial = depInicial;
        //FALTA COLOCAR O CONSTRUTOR DA SUPER CLASSE PARA TER O ATRIBUTO saldo.
    }

    public double getLimite() {
        return limite;
    }

    public void setLimite(double limite) {
        this.limite = limite;
    }

    public double getDepInicial() {
        return depInicial;
    }

    public void setDepInicial(double depInicial) {
        this.depInicial = depInicial;
    }
    
    public boolean saca(double valor){
//        Antes de efetuar o saque deve-se verificar se o
//valor sacado não ultrapassa o limite da conta. Ou seja, a conta poderá ficar negativa até o limite
//estipulado na sua criação. Mostrar mensagem na tela informando o usuário.
        
        return true;
    }    
    public void remunera(){
    }
}
