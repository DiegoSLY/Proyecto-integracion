package com.example.demo.dao.ventDao;

import com.example.demo.models.ventModel;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface ventaDao {

    void createVenta(ventModel venta);

    List<ventModel> getAllVenta();

    void delVenta(int idVen);

    ventModel getVenta(int idVen);

    void updateVenta(ventModel venta);
}
