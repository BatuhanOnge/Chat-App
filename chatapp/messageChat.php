<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "chatapp";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

session_start();  

if(isset($_POST['myInput'])){
  $text = $_POST['myInput'];
  $encodedtext = base64_encode($text);
  if($_SESSION['sess_user'] == "Batuhan"){
  $sql = "INSERT INTO messages (senderID, recieverID, messageContent) VALUES ('0', '1', '$encodedtext')";
  }else{
    $sql = "INSERT INTO messages (senderID, recieverID, messageContent) VALUES ('1', '0', '$encodedtext')";
  }
  if ($conn->query($sql) === TRUE)
    {

    }
    else
    {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

  }

  $getMsg = "SELECT senderID, messageContent, sentTime FROM messages";
  $resultMsg = $conn->query($getMsg);
  if ($resultMsg->num_rows > 0){
    while($row = $resultMsg->fetch_assoc()){
      $senderID = $row['senderID'];
      $time = date(" H:i", strtotime($row['sentTime']));
      echo "<div id='msgln' class='msgln $senderID border p-2 flex-column d-flex'>".base64_decode($row['messageContent'])."<br></div><div id='msgln' class='msgln $senderID time flex-column d-flex'>$time</div>";
    }
  }


$conn->close();

?>