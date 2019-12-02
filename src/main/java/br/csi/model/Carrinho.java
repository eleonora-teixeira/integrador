package br.csi.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


public class Carrinho {
    private List<Produto> produtos = new ArrayList<Produto>();
    private float total;
    private Usuario cli;

    public void setProdutos(List<Produto> produtos) {
        this.produtos = produtos;
    }

    public Usuario getCli() {
        return cli;
    }

    public void setCli(Usuario cli) {
        this.cli = cli;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public void setProdutos(ArrayList<Produto> produtos) {
    }
    public List<Produto> getProdutos() {
        return produtos;
    }
}
