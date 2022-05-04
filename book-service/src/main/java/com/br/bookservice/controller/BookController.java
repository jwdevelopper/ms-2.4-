package com.br.bookservice.controller;

import com.br.bookservice.dto.response.Cambio;
import com.br.bookservice.model.Book;
import com.br.bookservice.proxy.CambioProxy;
import com.br.bookservice.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import java.math.BigDecimal;
import java.util.HashMap;

@RestController
@RequestMapping("book-service")
public class BookController {

    @Autowired
    private Environment environment;

    @Autowired
    private BookRepository bookRepository;

    @Autowired
    private CambioProxy cambioProxy;

//    @GetMapping(value = "/{id}/{currency}")
//    public Book findBook(
//            @PathVariable("id") Long id,
//            @PathVariable("currency") String currency
//    ) {
//        var book = bookRepository.getById(id);
//        if (book == null) throw new RuntimeException("Unsuported Book notfound");
//        HashMap<String,String> params = new HashMap<>();
//        params.put("amount", book.getPrice().toString());
//        params.put("from", "USD");
//        params.put("to", currency);
//        var response = new RestTemplate().getForEntity("http://localhost:8000/cambio-service/{amount}/{from}/{to}", Cambio.class, params);
//        var cambio = response.getBody();
//        var port = environment.getProperty("local.server.port");
//        book.setEnvironment(port);
//        book.setPrice(cambio.getConvertedValue().doubleValue());
//        return book;
//    }

    @GetMapping(value = "/{id}/{currency}")
    public Book findBook(
            @PathVariable("id") Long id,
            @PathVariable("currency") String currency
    ) {
        var book = bookRepository.getById(id);
        if (book == null) throw new RuntimeException("Unsuported Book notfound");
        var cambio = cambioProxy.getCambio(new BigDecimal(book.getPrice()),"USD", currency);
        var port = environment.getProperty("local.server.port");
        book.setEnvironment("Book port" + port + " FEIGN" + " cambio: " + cambio.getEnvironment());
        book.setPrice(cambio.getConvertedValue().doubleValue());
        return book;
    }
}
