<?php
// Start the session to access login information

session_start();

// Check if the user is logged in.
/
/ If they are, redirect to the dashboard.
if (isset($_SE
SSION["loggedin"]) && $_SESSION["loggedin"] === true) {

    header("location: dashboard.php");
    exit;
} else
 {
    // If they are not logged in, redirect to the log
in page.
    header("location: https://www.google.com/");
    exit;

}
?>
