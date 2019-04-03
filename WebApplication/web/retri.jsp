<%-- 
    Document   : retri
    Created on : Apr 3, 2019, 12:42:53 PM
    Author     : PL0025
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<!DOCTYPE html>
<%String em=request.getParameter("email");
 String dat=(String)request.getParameter("dob"); 
 
String nam="";
String psw="";
String emn="";

System.out.println("welcom    ......... "+em);
System.out.println("pass    ......... "+dat);
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

try {

Class.forName("com.mysql.jdbc.Driver");
connection  = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "root");
statement=connection.createStatement();
String sql ="select * from registerform where Email='"+em+"' and Dob='"+dat+"'";
System.out.println("huiiideegi"+ sql);
resultSet =statement.executeQuery(sql);
while(resultSet.next()){
   emn=resultSet.getString("Email");
    nam=resultSet.getString("FullName");
    psw=resultSet.getString("passwrd");
    System.out.println("crtttt");
}

connection.close();
}
catch(NullPointerException ex){
System.out.println("huiiii");
}
System.out.println("hii" +emn);
 %>
<html>
<title>Forgt ur passwrd</title>
<style class="text/css">
body{
width:100%;
height:50%;
background-repeat:no-repeat;
background-size:cover;
}
.bo{

margin:200px 400px 0px 400px;
}
.btn{
margin-left:150px;
margin-top:25px;
}
.em{
margin-left:25px;
padding-left:30px;
padding-right:20px;
padding-top:10px;
padding-bottom:10px;
}
.su{
padding:8px 25px 8px 25px;
background-color:green;
color:white;
margin-left:50px;
}
.lo{
padding:8px 25px 8px 25px;
background-color:orange;
color:white;
margin-left:50px;
}
</style>
<body background="images\lit.jpg"  >


<div class="bo">
<div>
<p style="color:green;margin-left:10px;">NAME<input class="em" type="text" value="<%=nam%>"></p>
<p style="color:green;margin-left:102px;">PASSWORD<input class="em" type="text" value="<%=psw%>"></p>
</div>
<div class="btn">

<a href="signin.jsp"><input class="lo" style="" type="button" value=" Back to Login"></a>
</div>
<div>


</body>
</html>
