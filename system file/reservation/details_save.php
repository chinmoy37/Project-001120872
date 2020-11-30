<?php 
session_start();
include('includes/dbcon.php');
	
	$id = $_SESSION['id'];
	$venue = $_POST['venue'];
	$date = $_POST['date'];
	$time = $_POST['time'];
	$motif = $_POST['motif'];
	$pax = $_POST['pax'];
	$type = $_POST['type'];
	$ocassion = $_POST['ocassion'];
	$cid = 0;
	if(	$motif == "event") $cid = $_POST['combo_id'];
	$date=date("Y-m-d",strtotime($date));

	$query = mysqli_query($con, "SELECT * FROM `reservation` WHERE r_date='".$date."' AND r_status = 'Approved'");
			/*if(mysqli_num_rows($query) > 0)
			{

					echo "<script>alert ('Date is already reserved');
					window.history.back(); </script>";
			}
			else{
    // do something
			if (!mysqli_query($con,$query))
			{*/
				$price=0;
				$payable = 0;
		if(	$motif == "event"){
			$query = mysqli_query($con, "SELECT * FROM combo WHERE combo_id='$cid'");
			$row=mysqli_fetch_array($query);
			$price=$row['combo_price'];
			$payable=($pax*$price);
		}
		else{
			$query = mysqli_query($con, "SELECT * FROM combo WHERE combo_name='Daily'");
			$row=mysqli_fetch_array($query);
			$cid = $row['combo_id'];
			$ocassion = 'Daily';
			$price = $row['combo_price'];
			$payable=($pax*$price) * 26;
		}
		
		mysqli_query($con,"UPDATE reservation SET payable='$payable',balance='$payable',r_venue='$venue',r_date='$date',r_time='$time',r_motif='$motif'
		,r_ocassion='$ocassion',r_type='$type',pax='$pax',combo_id='$cid',price='$price' where rid='$id'")or die(mysqli_error($con)); 

			$_SESSION['id']=$id;

			
			echo "<script>document.location='payment.php'</script>";   
		//}
	//}
	
?>