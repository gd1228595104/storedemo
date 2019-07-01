package service;

import daoImpl.CustomerInfo_cu;

import java.util.List;

public class AdminService {
    private CustomerInfo_cu customerInfo_cu;

    public void setCustomerInfo_cu(CustomerInfo_cu customerInfo_cu) {
        this.customerInfo_cu = customerInfo_cu;
    }
    public List ShowAllCustomer(){
        return customerInfo_cu.ShowAllCustomer();
    }
}
