package model;

public class Customer {

    private int id;
    private String name;
    private String bod;
    private String address;
    private String image;

    public Customer() {}

    public Customer(int id, String name, String bod, String address, String image) {
        this.id = id;
        this.name = name;
        this.bod = bod;
        this.address = address;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBod() {
        return bod;
    }

    public void setBod(String bod) {
        this.bod = bod;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
