package com.example.demo.models;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="bodega")
public class bodegaModel implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "id_bode")
    private int id_bode;
    @Column(name = "stock")
    private int stock;
    @Column(name = "productos_id_produc")
    private int productos_id_produc;

    public bodegaModel() {
    }

    public bodegaModel(int stock, int productos_id_produc) {
        this.stock = stock;
        this.productos_id_produc = productos_id_produc;
    }

    public int getId_bode() {
        return id_bode;
    }

    public void setId_bode(int id_bode) {
        this.id_bode = id_bode;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getProductos_id_produc() {
        return productos_id_produc;
    }

    public void setProductos_id_produc(int productos_id_produc) {
        this.productos_id_produc = productos_id_produc;
    }
}


