package com.example.demo.services.serviceTipoPago;

import com.example.demo.dao.tipoPagoDao.tPagoDaoImp;
import com.example.demo.models.tippagoModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class tipoPServiceImp implements tipoPService{

    String msg="";

    @Autowired
    tPagoDaoImp daoTPagoImp;

    @Override
    public boolean createtipoPago(tippagoModel tipoPago) {
        if(daoTPagoImp.getTPago(tipoPago.getId_tip_pago())==null) {
            daoTPagoImp.createTPago(tipoPago);
            msg = "Tipo de pago agregado correctamente";
            System.out.println(msg);
            return true;
        }
        msg = "Tipo de pago no agregado";
        System.out.println(msg);
        return false;
    }

    @Override
    public List<tippagoModel> getAlltipoPago() {
        msg = "Tipo de pagos encontrados";
        System.out.println(msg);
        return daoTPagoImp.getAllTPago();
    }

    @Override
    public boolean deltipoPago(int id_tpag) {
        if(daoTPagoImp.getTPago(id_tpag)!=null) {
            daoTPagoImp.delTPago(id_tpag);
            msg = "Tipo de pago eliminado completamente";
            System.out.println(msg);
            return true;
        }
        msg = "Tipo de pago no eliminado";
        System.out.println(msg);
        return false;
    }

    @Override
    public tippagoModel gettipoPago(int id_tpag) {
        msg = "Tipo de pago encontrado";
        System.out.println(msg);
        return daoTPagoImp.getTPago(id_tpag);
    }

    @Override
    public void updatetipoPago(tippagoModel tipoPago) {
        if (daoTPagoImp.getTPago(tipoPago.getId_tip_pago())!=null){
            daoTPagoImp.updateTPago(tipoPago);
            msg = "Tipo de pago encontrado";
        };
        msg = "Tipo de pago no encontrado";
        System.out.println(msg);
    }
}
