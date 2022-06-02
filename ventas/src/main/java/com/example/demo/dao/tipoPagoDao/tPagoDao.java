package com.example.demo.dao.tipoPagoDao;

import com.example.demo.models.tippagoModel;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface tPagoDao {
    void createTPago(tippagoModel tPago);

    List<tippagoModel> getAllTPago();

    void delTPago(int idTPago);

    tippagoModel getTPago(int idTPago);

    void updateTPago(tippagoModel tPago);
}
