
package com.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserBean {
    private String name;
    private String password;
    
    private String[] nameByFind = null;;
    private String[] passwordByFind = null;
    
    public UserBean(){
    }
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
    
    public void getConn() throws SQLException {
    	
    	Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			 Class.forName("org.firebirdsql.jdbc.FBDriver");
                    //String url="jdbc:firebirdsql://192.168.8.102/D:/V5.0/Data/LENNY.FDB?useUnicode=true&characterEncoding=utf8";
              String url="jdbc:firebirdsql://localhost:3050/C:/Users/Administrator/Desktop/LENNY.FDB?useUnicode=true&characterEncoding=utf8";
              String user="sysdba";
              String password="root";
              conn = DriverManager.getConnection(url,user,password);
    		
              stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
              String sql="select * from b_user";
              rs=stmt.executeQuery(sql);
              
              rs.last();
              int count = rs.getRow();
              rs.beforeFirst();
              
              nameByFind = new String[count];
              passwordByFind = new String[count];
              
              int i = 0;
              
              while(rs.next()){
            	  
            	  nameByFind[i] = rs.getString("name");
            	  passwordByFind[i] = rs.getString("password");
            	  //System.out.println(nameByFind[i]);
        
            	  i++;
              }
              
    	} catch (Exception e) {
    		
    		e.printStackTrace();
    		
    	} finally {
    		
    		
    	}
    	
    }
    
    public boolean login(String name, String password) throws SQLException {
    	
    	getConn();
    	
    	boolean flag = false;
    	
    	for( int  i = 0 ; i < 2 ; i++ ) {
    		//System.out.print(nameByFind[i]);
    		if(name.equals(nameByFind[i]) && password.equals(passwordByFind[i])) {
    			
    			flag = true;

    			break;
    		}
    		
    	}
    	
    	return flag;
    }
}
