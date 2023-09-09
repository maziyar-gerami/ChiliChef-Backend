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
if (true) {

 
    // get a product from products table
    $result = mysqli_query($db->connect(),"SELECT * FROM categories");
	
	

    if (!empty($result)) {
        // check for empty result
        if (mysqli_num_rows($result) > 0) {
           
			
			while ($resultC = $result->fetch_assoc()) {
				$cat= array();
				$cat["Id_Cat"] = $resultC["Id_Cat"];
				$cat["Name"] = $resultC["Name"];
				$cat["Parent"] = ($resultC["Parent"]);
				array_push($response, $cat);
			}
 
            // echoing JSON response
            echo json_encode($response,JSON_UNESCAPED_UNICODE);
        } else {
            // no product found
            $response["success"] = 02;
            $response["message"] = "No product found";
 
            // echo no users JSON
            echo json_encode($response);
        }
    } else {
        // no product found
        $response["success"] = 03;
        $response["message"] = "No product found";
 
        // echo no users JSON
        echo json_encode($response);
    }
} else {
    // required field is missing
    $response["success"] = 0;
    $response["message"] = "Required field(s) is missing";
 
    // echoing JSON response
    echo json_encode($response);
}
?>