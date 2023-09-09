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
	
	$id_parent = $_GET['Id_Cat'];

    // get a product from products table
    $result = mysqli_query($db->connect(),"SELECT * FROM categories WHERE Parent = $id_parent");
	
	

    if (!empty($result)) {
        
		
        if (mysqli_num_rows($result) > 0) {
           
		   
			while ($resultC = $result->fetch_assoc()) {
				
				
				$cat= array();
				$cat["Id_Cat"] = $resultC["Id_Cat"];
				$ID = $resultC["Id_Cat"];
				$cat["Name"] = $resultC["Name"];
				$cat["Parent"] = ($resultC["Parent"]);
				
				$resultLeaf = mysqli_query($db->connect(),"SELECT * FROM categories WHERE Parent = $ID");
				
				if (mysqli_num_rows($resultLeaf) > 0) {
					
					$cat["isLeaf"] = false;
					
				}else{
					
					$cat["isLeaf"] = true;
					
				}
						
				array_push($response, $cat);
			}
			
            // echoing JSON response
            echo json_encode($response,JSON_UNESCAPED_UNICODE);
        } else {

			$response["message"] = "No categories found";
 
            // echo no users JSON
            echo json_encode($response);
        }
    } else {

	
		$response["message"] = "No categories found";
 
        // echo no users JSON
        echo json_encode($response);
    }
} else {
	
	$response["message"] = "Input not set";

}
?>