package com.example.productsmanagement.service.iml;

import com.example.productsmanagement.model.Product;
import com.example.productsmanagement.repositories.ProductsRepositories;
import com.example.productsmanagement.service.IProductsService;

import java.util.List;

public class IProductService implements IProductsService {

    ProductsRepositories productsRepo = new ProductsRepositories();

    @Override
    public List<Product> findAll() {
        return productsRepo.findAll();
    }

    @Override
    public void save(Product customer) {
        productsRepo.save(customer);
    }

    @Override
    public Product findById(int id) {
        return productsRepo.findById(id);
    }

    @Override
    public void update(int id, Product customer) {
        productsRepo.update(id, customer);
    }

    @Override
    public void remove(int id) {
        productsRepo.remove(id);
    }

    @Override
    public Product findByName(String name) {
        return productsRepo.findByName(name);
    }
}
