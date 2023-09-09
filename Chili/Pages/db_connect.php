<?php
 header('Content-Type: application/json; charset=utf-8');
/**
 * A class file to connect to database
 */
class DB_CONNECT {
 
	public static $con ="";
    // constructor
    function __construct() {
        // connecting to database
        $this->connect();
    }
 
    // destructor
    function __destruct() {
        // closing db connection
    }
 
    /**
     * Function to connect with database
     */
    function connect() {
        // import database connection variables
        require_once __DIR__ . '/db_config.php';
 
        // Connecting to mysql database
        $con = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD,DB_DATABASE) or die(mysqli_connect_error());
		mysqli_set_charset($con, "utf8"); 

		
		
		
		
		return $con;

    }
 
 
}
 
?>