<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order created Successfully</title>
<style>
/* Popup box BEGIN */
.hover_bkgr_fricc{
    background:rgba(0,0,0,.4);
    cursor:pointer;
    display:none;
    height:100%;
    position:fixed;
    text-align:center;
    top:0;
    width:100%;
    z-index:10000;
}
.hover_bkgr_fricc .helper{
    display:inline-block;
    height:100%;
    vertical-align:middle;
}
.hover_bkgr_fricc > div {
    background-color: #fff;
    box-shadow: 10px 10px 60px #555;
    display: inline-block;
    height: auto;
    max-width: 551px;
    min-height: 100px;
    vertical-align: middle;
    width: 60%;
    position: relative;
    border-radius: 8px;
    padding: 15px 5%;
}
.popupCloseButton {
    background-color: #fff;
    border: 3px solid #999;
    border-radius: 50px;
    cursor: pointer;
    display: inline-block;
    font-family: arial;
    font-weight: bold;
    position: absolute;
    top: -20px;
    right: -20px;
    font-size: 25px;
    line-height: 30px;
    width: 30px;
    height: 30px;
    text-align: center;
}
.popupCloseButton:hover {
    background-color: #ccc;
}
.trigger_popup_fricc {
    cursor: pointer;
    font-size: 20px;
    margin: 20px;
    display: inline-block;
    font-weight: bold;
}
</style>

</head>
<body>
	<h3>Create Order</h3>
	
	<!-- <button type="button" value="Submit" onclick="crossCheckAllPages()"><a class="trigger_popup_fricc">
	      Submit </a></button> -->
	      
	<a class="trigger_popup_fricc">Click here to show the popup</a>

<div class="hover_bkgr_fricc">`
    <span class="helper"></span>
    <div>
        <div class="popupCloseButton">&times;</div>
        <p>Add any HTML content<br />inside the popup box!</p>
    </div>
</div>
<script>
	function crossCheckAllPages(){
		
	}
	$(window).load(function () {
	    $(".trigger_popup_fricc").click(function(){
	       $('.hover_bkgr_fricc').show();
	    });
	    $('.hover_bkgr_fricc').click(function(){
	        $('.hover_bkgr_fricc').hide();
	    });
	    $('.popupCloseButton').click(function(){
	        $('.hover_bkgr_fricc').hide();
	    });
	});
</script>
</body>
</html>