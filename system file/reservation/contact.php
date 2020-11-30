<?php include 'header.php';?>

<body>
	<?php include 'navbar.php';?>
	<?php include 'menu-tab.php';?>
	
		<div class = "content">
			<div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class = "col-md-8 col-lg-8">
							<div class="col-md-3 col-lg-3 hideme">
              <!-- Widget -->
              <div class="widget">
                <!-- Widget title -->
                <div class="widget-head">
                  <div class="pull-left">Contact Information</div>
                   
                  <div class="clearfix"></div>
                </div>
                <div class="widget-content">
                  <!-- Widget content -->
                  <div class="padd">
                                               <!-- Contact box -->
                             <div class="support-contact">
                                <!-- Phone, email and address with font awesome icon -->
                                
                                <p><i class="fa fa-phone"></i>&nbsp; 01988149800</p>
                                <hr />
                                <p><i class="fa fa-envelope"></i>&nbsp; Cafeteriacatering@gmail.com</p>
                                <hr />
                                <p><i class="fa fa-home"></i>&nbsp; New Market</p>
                <hr />
                              
                             </div>
                  </div>
                </div>

              </div> 

            </div>
				</div>
				<div class = "col-md-4 col-lg-4">
					<div class = "widget">
						<div class = "widget-head">
							Message/Feedback
						</div>
						<div class = "widget-content">
							<div class = "padd">
								<form class="form-horizontal" action = "add_message.php" method="post">                              
                                <div class="form-group">
                                  <label class="col-lg-3 control-label">Fullname</label>
                                  <div class="col-lg-8">
                                    <input name = "fullname" type="text" class="form-control" placeholder="Please type your name" required >
                                  </div>
                                </div>                                
                                <div class="form-group">
                                  <label class="col-lg-3 control-label">Email</label>
                                  <div class="col-lg-8">
                                    <input type="email"  name = "email" class="form-control" placeholder="Please type your email" required>
                                  </div>
                                </div>
								<div class="form-group">
                                  <label class="col-lg-3 control-label">Subject</label>
                                  <div class="col-lg-8">
                                    <input type="text" name = "subject" class="form-control" placeholder="Subject" required>
                                  </div>
                                </div>
                                
                                <div class="form-group">
                                  <label class="col-lg-3 control-label">Comments</label>
                                  <div class="col-lg-8">
                                    <textarea name = "message" class="form-control" rows="5" placeholder="Comments here....."required></textarea>
                                  </div>
                                </div>
								<div class="form-group">
                                  <div class="col-lg-offset-3 col-lg-8">
                                    <button  class="btn btn-sm btn-success btn-block">Send</button>                                  
                                  </div>
                                </div>
                              </form>

						</div>
						</div>
					</div>		
				</div>				
				
			</div>	
		</div>
	
		</div>
<?php include 'footer.php';?> 	
<?php include 'script.php';?>
</body>
</html>



