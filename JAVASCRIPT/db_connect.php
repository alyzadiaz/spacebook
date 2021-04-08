<?php
  $servername = "localhost";
  $username = "root";
        
  $conn = new mysqli($servername, $username);
        
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  echo "CONNECTED";

  $sql = "SELECT mission_id FROM spacebook.missions";
  $data = $conn->query($sql);
  $mission_ids = array();
  
  $file = fopen("ids.txt","w") or die("Unable to open file!");

  if ($data->num_rows > 0) {
    while($row = $data->fetch_assoc()) {
      fwrite($file, $row["mission_id"]);
      fwrite($file,"\n");
    }
  }else{
    echo "0 results";
  }

  fclose($file);

  $conn->close();
?>