<#import "*/useraddress.ftl" as billingaddress>
<#import "*/orderdetails.ftl" as order>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing Address</title>
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
#parent_div_1, #parent_div_2, #parent_div_3{
    width:300px;
    height:300px;
    border:1px solid black;
    margin-right:10px;
    float:left;
}
.child_div_1{
    float:left;
    margin-right:5px;
}

.child_div_4{
    float:top;
    margin-right:5px;
}


<style>
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 12px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myUL {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

#myUL li a {
  border: 1px solid #ddd;
  margin-top: -1px; /* Prevent double borders */
  background-color: #f6f6f6;
  padding: 12px;
  text-decoration: none;
  font-size: 18px;
  color: black;
  display: block
}

#myUL li a:hover:not(.header) {
  background-color: #eee;
}

</style>

</head>
<body onload="onLoadOrderDetails()">
	
	<script>
	/* function getCustomerAddress(){
		alert("getCustomer Address !!!!")
		
		var request = new XMLHttpRequest();
		request.open('GET', 'http://localhost:8080/billingaddress', true);
		request.send(); 
		
		
	} */
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
		  if (checkBox.checked == true && billingDiv.style.display == 'block' ){
			  shippingDiv.style.display = "block";
		  } else {
			  shippingDiv.style.display = "none";
		  }	
	}

	</script>
	
	
<div class ='child_div_4' id="orderDiv"></div>
<div>
<div id='parent_div_1'>
<div class ='child_div_1'>

<button onclick="openForm()">open Form</button>
	<div class="form-popup"  id="myForm">
		
			<label for="customerId">CustomerId</label>
			<input type="text" placeholder="enter customerId" name="customerId" required>
			
			<button type="button" onclick="onBillingSubmit()">Submit</button>
			<button type="button" onclick="closeForm()">Close</button>
		</div>
	<h4>Billing</h4>
	<div id="billingDiv" style="display:none">
			<@billingaddress.display>
			</@billingaddress.display>
	</div>
	<#if billingaddress.display ??>
		<input type="checkbox" name="remember" id="checkboxVal" onclick="checkboxEvent()">
		</#if>
		</div>
</div>

<div id='parent_div_2'>
	<div class ='child_div_1' >
		<button onclick="openShippingForm()">open Form</button>
		<h4>Shipping</h4>
		 <div class="form-popup"  id="myShippingForm">
		
			<label for="customerId">CustomerId</label>
			<input type="text" placeholder="enter customerId" name="customerId" required>
			
			<button type="button" onclick="shippingSubmit()">Submit</button>
			<button type="button" onclick="closeShippingForm()">Close</button>
			
		
		</div>
		<div id="shippingDiv" style="display:none">
			<@billingaddress.display>
			</@billingaddress.display>
			
	    </div>
	    <input type="checkbox" name="remember" id="shippingCheckboxVal" onclick="checkboxShippingEvent()">
		</div>

</div>

<div id='parent_div_1'>
<div class ='child_div_1'>
	<label id="mode">Payment mode</label>
	<select id="mode" onchange="enterCardDetails(this.value)" >
		<option value="select">select</option>
		<option value="creditcard">credit card</option>
	</select>
	<br/>
	<div style="display:none" id="carddetails">
	Credit card number:<input type="number" name="cardnumber"><br/>
	Expire date:<input type="date" name="expirydate"><br/>
	Name on card:<input type="text" name="nameoncard"><br/>
	CVV:<input type="number" name="cvv"><br/>
	Amount:<input type="number" name="amount"><br/>
	<button id="btValidate" type="button" disabled>Validate</button>
	</div>
</div>
</div>

<div id='parent_div_1'>
<div class ='child_div_1'>
	<title>Shipping methods</title>
	<label for="shippingmode">choose a shipping method:</label>
	<select id="shippingmode">
		<option value="freeshipping">Free shipping ($0)</option>
		<option value="nextdaydelivery">Next day delivery ($20) </option>
		<option value="standard">standard ($7)</option>
	</select>
</div>
</div>

