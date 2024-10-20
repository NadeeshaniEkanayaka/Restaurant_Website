<?php

    $restype = $_POST['restype'];
    $date = $_POST['dates'];
    $time = $_POST['timess'];
    $guest = $_POST['guests'];
    $name = $_POST['names'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $spe_req = $_POST['special_requests'];


    // Create connection
    $conn = new mysqli("localhost","root","","signature_cuisine");

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Prepare and execute SQL statement to insert data into the database
    $stmt = $conn->prepare("INSERT INTO reservation (restype, dates, timess, guests, names, email, phone, special_requests) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssssss", $restype, $date, $time, $guest, $name,$email, $phone ,$spe_req,);
    
    if ($stmt->execute()) {
        $response = array('success' => true, 'message' => 'Signup successful');
        echo "<script>window.location.href='Home.html';</script>";
    } else {
        $response = array('success' => false, 'message' => 'Failed to signup');
    }

    $stmt->close();
    $conn->close();


?>
