<?php
 error_reporting(E_ALL); ini_set('display_errors', 1);
 header('Content-Type: application/json; charset=utf-8');
 
/*
 * Following code will get single product details
 * A product is identified by product id (pid)
 */
 
// array for JSON response
$response = array();
 
// include db connect class
require_once __DIR__ . '/db_connect.php';
 
// connecting to db
$db = new DB_CONNECT();

 
// check for post data
if (isset($_GET["userName"]) && isset($_GET["Password"]) && isset($_GET["name"])) {
	
	$userName = $_GET['userName'];
	$password = $_GET['Password'];
	$name = $_GET["name"];
	
	$result = mysqli_query($db->connect(),"SELECT * FROM users WHERE Username = '$userName'");
	
	
    if (!empty($result) && mysqli_num_rows($result) ==1) {
		
		$response["success"] =0;
	}
	
	else{

		$res = mysqli_query ($db->connect(),"INSERT INTO users (Username, Pass, Name)
		VALUES ('$userName', '$password', '$name')");
		if ($res === true){
			
			$response["success"] =1;
			
		}
		
		if ($res === false){
			
			$response["success"] =2;
			
		}
	}

	echo json_encode($response);

}
?>