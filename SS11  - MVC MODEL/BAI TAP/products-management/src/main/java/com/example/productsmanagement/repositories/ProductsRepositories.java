package com.example.productsmanagement.repositories;

import com.example.productsmanagement.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductsRepositories {

    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1,new Product(1,"IPhone 15Pro Max","Apple",1200,"image/iphone.jpg"));
        products.put(2,new Product(2,"Samsung S24 Ultra","Samsung",1700,"image/s24ultra.jpg"));
        products.put(3,new Product(3,"Xiaomi 14 Ultra","Xiaomi",1400,"image/xiaomi14.jpeg"));
    }


    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    public void save(Product customer) {
        products.put(customer.getId(), customer);
    }

    public Product findById(int id) {
        return products.get(id);
    }

    public void update(int id, Product customer) {
        products.put(id,customer);
    }

    public void remove(int id) {
        products.remove(id);
    }

    public Product findByName(String name) {
        if (name == null || name.trim().isEmpty()) {
            return null;
        }
        List<Product> products = findAll();
        String search = name.trim().toLowerCase();
        for (Product product : products) {
            if (product.getName().toLowerCase().contains(search)) {
                return product;
            }
        }
        return null;
    }
    
}
