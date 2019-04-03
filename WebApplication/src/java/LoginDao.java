/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.*;  
  
public class LoginDao {  
public static boolean validate(String name,String pass){  
boolean status=false;  
try{  
Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
      
PreparedStatement ps=con.prepareStatement(  
"select * from registerform where FullName=? and Passwrd=?");  
ps.setString(1,name);  
ps.setString(2,pass);  
      
ResultSet rs=ps.executeQuery();  
status=rs.next();  
          
}catch(Exception e){System.out.println(e);}  
return status;  
}  
}  