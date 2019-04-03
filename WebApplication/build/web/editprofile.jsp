<%-- 
    Document   : editprofile
    Created on : Feb 2, 2019, 11:56:17 AM
    Author     : PL0025
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<%

String note="";
String mob="";
String con="";
String pref="";
String me="";
String emn="";
String gen="";
String psd=(String)session.getAttribute("pk");
String id1=(String)session.getAttribute("nk");
System.out.println("welcom    ......... "+psd);
System.out.println("pass    ......... "+id1);
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

try {

Class.forName("com.mysql.jdbc.Driver");
connection  = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "root");
statement=connection.createStatement();
String sql ="select * from registerform where Passwrd="+psd;
resultSet =statement.executeQuery(sql);
while(resultSet.next()){
   
    emn=resultSet.getString("Email");
    gen=resultSet.getString("Gender");
    me=resultSet.getString("meal");
   pref=resultSet.getString("pref");
   con=resultSet.getString("country");
   mob=resultSet.getString("mobile");
   note=resultSet.getString("Notes");
}

connection.close();
}
catch(NullPointerException ex){
System.out.println("huiiii");
}

%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css" >
.main{
background-color:black;
width:200px;
padding-bottom:480px;
margin-top:-13px;

}
.nam{
border: 5px solid coral;
background-color: coral;
width:190px;
padding-bottom:0px;
}
.profil{
margin-top:25px;
margin-bottom:-25px;
margin-left:20px;
width:30px;
height:55px;
}
.userr p{
margin-top:-20px;
margin-left:60px;
}
.shea{


}
.he{
margin-top:-630px;
margin-left:199px;
padding-bottom:50px;

}
.hea{
 border: 5px solid coral;
background-color: coral;

}
.menu{
width:25px;
height:25px;
margin-bottom:-8px;
margin-left:10px;
}
.bell{
width:25px;
height:25px;
margin-left:20px;
margin-right:20px;
margin-bottom:-5px;
}
.per{
width:25px;
height:25px;
margin-bottom:-5px;
}
.search{
margin-left:800px;
margin-bottom:10px;
margin-top:10px;
padding:5px;
}
.listne {
  display: block;
  position: absolute;
  background-color: black;
  min-width: 100px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
margin-top:25px;
}
.pb{
color:white;
background-color:black;
border:none;
width:200px;
height:40px;

}
.list {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 100px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
  margin-top:10px;
  margin-left:1000px;
}
.list a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
  font-size: 16px;
 
 
}
.list :hover {
  background-color: #ddd;
}

  
 .butn{ 
  cursor: pointer;
 
  border:none;
  background-color:coral;
}
.show {
  display: block;
   }
   .txt{
   
   }
 .butn1{ 
  cursor: pointer;
 
  border:none;
  background-color:coral;
}
.edit{
background-color:green;
padding:1px;
}
.imeg{
width:150px;
height:100px;
margin-left:55px;
}
.edit1{
margin-top:-110px;
margin-left:250px;
width:310px;

}
.edit2{
    margin-top: -275px;
    margin-left: 600px;
width:400px;

}
.editp{
width:300px;
height:25px;
padding-left:5px;
margin-top:20px;
border-radius: 2px;
}
.mid{
margin:50px 0px 0px 470px;
}
.bsiz{
width:80px;
height:30px;
margin:10px;
}
</style>
<body>


<div class="main">
<div class="nam">
<p style="text-align:center;color:white;font-style:Italic">Vali</p>
</div>
<div >
<img class="profil" style="" src="images\men.png">
<div class="userr">
<p style="color:white;"><b>John Doe</b></p>
<p style="color:white;margin-top:-12px">Frontend Developer</p>
</div>

<div  class="listne"id="5myDropdown">
<a href="#"><button  class="pb" id="button" onclick="setColor('button', '#a87c7c')";><img style="width:25px;height:20px;margin-left:-50px;" src="images\dash.png">DashBoard</button></a><br>
   <a href="#"><button class="pb" id="button1" onclick="setColor('button1', '#a87c7c')";><img style="width:25px;height:20px;margin-left:-50px;" src="images\laptop.png">UI Elements</button></a><br>
   <a href="#"><button class="pb" id="button2" onclick="setColor('button2', '#a87c7c')";><img style="width:25px;height:20px;margin-left:-78px;" src="images\chart.png">Charts</button></a><br>
   <a href="#"><button class="pb" id="button3" onclick="setColor('button3', '#a87c7c')";><img style="width:25px;height:20px;margin-left:-78px;" src="images\form.jpg">Forms</button></a><br>
   <a href="#"><button class="pb" id="button4" onclick="setColor('button4', '#a87c7c')";><img style="width:25px;height:20px;margin-left:-78px;" src="images\table.png">Tables</button></a><br>
   <a href="#"><button class="pb" id="button5" onclick="setColor('button5', '#a87c7c')";><img style="width:25px;height:20px;margin-left:-78px;" src="images\page.jpg">Pages</button></a>
    </div>