</div>
<div class ='child_div_5' id="displayItems" style="height: auto;
    display: inline-block;">
	<h3 align="center">Item details</h3>	
	<button onclick="addItem()" id="getItems">Add Item</button>	
	<input type="search" id="myInput" onkeyup="searchFunction()" placeholder="Search for items.." 
			title="Type in a name">
	<ul id="myUL">
	  <li><a href="#">Pen<input type="checkbox" name="items" value="1"> </a></li>
	  <li><a href="#">Laptop <input type="checkbox" name="items" value="2"></a></li>
	  <li><a href="#">Watch <input type="checkbox" name="items" value="3"></a></li>
	  <li><a href="#">Mobile <input type="checkbox" name="items" value="4"></a></li>
	  
	</ul>
		<div>
		<table id="dataTable" border="1">
			<thead>
				<tr>
					<th>ItemId</th>
					<th>Price</th>
					<th>Discount</th>
					<th>Quantity</th>
					<th>Salestax</th>
					<th>Total</th>
				</tr>
			</thead>
			<tbody>
				<#if items ??>
				<#list items as item>
				<tr>
					<td>${item.itemId}</td>
					<td>${item.price}</td>
					<td>${item.discount}</td>
					<td>${item.quantity}</td>
					<td>${item.salesTax}</td>
					<td>${item.total}</td>
				</tr>
				</#list>
				<#else>
					<tr>
					</tr>
				</#if>
			</tbody>
		</table>
	</div>
</div>

	<br/>
	
		<script>
		function onBillingSubmit(){
			alert("getCustomer Shipping Address !!!!")
			var request = new XMLHttpRequest();
		     request.open('GET', 'http://localhost:8080/billingaddress', true);
		     request.send(); 
			
			document.getElementById("billingDiv").style.display = "block";
			
		} 
		
		function onLoadOrderDetails(){
			//alert("getOrder details !!!!")
			var request = new XMLHttpRequest();
			
			request.onreadystatechange = function() {
			    if (this.readyState == 4 && this.status == 200) {
			    	document.getElementById("orderDiv").innerHTML = this.responseText;
			    }
			 };
		     request.open('GET', 'http://localhost:8080/orderdetails', true);
		     request.send(); 
			
		} 
		
	 function shippingSubmit(){
		alert("getCustomer Shipping Address !!!!")
		var request = new XMLHttpRequest();
		request.open('GET', 'http://localhost:8080/shippingaddress', true);
		request.send(); 
		document.getElementById("shippingDiv").style.display = "block";
		
	} 
	
	function openShippingForm() {
		alert("inside openForm()")
		  document.getElementById("myShippingForm").style.display = "block";
	
	}

	function closeShippingForm() {
	  document.getElementById("myShippingForm").style.display = "none";
	  document.getElementById("shippingDiv").style.display = "none";
	}
	
	function checkboxShippingEvent(){
		// Get the checkbox
		  var checkBox = document.getElementById("shippingCheckboxVal");
		  // Get the output text
		  var shippingDivData = document.getElementById("billingDiv");

		  // If the checkbox is checked, display the output text
		  if (checkBox.checked == true && shippingDiv.style.display == 'block' ){
			  shippingDivData.style.display = "block";
		  } else {
			  shippingDivData.style.display = "none";
		  }	
	}
	
	function enterCardDetails(value) {
		if(value=="select"){
		document.getElementById("carddetails").style.display = "none";
		}else
			document.getElementById("carddetails").style.display = "block";
		
	}
	
	function addItem(){
		var checkedValue;
		var inputElements = document.getElementsByName('items');
		for(var i=0; inputElements[i]; ++i){
		      if(inputElements[i].checked){
		           checkedValue = !checkedValue ?  inputElements[i].value :  checkedValue +','+ inputElements[i].value;
		      }
		} 
		
		var request = new XMLHttpRequest();
		request.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		    	document.getElementById("displayItems").innerHTML = this.responseText;
		    }
		    	 var bt = document.getElementById('btValidate');
		    	if(this.responseText){
		    		bt.disabled = false;
		    	}
		    
		 };
	     request.open('GET',  'http://localhost:8080/getItemDetails?q='+ checkedValue, true);
	     request.send(); 
		
	}

	function searchFunction() {
	    var input, filter, ul, li, a, i, txtValue;
	    input = document.getElementById("myInput");
	    filter = input.value.toUpperCase();
	    ul = document.getElementById("myUL");
	    li = ul.getElementsByTagName("li");
	    for (i = 0; i < li.length; i++) {
	        a = li[i].getElementsByTagName("a")[0];
	        txtValue = a.textContent || a.innerText;
	        if (txtValue.toUpperCase().indexOf(filter) > -1) {
	            li[i].style.display = "";
	        } else {
	            li[i].style.display = "none";
	        }
	    }
	}
	
	</script>
	
</body>
</html>