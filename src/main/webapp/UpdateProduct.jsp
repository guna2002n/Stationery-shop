<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        input {
            margin-top: 10px;
            margin-bottom: 10px;
        }
        .conte input [type=text]
        {
            height: 40px;
            width: 50%;
        }
       
    </style>
</head>
<body>
    <div class="conte">
   <center> <h1>UPDATE PRODUCT</h1>
    <form action="/updateprduc" method="post">
        <input type="text" placeholder="Enter the product name" name="product"><br>
        <input type="text" placeholder="Enter the no of quandity" name="no"><br>
        <input type="submit">
    </form></center></div>

</body>
</html>