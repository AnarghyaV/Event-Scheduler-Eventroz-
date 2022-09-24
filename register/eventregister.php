<?php 
include 'dbconnection.php';
session_start();
error_reporting(0);
include 'dbconnection.php';
if(isset($_POST['submit']))
  {

	$regnumber = mt_rand(100000000, 999999999);
	$name=$_POST['name'];
    $email=$_POST['email'];
	$phone=$_POST['phone'];
    $adate=$_POST['adate'];
	$events=$_POST['events'];
    $transid=$_POST['transid'];
  
    $query=mysqli_query($con,"insert into tblregisterlist(regNumber,Name,Email,PhoneNumber,Dobdate,Events,TransactionID) value('$regnumber','$name','$email','$phone','$adate','$events','$transid')");
    if ($query) {
$ret=mysqli_query($con,"select regNumber from tblregisterlist where Email='$email' and  PhoneNumber='$phone'");
$result=mysqli_fetch_array($ret);
$_SESSION['regno']=$result['regNumber'];
 echo "<script>alert('Registration Successfull!')</script>";	
  }
  else
    {
      $msg="Something Went Wrong. Please try again";
    }

  
}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Registration Page</title>

    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <br>
  <body>
  <section class="ftco-section ftco-no-pt ftco-booking">
    	<div class="container-fluid px-0">
    		<div class="row no-gutters d-md-flex justify-content-end">
    			<div class="one-forth d-flex align-items-end">
    				<div class="text">
    					<div class="overlay"></div>
    					<div class="appointment-wrap">
    						<span class="subheading">Registration</span>
								<h3 class="mb-2">Make a registration</h3>
		    				<form action="#" method="post" class="appointment-form">
			            <div class="row">
			              <div class="col-sm-12">
			                <div class="form-group">
					              <input type="text" class="form-control" id="name" placeholder="Name" name="name" required="true">
					            </div>
			              </div>
			              <div class="col-sm-12">
			                <div class="form-group">
					              <input type="email" class="form-control" id="appointment_email" placeholder="Email" name="email" required="true">
					            </div>
			              </div>
				            <div class="col-sm-12">
			                <div class="form-group">
					              <div class="select-wrap">
		                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                      <select name="events" id="services" required="true" class="form-control">
		                      	<option value="">Select Events</option>
		                      	<?php $query=mysqli_query($con,"select * from tblevents");
              while($row=mysqli_fetch_array($query))
              {
              ?>
		                       <option value="<?php echo $row['EventName'];?>"><?php echo $row['EventName'];?></option>
		                       <?php } ?> 
		                      </select>
		                    </div>
					            </div>
			              </div>
			              <div class="col-sm-12">
			                <div class="form-group">
			                  <input type="text" class="form-control appointment_date" placeholder="Date of Birth" name="adate" id='adate' required="true">
			                </div>    
			              </div>
						  <div class="col-sm-12">
			                <div class="form-group">
			                  <input type="text" class="form-control" placeholder="Transaction ID" name="transid" id='transid' required="true">
			                </div>
			              </div>
			              <div class="col-sm-12">
			                <div class="form-group">
			                  <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone" required="true" maxlength="10" pattern="[0-9]+">
			                </div>
			              </div>
				          </div>
				          <div class="form-group">
			              <input type="submit" name="submit" value="Make a Registration" class="btn btn-primary">
			            </div>
			          </form>
		          </div>
						</div>
    			</div>
					<div class="one-third">
						<div class="img" style="background-image: url(istockphoto.jpg);">
						</div>
					</div>
    		</div>
    	</div>
    </section>
 <br>

  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>

