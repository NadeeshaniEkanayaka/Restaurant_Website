<?php

$Name = $_POST['names'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$address = $_POST['address']; // Corrected the variable name
$payment = $_POST['payment'];
$cardnumber = $_POST['cardNumber']; // Added missing semicolon
$option = $_POST['deliveryOption'];
$branch = $_POST['branch'];

// Create connection
$conn = new mysqli("localhost", "root", "", "signature_cuisine");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare and execute SQL statement to insert data into the database
$stmt = $conn->prepare("INSERT INTO orderform (names, email, phone, address, payment, cardNumber, deliveryOption, branch) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("ssssssss", $Name, $email, $phone, $address, $payment, $cardnumber, $option, $branch);

if ($stmt->execute()) {
    $response = array('success' => true, 'message' => 'Signup successful');
    echo "<script>window.location.href='login.html';</script>";
} else {
    $response = array('success' => false, 'message' => 'Failed to signup');
}

$stmt->close();
$conn->close();

?>
