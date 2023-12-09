<?php

require_once('connect.php');

$fname = $_POST['firstname'];
$lname = $_POST['lastname'];
$email = $_POST['email'];
$msg = $_POST['comments'];

$errors = [];


$fname = trim($fname);
$lname = trim($lname);
$email = trim($email);
$msg = trim($msg);

if(empty($lname)) {
    $errors['lastname'] = 'Please provide your Last Name';
}

if(empty($fname)) {
    $errors['firstname'] = 'Please provide your First Name';
}

if(empty($msg)) {
    $errors['comments'] = 'You must type a message before sending';
}

if(empty($email)) {
    $errors['email'] = 'Please provide an email';
} else if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $errors['legit_email'] = 'Please provide a REAL email';
}

if(empty($errors)) {


    $query = "INSERT INTO clients (firstname, lastname, email, comments) VALUES('$fname','$lname','$email','$msg')";

    if(mysqli_query($connect, $query)) {


$to = 'jodienemman@gmail.com';
$subject = 'Portfolio Mail! URGENT';

$message = "Someone emailed you:\n\n";
$message .= "Full Name: ".$fname." ".$lname."\n";
$message .= "Email: ".$email."\n\n";


mail($to,$subject,$message);

header('Location: received.php');

}


}


?>