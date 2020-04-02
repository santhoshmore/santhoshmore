<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Capture Page</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial;
}

.split {
  height: 50%;
  width: 25%;
  position: fixed;
  z-index: 1;
  top: 0;
  overflow-x: hidden;
  padding-top: 20px;
  border: 1px solid black;
}

.left {
  left: 0;
  
}

.right {
  right: 0;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.vl {
  border-right: 1px solid black;
  height: 500px;
}

</style>

</head>
<body>
	<div>
		<div class="split left">
			<#include "*/billingaddress.ftl">
		</div>
		
		<div style="margin-left:200px;">
			<#include "*/shippingaddress.ftl">
		</div>
	</div>
</body>
</html>