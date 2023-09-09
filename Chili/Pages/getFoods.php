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
if (isset($_GET["Id_Cat"])) {
	
	$id_Cat = $_GET['Id_Cat'];

    // get a product from products table
    $result = mysqli_query($db->connect(),"SELECT * FROM categories WHERE Id_cat_l = $id_Cat");
	
	

    if (!empty($result)) {
        
		
        if (mysqli_num_rows($result) > 0) {
           
		   
			while ($resultC = $result->fetch_assoc()) {
				
				
				$cat= array();
				$cat["id_Food"] = $resultC["id_Food"];
				$cat["Title"] = $resultC["Title"];
				$cat["Recepies"] = $resultC["Recepies"];
				$cat["Likes"] = $resultC["Likes"];
				$cat["Score"] = $resultC["Score"];
				$cat["Time"] = $resultC["Time"];
				$cat["Meal"] = $resultC["Meal"];
				$cat["isFree"] = $resultC["isFree"];
				$cat["Pic_URL"] = ($resultC["Pic_URL"]);
				$cat["Writer"] = ($resultC["Writer"]);
				
						
				array_push($response, $cat);
			}
			
            // echoing JSON response
            echo json_encode($response,JSON_UNESCAPED_UNICODE);
        } else {

			$response["message"] = "No foods found";
 
            // echo no users JSON
            echo json_encode($response);
        }
    } else {

	
		$response["message"] = "No foods found";
 
        // echo no users JSON
        echo json_encode($response);
    }
} else {
	
	$response["message"] = "Input not set";

}
?>