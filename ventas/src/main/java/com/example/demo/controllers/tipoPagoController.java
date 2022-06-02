package com.example.demo.controllers;

import com.example.demo.models.tippagoModel;
import com.example.demo.services.serviceTipoPago.tipoPServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*")
@RestController
public class tipoPagoController {

    @Autowired
    tipoPServiceImp tPService;

    @RequestMapping("/welcome3")
    public String welcomepage3() {
        return "Bienvenido a mi api";
    }

    @GetMapping(value = "/tipoPagos", produces = MediaType.APPLICATION_JSON_VALUE)
    public List<tippagoModel> getAllTipoPago() {
        return tPService.getAlltipoPago();
    }

    @GetMapping(value = "/tipoPago/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    public tippagoModel getTipoPagoId(@PathVariable("id") int id) {
        return tPService.gettipoPago(id);
    }

    @PostMapping(value = "/loadTipoPago", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.TEXT_PLAIN_VALUE)
    public String loadTipoPago(@RequestBody tippagoModel newTPago) {
        return String.valueOf(tPService.createtipoPago(newTPago));
    }

    @PutMapping(value = "/updateTipoPago", consumes = MediaType.APPLICATION_JSON_VALUE)
    public void updateTipoPago(@RequestBody tippagoModel tPagoCreated) {
        tPService.updatetipoPago(tPagoCreated);
    }

    @DeleteMapping(value = "/delTipoPago/{id}")
    public void delTipoPago(@PathVariable("id") int idTPago) {
        tPService.deltipoPago(idTPago);
    }

}
