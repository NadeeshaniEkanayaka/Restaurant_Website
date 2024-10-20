<?php

$name = $_POST['names'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$address = $_POST['address'];
$comment = $_POST['comment']; // Added missing semicolon

// Create connection
$conn = new mysqli("localhost", "root", "", "signature_cuisine");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare and execute SQL statement to insert data into the database
$stmt = $conn->prepare("INSERT INTO contactus (names, email, phone, address, comment) VALUES (?, ?, ?, ?, ?)"); // Removed extra comma
$stmt->bind_param("sssss", $name, $email, $phone, $address, $comment);

if ($stmt->execute()) {
    // Successful submission
    $response = array('success' => true, 'message' => 'Contact form submitted successfully.');
    echo "<script>window.location.href='thank_you.html';</script>"; // Redirect to a thank-you page after submission
} else {
    // Error in submission
    $response = array('success' => false, 'message' => 'Failed to submit contact form. Please try again later.');
}

$stmt->close();
$conn->close();

?>
