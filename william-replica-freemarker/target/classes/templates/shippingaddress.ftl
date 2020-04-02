<#import "*/useraddress.ftl" as shippingaddress>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shipping Address</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=custId] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=custId]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
</style>

</head>
<body>
	<button onclick="openForm()">open Form</button>
	<div class="form-popup"  id="myForm">
		<form action="shippingaddress" method="get" class="form-container">
			<label for="customerId">CustomerId</label>
			<input type="text" placeholder="enter customerId" name="customerId" required>
			
			<button type="submit">Submit</button>
			<button type="button" onclick="closeForm()">Close</button>
			
		</form>
	<script>
	function getCustomerAddress(){
		alert("getCustomer Shipping Address !!!!")
		
		var request = new XMLHttpRequest();
		request.open('GET', 'http://localhost:8080/shippingaddress', true);
		request.send(); 
		
		
	}
	function openForm() {
		alert("inside openForm()")
		  document.getElementById("myForm").style.display = "block";
	}

	function closeForm() {
	  document.getElementById("myForm").style.display = "none";
	}
	
	function checkboxEvent(){
		// Get the checkbox
		  var checkBox = document.getElementById("checkboxVal");
		  // Get the output text
		  var shippingDiv = document.getElementById("shippingDiv");

		  // If the checkbox is checked, display the output text
		  if (checkBox.checked == true){
			  shippingDiv.style.display = "block";
		  } else {
			  shippingDiv.style.display = "none";
		  }	
	}
	
	</script>
	</div>
	<h4>Shipping</h4>
			
			<@shippingaddress.display>
			</@shippingaddress.display>
			<input type="checkbox" name="remember" id="checkboxVal" onclick="checkboxEvent()">
		</div>
		<div style="margin-left:300px;display:none;margin-top: -248px;" id="shippingDiv">
		<button onclick="openForm()">open Form</button>
			
			<h4>Billing</h4>
			<@shippingaddress.display>
			</@shippingaddress.display>
		</div>
		
		</div>
	<br/>
	
</body>
</html>