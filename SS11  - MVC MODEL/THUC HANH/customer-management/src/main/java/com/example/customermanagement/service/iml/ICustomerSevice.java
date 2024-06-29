package com.example.customermanagement.service.iml;

import com.example.customermanagement.model.Customer;
import com.example.customermanagement.repositories.CustomerRepositories;
import com.example.customermanagement.service.IServiceCustomer;

import java.util.List;

public class ICustomerSevice implements IServiceCustomer {

    CustomerRepositories customerRepo = new CustomerRepositories();
    @Override
    public List<Customer> findAll() {
        return customerRepo.findAll();
    }

    @Override
    public void save(Customer customer) {
        customerRepo.save(customer);
    }

    @Override
    public Customer findById(int id) {
        return customerRepo.findById(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customerRepo.update(id, customer);
    }

    @Override
    public void remove(int id) {
        customerRepo.remove(id);
    }
}
