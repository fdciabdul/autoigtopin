<?php 
require('vendor/autoload.php'); 
require_once("kampang/autoload.php"); 

// If account is public you can query Instagram without auth
$user = $_POST['username'];
$jumlah = $_POST['jumlah'];
$email = $_POST['email'];
$userp = $_POST['usernamep'];
$pass = $_POST['password'];


use seregazhuk\PinterestBot\Factories\PinterestBot;

$bot = PinterestBot::create();

// Login
$bot->auth->login($email, $pass);

// Get lists of your boards
$boards = $bot->boards->forUser($userp);
$instagram = new \InstagramScraper\Instagram();
$medias = $instagram->getMedias($user, $jumlah);
foreach ( $medias as $media ) {
     
     $bot->pins->create($media['imageHighResolutionUrl'], $boards[0]['id'], $media['caption']);
     echo 'Caption: ' . $media['caption'] . '<br />';
	echo 'Image: ' . $media['imageHighResolutionUrl'];
	echo '<hr />';
}

?>