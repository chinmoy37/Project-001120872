<?php

    ini_set( 'display_errors', 1 );
    
    error_reporting( E_ALL );
    
    $from = "chinmoykumardas37@gmail.com";
    
    $to = "1000117@daffodil.ac";
    
    $subject = "Checking PHP mail";
    
    $message = "Miss Honey Pwedi ta na ni ma modify if anu man gd gusto ta nga messages";
    
    $headers = "From:" . $from;
    
    mail($to,$subject,$message, $headers);
    
    echo "<script>
		alert('Check Your Email Inbox for the details');		
	</script>";
	header('location:http://chimney.hol.es/');
?>
