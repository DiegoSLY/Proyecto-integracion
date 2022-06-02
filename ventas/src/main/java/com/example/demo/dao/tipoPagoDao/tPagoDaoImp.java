package com.example.demo.dao.tipoPagoDao;

import com.example.demo.models.tippagoModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class tPagoDaoImp implements tPagoDao {

    @Autowired
    tPagoDaoJpa tipoJpa;

    @Override
    public void createTPago(tippagoModel tPago) {
        tipoJpa.save(tPago);
    }

    @Override
    public List<tippagoModel> getAllTPago() {
        return tipoJpa.findAll();
    }

    @Override
    public void delTPago(int idTPago) {
        tipoJpa.deleteById(idTPago);
    }

    @Override
    public tippagoModel getTPago(int idTPago) {
        try{
            return tipoJpa.findById(idTPago).orElse(null);
        }catch (Exception e){
            e.getMessage();
            return null;
        }
    }

    @Override
    public void updateTPago(tippagoModel tPago) {
        tipoJpa.save(tPago);
    }
}
