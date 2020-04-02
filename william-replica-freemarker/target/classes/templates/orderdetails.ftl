<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order details</title>
</head>
<body>
   <!--  <div align="center">
		<h3>Order details</h3>
		<b>sno</b>: 1
	<b>product-name : </b> senitizer
	</div> -->
	
	
	
	<!--  <#macro displayOrders> -->
	<!--  <#if orderDetails ??>-->
	<!-- <b>sno</b>: 1
	<b>product-name : </b> senitizer -->
	<!-- <strong>OrderNumber: </strong> ${orderDetails.orderNumber} &nbsp&nbsp&nbsp
	<strong>OrderDate:</strong>  ${orderDetails.orderDate} &nbsp&nbsp&nbsp
	<strong>Enter by User Name:</strong>  ${orderDetails.userWhoCreatedThisOrder} &nbsp&nbsp&nbsp
	<strong>Brand:</strong>  ${orderDetails.brandName} -->
	<!-- </#if>  -->
	<!--  </#macro>-->
	<!--  <@displayOrders></@displayOrders>-->
	
	<div align="center">
	    <h3>Order details</h3>	  
	<#if orderDetails ??>
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<strong>OrderNumber: </strong> ${orderDetails.orderNumber} &nbsp&nbsp&nbsp
	<strong>OrderDate:</strong>  ${orderDetails.orderDate} &nbsp&nbsp&nbsp
	<strong>Enter by User Name:</strong>  ${orderDetails.userWhoCreatedThisOrder} &nbsp&nbsp&nbsp
	<strong>Brand:</strong>  ${orderDetails.brandName}
	</#if>
	 
	</div>
	
	
</body>
</html>