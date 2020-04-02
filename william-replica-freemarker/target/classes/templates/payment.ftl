<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
</head>
<body>
	<br/>
	<label id="mode">Payment mode</label>
	<select id="mode" onchange="myFunction(this.value)" >
		<option value="select">select</option>
		<option value="creditcard">credit card</option>
	</select>
	<br/>
	<div style="display:none" id="carddetails">
	Credit card number:<input type="number" name="cardnumber" maxlength="16"><br/>
	Expire date:<input type="date" name="expirydate"><br/>
	Name on card:<input type="text" name="nameoncard"><br/>
	CVV:<input type="number" name="cvv"><br/>
	Amount:<input type="number" name="amount"><br/>
	</div>
	<script>
		function myFunction(value) {
			if(value=="select"){
			document.getElementById("carddetails").style.display = "none";
			}else
				document.getElementById("carddetails").style.display = "block";
			
		}
	</script>

</body>
</html>