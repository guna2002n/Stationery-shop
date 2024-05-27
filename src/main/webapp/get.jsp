<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>text style</title>
    <style>
        button{
            width: 100px;
            height: 35px;
            border-radius: 25px;
            background-color: aqua;
        }
    </style>
    
    <script>
        function display(){
            var request=new XMLHttpRequest();
            request.open("GET","http://localhost:8080/getallc",false);
            request.send();
            if(request.readyState==4 && request.status==200)
            {
               console.log("response recived");
               var response=request.response;
              document.getElementById("show").innerHTML=response;
              var r=JSON.parse(response);
              console.log(r.length);
              var html=` <center><style>th{color: aqua;font-weight: bolder; }table{border:solid 3px;}</style><table border="1" padding:3px color: red;td{margin-right: 10px;}><tr><th>Name</th><th>Email</th><th>password</th><th>Address</th><th>Number</th></tr>`;
              for(var i=0;i<r.length;i++)
              {
                html+=`<tr> <td>`+r[i].name+`</td><td>`+r[i].email+`</td><td>`+r[i].password+`</td><td>`+r[i].address+`</td><td>`+r[i].no+`</td></tr>`;
                console.log(r[i].name+"  "+r[i].email+"  "+r[i].password+"  "+r[i].address+"  "+r[i].no);
              }
              html+=`</table><c/enter>`;
              console.log(html);
              document.write(html);
              
            }
            else{
                console.log("not recived");
            }
            
        }
    </script>
</head>
<body>
    <p>To view the employee details:</p>
    <button onclick="display()">veiw</button>
    <div id="show">
<center></center>
    </div>
</body>
</html>