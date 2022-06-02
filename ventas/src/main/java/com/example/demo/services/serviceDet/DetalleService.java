package com.example.demo.services.serviceDet;

import com.example.demo.models.detVenModel;


import java.util.List;

public interface DetalleService {
    boolean createDetalleVenta(detVenModel DetalleVenta);

    List<detVenModel> getAllDetalleVenta();

    boolean delDetalleVenta(int id_detven);

    detVenModel getDetalleVenta(int id_detven);

    void updateDetalleVenta(detVenModel venta);
}
