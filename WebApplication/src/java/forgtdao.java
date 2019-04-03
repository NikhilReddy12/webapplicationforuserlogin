import java.sql.*;  
  
public class forgtdao {  
public static boolean validate(String em,String da){  
boolean status=false;  


try{  
Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
      
PreparedStatement ps=con.prepareStatement(  
"select * from registerform where Email=? and Dob=?");  
ps.setString(1,em);  
 ps.setString(2,da);
      
ResultSet rs=ps.executeQuery();  
status=rs.next();  
          
}catch(Exception e){System.out.println(e);}  
return status;  
}  
}  
