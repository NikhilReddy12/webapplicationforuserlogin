<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>

<html>
    
<title>sign in</title>
<header ><img class="logo" src="images\logoo.jpg" alt="logo"></header>
<style type="text/css">
    
.logo{
width:100%;
height:80px;
margin-top:-4px;
}
.m{
background-color:white;
margin-top:-20px;
margin-left:450px;
margin-right:500px;
padding-top:20px;
padding-left:25px;
padding-right:05px;
padding-bottom:50px;
}
.k{
color: white;

font-size: 20px;
border: 1px green;
  background-color: #16C406;
 
  margin-top:-5px;
  margin-left:-25px;
  margin-right:-5px;
  margin-bottom:50px;
  padding:25px;
  
  
 
}
.user{
width:250px;
 border: 2px solid green;
height:40px;
border-radius: 10px;
margin-right:25px;
margin-left:42px;
}
.pic{
width:30px;

margin-right:25px;
margin-left:255px;
margin-top:-38px;
margin-bottom:20px;
}


.password{
width:250px;
 border: 2px solid green;
height:40px;
border-radius: 10px;
margin-right:25px;
margin-left:42px;
margin-bottom:25px;
}

.pic1{
width:30px;

margin-right:25px;
margin-left:255px;
margin-top:-85px;
margin-bottom:20px;
}
.login{
color: white;
font-size: 15px;
background-color: #16C406;
width:220px;
height:35px;
margin-right:25px;
margin-left:56px;
margin-bottom:30px;
border-radius:10px;
}
.sign{
color: white;
font-size: 15px;
background-color: #16C406;
width:100px;
height:30px;
border-radius:10px;
margin-right:2px;
margin-left:46px;
}
.forget{
text-decoration:none;
color: black;

margin-right:20px;
}
.pi{
width:35px;
height:25px;
margin:50px 5px 30px 580px;
}
.pi1{
width:35px;
height:25px;
margin:15px 10px 30px -10px;
}
.pi2{
width:35px;
height:25px;
margin:15px 15px 30px -10px;
}

.checkdiv{
margin-left:45px;
margin-top:-15px;
margin-bottom:20px;
}
#pa{
width:20px;
height:25px;
margin:10px 50px 10px 25px;
}

</style>
<body style="background-color:#253F63">
<script type="text/javascript" src="signin.js"></script>
<form action="login" name="myform" method="post"  onsubmit="return validateform()" >  
<div class="m">
<p class="k" >Login Form</p>
<input class="user" type="text" name="uname" placeholder="Username" />
<img class="pic" src="images\man.png" alt="man"/>
<div class="clear"></div>
<input class="password" type="password" id="password" name="upass" placeholder="Password" />
<div class="checkdiv">
<input type="checkbox" class="picsee" onclick="validateform()" >Click here to see the Password
</div>
<img class="pic1" src="images\lock.png" alt="lock"/>
<div class="clear"></div>
<input class="login"type="submit" name="lon"  value="Login" />
<div class="clear"></div>
<a style="color:white" href="newhtml.html" ><input class="sign" type="button" name="signup" value="Sign up" /> </a>

<a class="forget" href="forgt.html" >Forgot Your Password?</a>
</div>

<footer >
<img class="pi" src="images\fb.png" alt="fb"/>
<img class="pi1" src="images\twit.jpg" alt="twit"/>
<img class="pi2" src="images\gplus.png" alt="gplus"/>
</footer>
</form>
</body>


</html>
