package org.ufpr.lpoo.projetobanco;


public abstract class  Conta {
    private double saldo;

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }
    
    public boolean deposita(double valor){    
   //o valor depositado deve ser positivo. Caso contrário o método retorna false
        return true;        
    }
    public boolean saca(double valor){
    //o valor sacado deve ser positivo. Caso contrário 
    //o método retorna false. Mostrar mensagem na tela informando usuário.
        return true;
    }
}
