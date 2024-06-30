package com.example.productsmanagement.service;

import com.example.productsmanagement.model.Product;

import java.util.List;

public interface IProductsService {

    List<Product> findAll();

    void save(Product customer);

    Product findById(int id);

    void update(int id, Product customer);

    void remove(int id);

    Product findByName(String name);
}