</div>
</div>
<div class="he">
<div class="hea">
<input class="menu" type="image" src="images\menu.png" >
<input class="search" type="text" placeholder="search">

<button class="butn1" onclick="myFunction()" > <img style="width:15px;height:20px" src="images\bell.png" >
</button>
<div style="margin-left:900px;width:200px" class="list"id="mdown">
<p style="text-align:center"> No Notifications</p>
<p>-------------------------------------</p>
<button style="margin-left:75px">clear</button>
    </div>

<button class="butn" onclick="my()"><img style="width:15px;height:20px" src="images\person.png">
<i class="fa fa-caret-down"></i>
</button>
<div  class="list"id="myDropdown">
<a href="dashboard.jsp">Home</a>
    <a href="signin.jsp"><b>Logout</a>
    </div>
</div>
<div class="edit">
<p style="color:white;padding-left:25px;"><b>Edit Profile</b></p>
</div>

<img class="imeg" src="images\person1.png">
<form action="/action_page.php">
<div class="edit1">
<input class="editp" type="text" value="<%=id1%>"><br>
<input class="editp" type="text" value="<%=psd%>"><br>
<input class="editp" type="text" placeholder="DisplayName"><br><br>
<input style="width:45px" type="text" value="+91">
<input type="number" value="<%=mob%>" >
<input class="editp" type="text" value="<%=emn%>"><br><br>
<input  type="checkbox" >Email Verified<br><br>


</div>
<div class="edit2">


<input class="edietp" type="radio" name="gender" value="male"<%=(gen.equals("male"))?"checked":""%> >Male
<input class="edietp" type="radio" name="gender"  value="female"<%=(gen.equals("female"))?"checked":""%>>Female
<p><b>Location</b></p>
<select style="width:300px;height:25px;border-radius: 10px;" id="country1"> 
<option ><%=con%></option>
<option>India</option>
<option >Austria</option>
	<option >Bangladesh</option>
	<option >Belgium</option>
	<option >Bhutan</option>
	<option >Brazil</option>
	<option >Canada</option>
	<option >China</option>
	<option >Colombia</option>
	<option >Denmark</option>
	<option >Egypt</option>
	<option >France</option>
	<option >Germany</option>
	<option >Hong Kong</option>
    <option>Indonesia</option>
	<option >Iran</option>
	<option >Ireland</option>
	<option >Italy</option>
	<option >Japan</option>
	<option >Korea</option>
	<option >Kuwait</option>
	<option >Macao</option>
	<option >Malaysia</option>
	<option >Maldives</option>
    <option >New Zealand</option>
	<option >Pakistan</option>
    <option >Philippines</option>
	<option >Portugal</option>
    <option >Saudi Arabia</option>
    <option >Singapore</option>
	<option >South Africa</option>
    <option >Spain</option>
	<option >Sri Lanka</option>
	<option >Switzerland</option>
	<option >United Kingdom</option>
	<option >United States</option>              
</select>
<p>Meal Preference</p>
<p class=""><input  type="checkbox"  value="Low calorie"<%=(me.equals("Low calorie"))?"checked":""%>>Low calorie <input type="checkbox" value="Low salt"<%=(pref.equals("Low salt"))?"checked":""%>>Low Salt</p>

<p><b>Notes</b></p>
<input type="textarea" style="width:300px;height:50px;border-radius: 2px;" value="<%=note%>" >
</div>
<div class="mid">
<input type="submit" value="Save" class="bsiz">
<input type="reset" value="Reset"class="bsiz">
</div>
</form>
</div>

<script>
function myFunction() {
  document.getElementById("mdown").classList.toggle("show");
 
}
window.onclick = function(j) {
  if (!j.target.matches('.butn1')) {
  var myopdown = document.getElementById("mdown");
    if (myopdown.classList.contains('show')) {
      myopdown.classList.remove('show');
    }
  }
} 

function my(){
document.getElementById("myDropdown").classList.toggle("show");
}

  

 window.onclick = function(e) {
  if (!e.target.matches('.butn')) {
  var myDropdown = document.getElementById("myDropdown");
    if (myDropdown.classList.contains('show')) {
      myDropdown.classList.remove('show');
    }
  }
} 
var count=0;
function setColor(btn, color){
    
    var property = document.getElementById(btn);
    if (count == 0){
        property.style.backgroundColor = "black"
       count=1;        
    }
    else{
        property.style.backgroundColor = "red"
		//property.style.borderLeftColor = "green"
        count=0;
    }

}

</script>
</body>
</html>
