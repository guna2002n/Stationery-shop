<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>*{
        padding: 0;
        margin: 0;
    }
    .menubar{
        margin-left: auto;
        margin-right: auto;
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
        margin-bottom: 5px;
           
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
    .container{
            background-color: aliceblue;
            height: 700px;
            width: 80%;
            margin-top: 10px;
            margin-left: 10%;
            background-attachment: fixed;
        }
        .name{
           
            height: 200px;
            display: inline-block;
            width: 60%;
            margin-left: 10%;
        }
        .pic{
            height: 200px;
            width: 22%;
            float: right;
            margin-right: 5%;
            border-radius: 50%;
        }
        img{
            height: 200px;
            width: 100%;
            border-radius: 50%;
            margin-right: 25px;
        }
        .history{
            margin-left: 10%;
            margin-right: 15%;
        }
        p{
            margin-left: 10%;
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
    <div class="container">
        <div class="name">
            <h1>Guna.N</h1>
            <h2>gunag6495@gmail.com</h2>
        </div>
        <div class="pic">
            <img src="/image/55.jpg" alt="">
        </div>
        <div class="history">
            <h1>History:</h1>
            <p>He is born in <b>11th Feb 2002 in Puduchery</b>. And he Studied his higih school in <b>Apollo English High School
               , Kuruvinathem
            </b>
                And He  completed his Higher Secondry in <b>Prof. Annoussamy Higher Secondry School , Bahour.</b>
                Then he completed his UG in <b>2023</b>From<b> Rajiv Gandhi College Of Engineering
                     And Technology , kirumabakam.</b> Specalization in <b>Computer Science Engineering</b><br>
                     <h1>Feautre will update soon!!</h1>
            </p>
        </div>

        <br>
    </div>


</body>
</html>