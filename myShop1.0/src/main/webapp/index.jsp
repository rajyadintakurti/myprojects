<html lang="en">
<head>
<meta charset="utf-8">
<link rel="shortcut icon" href="favicon.ico"> 
<title>myshop</title>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="./brand.js"></script>
<script src="./model.js"></script>
<script src="./home.js"></script>
<script src="./signup.js"></script>
<script src="./login.js"></script>

<style>
.ui-dialog .ui-dialog-buttonpane { 
    text-align: center;
}
.ui-dialog .ui-dialog-buttonpane .ui-dialog-buttonset { 
    float: none;
}
.ui-widget {
font-family: Verdana,Arial,sans-serif;
font-size: 0.8em;
}
body{margin:0px}
label, input { display:block; }
input.text { margin-bottom:12px; width:95%; padding: .4em; }
fieldset { padding:0; border:0; margin-top:25px; }
h1 { font-size: 1.2em; margin: .6em 0; }
div#users-contain { width: 350px; margin: 20px 0; }
div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
.ui-dialog .ui-state-error { padding: .3em; }
.validateTips { border: 1px solid transparent; padding: 0.3em; }
#wrap{width:100%;height:100%;background-color: ##FFFF19;align:center}
.top{margin-top:0px;font-size:30px;width:100%;height:102px;background-color:#232F3E;border: 1px solid #CECECE;}
.left {margin-left:10px;margin-top:15px;padding-top:10px;padding-left:10px;width:190px;height:110px;float:left;border: 1px solid #CECECE;border-radius: 15px; }
.middle{margin-left:50px;margin-top:15px;float:left;width:500px;height:300px;border: 1px solid #CECECE;border-radius: 15px;}
div#file{float:right}
center{margin-top:10px;}
h3,input {display: inline}
select{width:88px;}
.middle,#formid{padding-left:50px;padding-top:0px}
h2,input,input{display:inline}
img,h3{display:inline}
#stid{height:26px;background-color:transparent;float:left; border:none;width:360px;margin-left:8px}
#sbid{border: medium none; height: 26px;  width: 55px; float:right;border-radius: 0px 12px 12px 0px;border-top-right-radius:12px; border-bottom-right-radius:12px;background:#DBD91E url("search.png") no-repeat center;cursor:pointer}
.search-query{margin-top:1.4em;margin-left:130px;height:26px;width:36%; border-radius: 16px; border:5px solid #232F3E; background-color: white;float:left;}
.title{float:left;width:200px;margin-left:15px;margin-top:0.8em;}
.logsign{margin-top:0.8em;margin-left:40px;width:180px;height:27px;font-size:20px;float:left;}
.cart{margin-top:0.8em;margin-left:30px;width:100px;height:30px;font-size:20px;float:left;}
#signup {
    color:#FFFFFF;
    background:#232F3E;
    outline:none;
    border:none;
    cursor: pointer;
    font-size:15px;
    height: 27px;
}
#login {
    color:#FFFFFF;
    background:#232F3E;
    outline:none;
    border:none;
    cursor: pointer;
    font-size:15px;
    height: 27px
}
button,b,button{display:inline}

</style>
<script src ="./Category.js"></script>
<script>
 function isNumber(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57)){
        var msg =document.getElementById("message");
        msg.style.backgroundColor="#FCFAEA";
        msg.innerHTML ="Enter numeric values only";
        return false;}
    return true;
}

</script>

</head>
<body>

            <!-- login-->

<div id="login-form" title="Log In">
<p class="validateTips">All form fields are required</p>

<form method= "post" action ="" enctype="multipart/form-data">
<fieldset>
<input type="text" name="email" id="email" placeholder="Email" size="25" class="text ui-widget-content ui-corner-all">
<input type="password" name="password" id="password" placeholder="Password" size="25" class="text ui-widget-content ui-corner-all">
<a href=""> forgot password?</a>
<!-- Allow form submission with keyboard without duplicating the dialog button -->
<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
</fieldset>
</form>
</div>



            <!-- signup-->

<div id="signup-form" title="Sign Up" style="overflow: hidden" class="ui-widget">
<p class="validateTips" id="message1">All form fields are required.</p>

<form method= "post" action ="http://172.20.105.121:8080/myShop1.0/rest/signup/createUser">
<fieldset>
<input type="text" name="userName" id="userName" placeholder="User Name" size="25" class="text ui-widget-content ui-corner-all">
<input type="text" name="email" id="semail" placeholder="Email" size="25" class="text ui-widget-content ui-corner-all" >
<input type="password" name="password" id="spassword" placeholder="Password" size="25" class="text ui-widget-content ui-corner-all">
<input type="text" name="mobileNo" id="mobileNo" placeholder="MobileNo" size="25" class="text ui-widget-content ui-corner-all" >

