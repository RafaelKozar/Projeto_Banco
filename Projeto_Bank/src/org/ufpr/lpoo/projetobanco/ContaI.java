package org.ufpr.lpoo.projetobanco;


import org.ufpr.lpoo.projetobanco.Cliente;


public interface ContaI {
    public boolean deposita(double valor);
    public boolean saca(double valor);
    public Cliente getDono();
    public int getNumero();
    public double getSaldo();
    public void remunera();
}
