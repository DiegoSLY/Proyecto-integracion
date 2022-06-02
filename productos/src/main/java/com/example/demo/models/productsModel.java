package com.example.demo.models;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="productos")
public class productsModel implements Serializable{

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "id_produc")
    private int id_produc;
    @Column(name = "nom_produc")
    private String nom_produc;
    @Column(name = "des_produc")
    private String des_pro;
    @Column(name = "pre_produc")
    private int pre_produc;
    @Column(name = "tipo_id_tipo")
    private int tipo_id_tipo;

    public productsModel() {
    }

    public productsModel(String nom_produc, String des_pro, int pre_produc, int tipo_id_tipo) {
        this.nom_produc = nom_produc;
        this.des_pro = des_pro;
        this.pre_produc = pre_produc;
        this.tipo_id_tipo = tipo_id_tipo;
    }

    public int getId_produc() {
        return id_produc;
    }

    public void setId_produc(int id_produc) {
        this.id_produc = id_produc;
    }

    public String getNom_produc() {
        return nom_produc;
    }

    public void setNom_produc(String nom_produc) {
        this.nom_produc = nom_produc;
    }

    public String getDes_pro() {
        return des_pro;
    }

    public void setDes_pro(String des_pro) {
        this.des_pro = des_pro;
    }

    public int getPre_produc() {
        return pre_produc;
    }

    public void setPre_produc(int pre_produc) {
        this.pre_produc = pre_produc;
    }

    public int getTipo_id_tipo() {
        return tipo_id_tipo;
    }

    public void setTipo_id_tipo(int tipo_id_tipo) {
        this.tipo_id_tipo = tipo_id_tipo;
    }
}
