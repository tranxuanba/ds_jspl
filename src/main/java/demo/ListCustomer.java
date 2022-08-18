package demo;

public class ListCustomer{
    private String name;
    private String date;
    private String address;

    private String anh;

    public ListCustomer() {
    }

    public ListCustomer(String name, String date, String address, String anh) {
        this.name = name;
        this.date = date;
        this.address = address;
        this.anh = anh;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }
}
