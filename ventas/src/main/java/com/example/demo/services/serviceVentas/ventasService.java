package com.example.demo.services.serviceVentas;

import com.example.demo.models.ventModel;


import java.util.List;

public interface ventasService {

    boolean createventas(ventModel ventas);

    List<ventModel> getAllventas();

    boolean delventas(int id_ventas);

    ventModel getventas(int id_ventas);

    void updateventas(ventModel ventas);
}
