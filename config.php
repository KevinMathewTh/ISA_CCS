<?php

//config.php

//Include Google Client Library for PHP autoload file
require_once 'vendor/autoload.php';

//Make object of Google API Client for call Google API
$google_client = new Google_Client();

//Set the OAuth 2.0 Client ID
$google_client->setClientId('563511338937-ark36pvn5u0469klffus8ijqr900l2h4.apps.googleusercontent.com');

//Set the OAuth 2.0 Client Secret key
$google_client->setClientSecret('gHSmO8WN-RO3ak0-36GT_0Lg');

//Set the OAuth 2.0 Redirect URI
$google_client->setRedirectUri('http://localhost/CCS/index.php');

//
$google_client->addScope('email');

$google_client->addScope('profile');

//start session on web page
session_start();

?>