<!-- Allow form submission with keyboard without duplicating the dialog button -->
<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
</fieldset>
</form>
</div>

               <!--create new category -->

<div id="dialog-form" title="Create new Category">
<p class="validateTips">All form fields are required.</p>

<form method= "post" action ="http://172.20.105.121:8080/myShop1.0/rest/category/insert">
<fieldset>
<input type="text" name="categoryName" id="categoryName" placeholder="Category Name" class="text ui-widget-content ui-corner-all">
<textarea id="categoryDescription" name="categoryDescription" placeholder="Category Description" class ="text ui-widget-content ui-corner-all"></textarea>

<!-- Allow form submission with keyboard without duplicating the dialog button -->
<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
</fieldset>
</form>
</div>

               <!--create new brand -->

<div id="dlog-form" title="Create new brand">
<p class="validateTips">All form fields are required.</p>

<form method= "post" action ="http://172.20.105.121:8080/myShop1.0/rest/brand/insert">
<fieldset>
<input type="text" name="brandName" id="brandName" placeholder="brand Name" class="text ui-widget-content ui-corner-all">
<select id="categoryId" name="categoryId" class="text ui-widget-content ui-corner-all"></select>

<!-- Allow form submission with keyboard without duplicating the dialog button -->
<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
</fieldset>
</form>
</div>

               <!--create new model -->

<div id="log-form" title="Create new model">
<p class="validateTips" id="message">All form fields are required.</p>

<form method= "post" action ="http://172.20.105.121:8080/myShop1.0/rest/model/insert">
<fieldset>
<input type="text" name="modelName" id="modelName" placeholder="Model Name" class="text ui-widget-content ui-corner-all">
<input type="text" name="price" id="price" placeholder="Price" onkeypress="return isNumber(event)" class="text ui-widget-content ui-corner-all">
<input type="text" name="quantity" id="quantity" placeholder="quantity" onkeypress="return isNumber(event)" class="text ui-widget-content ui-corner-all">
<textarea id="modelDescription" name="modelDescription" placeholder="Model Description" class ="text ui-widget-content ui-corner-all"></textarea>
<br/>
<select id="brandId" name= "brandId" class="text ui-widget-content ui-corner-all"></select>

<!-- Allow form submission with keyboard without duplicating the dialog button -->
<input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
</fieldset>
</form>
</div>

<div id="wrap">
<div class="top">
<div class="title">
<img src="logo.png" id="logo" name="logo" alt="logo" width="190" />
</div>
<form action="SearchServlet" method = "post"> 
<div class="search-query">
<input type="text" size="30" id="stid" placeholder="Search" name="stname" />
<input type="submit" id="sbid"  name="sbname" value="" />
</form>
</div>
<div class="logsign"><button id="login">login</button><b style="color:#FFFFFF">|</b>
<button id="signup">signup</button>
</div>
<div class="cart"><img src="cart.jpg" id="image" name="image" alt="cart" width="40" height="30" align="absmiddle" onclick="window.open ('continueshopping.html','_self',false)" style="cursor:pointer" /><h3 style="color:#FFFFFF;cursor:pointer" onclick="window.open ('continueshopping.html','_self',false)">Cart</h3></div>

</div>


<!-- Buttons-->
<div class="left">
<table style="font-size:15px">
<tr><td><button id="add-category" style="width:170px">Create new Category</button></td></tr>
<tr><td><button id="add-brand" style="width:170px">Create new Brand</button></td></tr>
<tr><td><button id="add-model" style="width:170px">Create new Model</button></td></tr>
</table>
</div>

<!--<button id="add-category">Create new Category</button>-->

<div class="middle">            
    <form id="formid" action="ProductionServlet" method="post" enctype="multipart/form-data"><br><br>
        <table>
        <caption style="color:#232F3E;font-size:24px">Product Registration Portal</caption>
            <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr>
                    <td><label>Category</lable></td>
                    <td>:&nbsp;<select id="category" name="category" ></select></td>
                </tr>
                <tr>
                    <td><label>Brand</label></td>
                    <td>:&nbsp;<select id="brand" name= "brand"></select></td>
</tr>
<tr><td><label>Model Name</label></td>
<td>:&nbsp;<select id="model" name= "model"></select></td></tr>
<!--<select id="model" ></select>-->
<tr><td><label>File Upload</label></td>
<td>:&nbsp;<input id="file" type="file" name="file" size="50" /></td></tr>
<tr><td colspan="2"><br/>
<input type="submit" value="submit" style="margin-left:20%"/></td></tr>

</table>	
</form>
</div>

</div>


</body>
</html>

