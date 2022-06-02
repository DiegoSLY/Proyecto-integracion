package com.example.demo.dao.detalleVenDao;

import com.example.demo.models.detVenModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface detVenDaoJpa extends JpaRepository<detVenModel, Integer> {

    //@Query("select * from productos where id_pro = ?")
    //void getById(int id);
}
