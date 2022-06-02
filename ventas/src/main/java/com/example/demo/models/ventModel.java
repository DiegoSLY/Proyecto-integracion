package com.example.demo.models;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="ventas")
public class ventModel implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "id_vent")
    private int id_vent;
    @Column(name = "produc_id")
    private String produc_id;
    @Column(name = "user_id")
    private String user_id;
    @Column(name = "DET_VENT_id_det_vent")
    private String DET_VENT_id_det_vent;

    public ventModel() {
    }

    public ventModel(String produc_id, String user_id, String DET_VENT_id_det_vent) {
        this.produc_id = produc_id;
        this.user_id = user_id;
        this.DET_VENT_id_det_vent = DET_VENT_id_det_vent;
    }

    public int getId_vent() {
        return id_vent;
    }

    public void setId_vent(int id_vent) {
        this.id_vent = id_vent;
    }

    public String getProduc_id() {
        return produc_id;
    }

    public void setProduc_id(String produc_id) {
        this.produc_id = produc_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getDET_VENT_id_det_vent() {
        return DET_VENT_id_det_vent;
    }

    public void setDET_VENT_id_det_vent(String DET_VENT_id_det_vent) {
        this.DET_VENT_id_det_vent = DET_VENT_id_det_vent;
    }
}
