function validateform(){  
var log=document.myform.uname.value;
var pass=document.myform.password.value;
var psw = document.getElementById("password");
if( log == null || log == "")
{
	alert("Enter UserName");
	return false;
}
if( pass == null || pass == "")
{
	alert("Enter Password");
	return false;
}

if(psw.type == "password"){
		psw.type = "text";
	}
		else{
			psw.type = "password";
		}
}

	
	
	


