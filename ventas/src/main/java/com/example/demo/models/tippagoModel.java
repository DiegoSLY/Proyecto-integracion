package com.example.demo.models;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="tip_pago")
public class tippagoModel implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "id_tip_pago")
    private int id_tip_pago;
    @Column(name = "pag_tip_pag")
    private String pag_tip_pag;

    public tippagoModel() {
    }

    public tippagoModel(String pag_tip_pag) {
        this.pag_tip_pag = pag_tip_pag;
    }

    public int getId_tip_pago() {
        return id_tip_pago;
    }

    public void setId_tip_pago(int id_tip_pago) {
        this.id_tip_pago = id_tip_pago;
    }

    public String getPag_tip_pag() {
        return pag_tip_pag;
    }

    public void setPag_tip_pag(String pag_tip_pag) {
        this.pag_tip_pag = pag_tip_pag;
    }
}
