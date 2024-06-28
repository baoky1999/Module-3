package service.iml;

import CustomerRepo.CustomerRepo;
import model.Customer;
import service.IServiceCustomer;

import java.util.List;

public class CustomerService implements IServiceCustomer {

    CustomerRepo customerRepo = new CustomerRepo();

    @Override
    public List<Customer> getAll() {
        return customerRepo.getAll();
    }
}
