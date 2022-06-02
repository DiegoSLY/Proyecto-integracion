package com.example.demo.dao.detalleVenDao;

import com.example.demo.models.detVenModel;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface detVenDao {

    void createDetVen(detVenModel detVen);

    List<detVenModel> getAllDetVen();

    void delDetVen(int idDetVen);

    detVenModel getDetVen(int idDetVen);

    void updateDetVen(detVenModel detVen);
}
