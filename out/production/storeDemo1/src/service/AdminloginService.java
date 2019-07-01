package service;

import bean.admin;
import daoImpl.AdminLogin;

public class AdminloginService {
    private AdminLogin adminLogin;

    public AdminLogin getAdminLogin() {
        return adminLogin;
    }

    public void setAdminLogin(AdminLogin adminLogin) {
        this.adminLogin = adminLogin;
    }
    public boolean adminlogin(admin user){
        if(user.getUsername()==null||user.getUsername().equals("")||user.getPassword()==null||user.getPassword().equals("")){
            return false;
        }else {
            return adminLogin.select(user);
        }
    }
}
