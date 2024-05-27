<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

*{
    padding: 0;
    margin: 0;
}
.menubar{
    margin-left: auto;
    margin-right: auto;
}
body{
    background-image: url(/image/stationary.png);
    background-size: cover;
}
.menubar{
    background-color: black;
    box-shadow: green 7px 3px 7px 3px;
    
}
.menubar h2{
    display: inline-block;
    
    color: wheat;
}
.menubar ul{
   margin-left: 150px;
   display: inline-block;
   
    
}
.menubar ul li{
    display: inline-flex;
    padding: 25px;
    text-align: center;
    color: white;
    
}
.menubar ul li a{
    text-decoration: none;
    color: white;
       
}
.menubar h2{
    display: inline-block;
    margin-left: 20px;
    
}
 .menubar ul li a:hover{
    background: rgb(221, 227, 221);
    border: 3px;
    border-radius: 5px;
    color: green;
}
.account_sub{
        display: none;
}
.menubar ul li :hover .account_sub 
{
    display:block;
    position: absolute;
}
h1{
margin-top:20px;
padding: 5px;


}
</style>
</head>
<body>
<div class="menubar">
        <h2>Stationary Shop</h2>
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/products">Products</a></li>
            <li><a href="/getallo">Orders</a></li>
            <li><a href="/signup">Sign Up</a>
            <li><a href="/login">Login</a></li>
            <li><a href="/about">AboutUs</a></li>
        </ul>
    </div>
    <h1>${user }</h1>
    
    
</body>
</html>