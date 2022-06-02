package com.example.demo.dao.tipoPagoDao;

import com.example.demo.models.tippagoModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface tPagoDaoJpa extends JpaRepository<tippagoModel, Integer> {

    //@Query("select * from tipo where id_tipo = ?")
    //void getById(int id);
}
