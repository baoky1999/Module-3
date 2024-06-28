package CustomerRepo;

import model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerRepo {

    private static List<Customer> customers;

    static {
        customers = new ArrayList<>();
        customers.add(new Customer(1, "Gia Phúc", "25-05-2002", "Đường Hồ Quý Ly, Đà Nẵng", "image\\phuc.png"));
        customers.add(new Customer(2, "Trung Hiếu", "05-05-2001", "Quảng Trị", "image\\hieu.png"));
        customers.add(new Customer(3, "Hoàng Phong", "25-05-1999", "Huế", "image\\phong.png"));
        customers.add(new Customer(4, "Quang cuốn", "25-05-2004", "hà tĩnh", "image\\quang.png"));
        customers.add(new Customer(4, "Chí Thanh", "25-05-1992", "Đà Nẵng", "image\\thanh.png"));
    }


    public List<Customer> getAll() {
        return customers;
    }
}
