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
    margin-top: 170px;
  
}
.inputs{
    
    margin-left: auto;
    margin-right: auto;
    height: 370px;
    width: 35%;
    
    border-radius: 23px;
    border:  7px solid rgb(7, 7, 7);
}
.inputs input[type=text]
{
    height: 40px;
    width: 50%;
    margin-top: 20px;
    margin-bottom: 20px;
    border-radius: 150px;
   border: solid aqua;
   font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
.inputs input[type=submit]
{
    height:40px ;
    width: 25%;
    border-radius: 20px;
    margin-top: 20px;
    font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;

}
.inputs input[type=text]:hover
{
    height: 40px;
    width: 65%;
    
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
a{
    margin-right: 10px;
    margin-left: 20px;
}
.inputs a{
    text-decoration: none;
    background-color: aliceblue;
    padding: 5px;
    border-radius: 20px;
}
h3{
    color: red;
    
}

</style>
</head>
<body>
  <div class="container">
        
        <div class="inputs">
            <center><br>
                <h3> ${error}</h3>
                <h1>Login</h1>
               
                <form action="/login" method="post">
                <input type="text" placeholder="Enter the email" name="email"><br>
                <input type="text" placeholder="Enter the password" name="password"><br>
                <input type="submit" ></form><br>
                <a href="/signup">SignUp</a><a href="/forget">forget</a>
            </center>
        </div>
    </div>
</body>
</html>