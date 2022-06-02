package com.example.demo.dao.ventDao;

import com.example.demo.models.ventModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class VentaDaoImp implements ventaDao {

    @Autowired
    ventaDaoJpa bodJpa;

    @Override
    public void createVenta(ventModel venta) {
        bodJpa.save(venta);
    }

    @Override
    public List<ventModel> getAllVenta() {
        return bodJpa.findAll();
    }

    @Override
    public void delVenta(int idVen) {
        bodJpa.deleteById(idVen);
    }

    @Override
    public ventModel getVenta(int idVen) {
        try{
            return bodJpa.findById(idVen).orElse(null);
        }catch (Exception e){
            e.getMessage();
            return null;
        }
    }

    @Override
    public void updateVenta(ventModel venta) {
        bodJpa.save(venta);
    }
}
