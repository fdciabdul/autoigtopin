<?php
require_once("kampang/autoload.php"); 

$instagram = new \InstagramScraper\Instagram();
$medias = $instagram->getMedias('google', 25);

echo '<pre>';
foreach ( $medias as $media ) {
	echo 'Caption: ' . $media['caption'] . '<br />';
	echo 'Image: ' . $media['imageHighResolutionUrl'];
	echo '<hr />';
}
echo '</pre>';