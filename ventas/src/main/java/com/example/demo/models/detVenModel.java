package com.example.demo.models;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="det_vent")
public class detVenModel implements Serializable{

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "id_det_vent")
    private int id_det_vent;
    @Column(name = "produc_det")
    private String produc_det;
    @Column(name = "user_det")
    private String user_det;
    @Column(name = "hora_det")
    private String hora_det;
    @Column(name = "fecha_det")
    private String fecha_det;
    @Column(name = "TIP_PAGO_id_tip_pago")
    private int TIP_PAGO_id_tip_pago;

    public detVenModel() {
    }

    public detVenModel(String produc_det, String user_det, String hora_det, String fecha_det, int TIP_PAGO_id_tip_pago) {
        this.produc_det = produc_det;
        this.user_det = user_det;
        this.hora_det = hora_det;
        this.fecha_det = fecha_det;
        this.TIP_PAGO_id_tip_pago = TIP_PAGO_id_tip_pago;
    }

    public int getId_det_vent() {
        return id_det_vent;
    }

    public void setId_det_vent(int id_det_vent) {
        this.id_det_vent = id_det_vent;
    }

    public String getProduc_det() {
        return produc_det;
    }

    public void setProduc_det(String produc_det) {
        this.produc_det = produc_det;
    }

    public String getUser_det() {
        return user_det;
    }

    public void setUser_det(String user_det) {
        this.user_det = user_det;
    }

    public String getHora_det() {
        return hora_det;
    }

    public void setHora_det(String hora_det) {
        this.hora_det = hora_det;
    }

    public String getFecha_det() {
        return fecha_det;
    }

    public void setFecha_det(String fecha_det) {
        this.fecha_det = fecha_det;
    }

    public int getTIP_PAGO_id_tip_pago() {
        return TIP_PAGO_id_tip_pago;
    }

    public void setTIP_PAGO_id_tip_pago(int TIP_PAGO_id_tip_pago) {
        this.TIP_PAGO_id_tip_pago = TIP_PAGO_id_tip_pago;
    }
}
