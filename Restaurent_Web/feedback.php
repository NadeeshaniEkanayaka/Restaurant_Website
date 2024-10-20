<?php
    $name = $_POST['names'];
    $email = $_POST['email'];
    $feedback = $_POST['feedback'];
    $rating = $_POST['rating'];

    // Create connection
    $conn = new mysqli("localhost", "root", "", "signature_cuisine");

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Prepare and execute SQL statement to insert data into the database
    $stmt = $conn->prepare("INSERT INTO feedback (names, email, feedback, rating) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("sssi", $name, $email, $feedback, $rating);

    if ($stmt->execute()) {
        // Successful submission
        $response = array('success' => true, 'message' => 'Feedback submitted successfully.');
        echo "<script>window.location.href='Home.html';</script>"; // Redirect to a thank-you page after submission
    } else {
        // Error in submission
        $response = array('success' => false, 'message' => 'Failed to submit feedback. Please try again later.');
    }

    $stmt->close();
    $conn->close();

?>
