<html>
<head>
	<title>User Address</title>
</head>
<body>
	
	
	<#macro display>
	<#if useraddress ??>
		${useraddress.firstName}
		${useraddress.lastName}<br/>
		${useraddress.location}<br/>
		${useraddress.city}<br/>
		${useraddress.state}<br/>
		${useraddress.country}<br/>
		${useraddress.zipcode}<br/>
		${useraddress.phoneNumber}<br/>
		${useraddress.email}<br/>
	</#if>
	</#macro>
	<@display></@display>
</body>
</html>