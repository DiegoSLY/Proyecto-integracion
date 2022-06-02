package com.example.demo.services.serviceDet;

import com.example.demo.dao.detalleVenDao.detVenDaoImp;
import com.example.demo.models.detVenModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class DetalleServiceImp implements DetalleService{

    String msg="";

    @Autowired
    detVenDaoImp daoDetVenImp;


    @Override
    public boolean createDetalleVenta(detVenModel DetalleVenta) {
        if(daoDetVenImp.getDetVen(DetalleVenta.getId_det_vent())==null) {
            daoDetVenImp.createDetVen(DetalleVenta);
            msg = "Detalle de venta agregado a la bodega correctamente";
            System.out.println(msg);
            return true;
        }
        msg = "Detalle de venta no agregado a la bodega";
        System.out.println(msg);
        return false;

    }

    @Override
    public List<detVenModel> getAllDetalleVenta() {
        msg = "Detalles de venta de la bodega encontrados";
        System.out.println(msg);
        return daoDetVenImp.getAllDetVen();
    }

    @Override
    public boolean delDetalleVenta(int id_detven) {
        if(daoDetVenImp.getDetVen(id_detven)!=null) {
            daoDetVenImp.delDetVen(id_detven);
            msg = "Detalle de venta eliminado completamente";
            System.out.println(msg);
            return true;
        }
        msg = "Detalle de venta no eliminado";
        System.out.println(msg);
        return false;

    }

    @Override
    public detVenModel getDetalleVenta(int id_detven) {
        msg = "Detalle de venta encontrado";
        System.out.println(msg);
        return daoDetVenImp.getDetVen(id_detven);
    }

    @Override
    public void updateDetalleVenta(detVenModel DetalleVenta) {
        if (daoDetVenImp.getDetVen(DetalleVenta.getId_det_vent())!=null){
            daoDetVenImp.updateDetVen(DetalleVenta);
        };
        msg = "Detalle de venta no encontrado";
        System.out.println(msg);
    }
}
