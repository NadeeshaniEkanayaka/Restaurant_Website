function checkLogin() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    // Replace these with your actual login credentials
    var correctUsername = "admin";
    var correctPassword = "admin";

    if (username === correctUsername && password === correctPassword) {
        // Redirect to the login page if login is successful
        window.location.href = "";
        return false; // Prevent form submission
    } else if (username !== correctUsername) {
        // Show error message for incorrect username
        document.getElementById("error-message").textContent = "Username is incorrect.";
    } else {
        // Show error message for incorrect password
        document.getElementById("error-message").textContent = "Password is incorrect.";
    }

    return false; // Prevent form submission
}

function redirectToSignup() {
    window.location.href = "signup.html";
}
