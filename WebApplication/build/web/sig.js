
function validateform(){  
var nam=document.myform.nam.value;   
var mail=document.myform.email.value; 
var x = mail.indexOf("@");
var y = mail.lastIndexOf(".");
var pass=document.myform.pass.value; 
var date=document.myform.dob.value;
var country=document.getElementById("country1").value;
var m=document.getElementById("genderm");
var f=document.getElementById("genderf");
var o=document.getElementById("gendero");
var term=document.myform.terms;
if (nam==null || nam==""){  
  alert("Name can't be blank");  
  return false;  
}
if(mail==null || mail==""){
	 alert("email can't be blank");  
  return false; 
}
if (x < 1 || y < x + 2 || y + 2 >= x.length) {
                alert("Not a valid e-mail address");
                return false;
            }

 if(pass.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
 }
 if(date==null ||date==""){  
  alert("Enter Date of Birth");  
  return false;  
 }
  if(country=="Select"){  
  alert("Select Country");  
  return false;  
 } 
 if(m.checked == false && f.checked == false && o.checked == false ){  
  alert("Select Gender");  
  return false;  
 } 
 if(term.checked == false ){  
  alert("Accept Terms ");  
  return false;  
 } 
}