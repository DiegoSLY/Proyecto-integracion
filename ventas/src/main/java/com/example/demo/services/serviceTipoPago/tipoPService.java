package com.example.demo.services.serviceTipoPago;

import com.example.demo.models.tippagoModel;


import java.util.List;

public interface tipoPService {
    boolean createtipoPago(tippagoModel tipoPago);

    List<tippagoModel> getAlltipoPago();

    boolean deltipoPago(int id_tpag);

    tippagoModel gettipoPago(int id_tpag);

    void updatetipoPago(tippagoModel tipoPago);
}
