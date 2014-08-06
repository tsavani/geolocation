function ValidateIPaddress()  
{  
 
 var inputText = document.getElementById("ip_address").value;
  alert(inputText);
 var ipformat = /^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/;  
 
 if(!inputText.value.match(ipformat))  
 {   
	 return false;  
 }  
}
