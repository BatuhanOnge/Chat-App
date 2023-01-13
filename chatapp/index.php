<?php
    $username=$_POST["username"];
    $password=$_POST["password"];  
    $password=md5($password);


    $con=mysqli_connect('localhost','root','','chatapp');  
     
    session_start();
    $query=mysqli_query($con, "SELECT * FROM users WHERE username='".$username."' AND password='".$password."'");  
    $numrows=mysqli_num_rows($query);  
    if($numrows!=0)  
    {  
      while($row=mysqli_fetch_assoc($query))  
     {  
      $dbusername=$row['username'];  
      $dbpassword=$row['password'];  
     }  

    //  Batuhan pw: 123456
    //  Mehmet pw: 456789
  
     if($username === $dbusername && $password === $dbpassword){
      $_SESSION['sess_user'] = $username;

      if($username === "Batuhan"){
        $username2 = "Mehmet";
      }else{
        $username2 = "Batuhan";
      }
      ?>
      <script type="text/javascript">
        var loggedUser = <?=json_encode($username)?>;
        var recipUser = <?=json_encode($username2)?>;
    </script>
      <?php
      /* Redirect browser */  
     }  
    } else {  
    echo "Invalid username or password!";  
    header("Location: login.html"); 
    }  
  
   ?>
   
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Chat App</title>
    <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  
</head>
<body>
  <div id="box" class="container" style="min: height 100%; height: 100%;">
    <div class="row">
      <div id="menu d-inline-block" class="col-1" >
        <button class="user" id="exit"><svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-arrow-left-short" viewBox="0 0 16 16">
          <path fill-rule="evenodd" d="M12 8a.5.5 0 0 1-.5.5H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5a.5.5 0 0 1 .5.5z"/>
        </svg></button>
        
          
        
      </div>
      <div class="col fs-5 fw-semibold text-start d-inline-block p-2">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
              <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
              <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
            </svg>
            <div class="d-inline-block"><p id="recip"></p></div>
            
          </div>
    </div>
    

    <div id="chatbox" ></div>

    <div class="">
  <form class="form row row-cols-lg-auto" name="myForm" id="myForm">
  <div class="input-group">
    <input class="form-control" type="text" name="myInput" value="">
    <button class="btn btn-primary input-group-append" name="mySubmit" type="submit" >Gönder</button>
  </div>
  </form>
</div>
  </div>

  <script src="script.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
  </body>
</html>