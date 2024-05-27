<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
*{
    margin: 0;
    padding: 0;
    
}
body{
    background-image: url(/image/stationary.png);
    background-size: cover;
}
.container{
    position: relative;
    margin-top: 80px;
  
}
.inputs{
    
    margin-left: auto;
    margin-right: auto;
    height: 510px;
    width: 35%;    
    border-radius: 23px;
    border:  7px solid rgb(7, 7, 7);
}
.inputs input[type=text]
{
    height: 40px;
    width: 50%;
    margin-top: 10px;
    margin-bottom: 10px;
    border-radius: 150px;
   border: solid black;
   font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
.inputs input[type=submit]
{
    height:40px ;
    width: 25%;
    border-radius: 20px;
    margin-bottom: 10px;
    font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    

}
.inputs input[type=text]:hover
{
    width: 65%;
    border: solid aqua;
}
.inputs input[type=submit]:hover
{
    width: 30%;
    border: solid aqua;
}
h1{
    color: white;
    text-decoration: underline;
}
h4{
    color: red;
    padding: 5px;
    background-color: wheat;
}

</style>
</head>
<body>
<div class="container">
        
        <div class="inputs">
            <center><br>
            <h4>${error }</h4>
                <h1>Signup</h1>
                <form action="/signup" method="post">
                <input type="text" placeholder="Enter the Name" name="name"><br>
                <input type="text" placeholder="Enter the Phone" name="no"><br>
                <input type="text" placeholder="Enter the email" name="email"><br>
                <input type="text" placeholder="Enter the password" name="password"><br>
                <input type="text" placeholder="Enter the Address" name="address"><br>
                <input type="submit" ><br>
            </form>
           
            </center>
        </div>
    </div>
</body>
</html>