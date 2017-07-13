package com.action;

import com.bean.UserBean;
import com.opensymphony.xwork2.ActionSupport;


public class LoginAction extends ActionSupport {
    private String name;
    private String password;
  
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
 
  
    public String execute() throws Exception {
       
    	UserBean ub = new UserBean();
    	
    	if(ub.login(name,password)) {
    		
    		return SUCCESS;
    		
    	} else {
    		
    		return INPUT;
    	}
    	 
    }
	
}
