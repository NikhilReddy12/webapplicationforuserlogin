<%-- 
    Document   : dashboard
    Created on : Feb 2, 2019, 4:20:24 PM
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
//https://fmovie.biz/film/sanam-teri-kasam/19zsyin
String url=(String)request.getParameter("uname");

String n1,p1;

if (url==null){
    System.out.println("Editprofile to dashboard");
     n1=(String)session.getAttribute("nk");
 p1=(String)session.getAttribute("pk");
 System.out.println("welcom    ......... "+n1);
System.out.println("pass    ......... "+p1);
    
}else{
    System.out.println("signin to dashboard");
 n1=(String)request.getParameter("uname");
 p1=(String)request.getParameter("upass");
 System.out.println("welcoilim    ......... "+n1);
System.out.println("pass    ......... "+p1);
 session.setAttribute("nk",n1);
session.setAttribute("pk",p1);
    
}
  
//String n2=(String)application.setAttribute("unamee",n1);
//String p2=(String)application.setAttribute("pssw",p1);
//instakipcikazan.xyzgf

//https://www.scoopwhoop.com/innocently-naughty-riddles/#.ep1hblez7
//System.out.println("welcom    ......... "+url);
//System.out.println("pass    ......... ");


//application.setAttribute("nk",n1);
//application.setAttribute("pk",p1);
 
%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css" >
.main{
background-color:black;
width:199px;
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
background-color: #F0F8FF;
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
.dashb{
background-color:white;
padding-left:50px;
margin-left:20px;
margin-top:-20px;

}
.graphb{
background-color:white;
width:500px;
height:400px;
margin-left:50px;
margin-top:50px;
}
.pieb{
background-color:white;
width:500px;
height:400px;
margin-top:-423px;
margin-left:600px;
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
<a href="editprofile.jsp">Edit Profile</a>
    <a href="signin.jsp"><b>Logout </a>
    </div>
</div>
<div class="dashb">
<p Style="font-size:25px"><img style="width:25px;height:20px" src="dash.png">Dashboard</p>
<p style="margin-top:-20px">A Free and Modular Template</p>
</div>
<div class="graphb">
<p style="margin-left:25px;padding-top:25px;font-size:25px">Monthly Sales</p>
<img style="width:450px;height:300px;margin-left:20px;"src="images\graph.png">
</div>
<div class="pieb">
<p style="margin-left:25px;padding-top:25px;font-size:25px">Support Requests</p>
<img style="width:450px;height:300px;margin-left:20px;"src="images\pie.jpg">
</div>

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
