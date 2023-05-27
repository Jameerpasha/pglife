<?php
session_start();

if (isset($_SESSION['user_id']) && $_SESSION['user_id']) {
    ?>
    <link href="css/sig.css" rel="stylesheet" />
    <p>Your request has been confirmed.</p>
    <div class="apopup">
        <img src="https://www.pngall.com/wp-content/uploads/9/Green-Tick-PNG-Photo.png">
        <h4>Thank You for choosing our PG!</h4>
        <p>Soon, We'll let you know if the room is available.</p>
        <button type="button" onclick="location='index.php'">OK</button>
    </div>
    <?php
}
else {
    // User is not logged in, display the login prompt
    ?>
    <link href="css/sig.css" rel="stylesheet" />
    <p>Your request has been failed. Kindly login first.</p>
    <div class="bpopup">
        <img src="https://cdn-icons-png.flaticon.com/512/295/295128.png">
        <p>Kindly login to check the availability of room.</p>
        <button type="button" onclick="location='index.php'">OK</button>
    </div>
<?php 
}
?>