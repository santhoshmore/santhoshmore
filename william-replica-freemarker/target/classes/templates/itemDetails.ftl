<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
<title>Item details</title>

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
<body id="displayItems">
	<h3>Item details</h3>
	<button onclick="addItem()" id="getItems">Add Item</button>	
	
	<input type="search" id="myInput" onkeyup="myFunction()" placeholder="Search for items.." 
			title="Type in a name">
	<ul id="myUL">
	  <li><a href="#">PEN<input type="checkbox" name="items" value="1"> </a></li>
	  <li><a href="#">Laptop <input type="checkbox" name="items" value="2"></a></li>
	  <li><a href="#">Watch <input type="checkbox" name="items" value="3"></a></li>
	  <li><a href="#">Mobile <input type="checkbox" name="items" value="4"></a></li>
	  <li><a href="#">Charger <input type="checkbox" name="items" value="5"></a></li>
	</ul>
<script>

function addItem(){
	var checkedValue;
	var inputElements = document.getElementsByName('items');
	for(var i=0; inputElements[i]; ++i){
		
	      if(inputElements[i].checked){
	           checkedValue = !checkedValue ?  inputElements[i].value :  checkedValue +','+ inputElements[i].value;
	           alert('checkedValue : ' , checkedValue);
	         
	      }
	} 
	
	console.log(checkedValue);
	
	var request = new XMLHttpRequest();
	request.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	    	document.getElementById("displayItems").innerHTML = this.responseText;
	    }
	 };
     request.open('GET',  'http://localhost:8080/getItemDetails?q='+ checkedValue, true);
     request.send(); 
	
}

function myFunction() {
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
	<div>
		<table id="dataTable" width="350px" border="1">
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
	
</body>
</html>