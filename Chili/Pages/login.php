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
if (isset($_GET["userName"]) && isset($_GET["Password"])) {
	
	$userName = $_GET['userName'];
	$password = $_GET['Password'];

    // get a product from products table
    $result = mysqli_query($db->connect(),"SELECT * FROM users WHERE Username = '$userName'");
	
	
    if (!empty($result) && mysqli_num_rows($result) ==1) {
        // check for empty result

           
		$resultC = $result->fetch_assoc();
		$cat= array();
		$cat["Password"] = $resultC["Pass"];
			
		if ($cat["Password"]== $password){
			
			$cat["success"]	= true;			
			$cat["id_User"] = $resultC["id_User"];
			$cat["Username"] = $resultC["Username"];
			$cat["Name"] = $resultC["Name"];
			$cat["Country"] = $resultC["Country"];
			$cat["Score"] = $resultC["Score"];
			$cat["Level"] = $resultC["Level"];
			$cat["Paid"] = $resultC["Paid"];
			$cat["Pic_Name"] = $resultC["Pic_Name"];
			$cat["Description"] = $resultC["Description"];
				
			array_push($response, $cat);
				
			echo json_encode($response);
				
		}else{
			
			$cat["success"]	= false;	
			
			array_push($response, $cat);
			
			echo json_encode($response);
			
		}
 
            // echoing JSON response
            
    } else {
        // no product found
        $cat["success"] = false;
		
		array_push($response, $cat);

 
        // echo no users JSON
        echo json_encode($response);
    }
} else {

    $cat["success"] = false;
	
	array_push($response, $cat);
			
	echo json_encode($response);
 
}
?>