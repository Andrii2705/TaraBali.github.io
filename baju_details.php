<?php 
session_start();
include('includes/config.php');
include('includes/format_rupiah.php');
error_reporting(0);
?>


<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title><?php echo $pagedesc;?></title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<link href="assets/css/slick.css" rel="stylesheet">
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<link href="assets/css/font-awesome.min.css" rel="stylesheet">
		<link rel="stylesheet" id="switcher-css" type="text/css" href="assets/switcher/css/switcher.css" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/red.css" title="red" media="all" data-default-color="true" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/orange.css" title="orange" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/blue.css" title="blue" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/pink.css" title="pink" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/green.css" title="green" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/purple.css" title="purple" media="all" />
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/favicon-icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/favicon-icon/apple-touch-icon-114-precomposed.html">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/favicon-icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/images/favicon-icon/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="admin/img/fav.jpeg">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet"> 
</head>
<body>

<!-- Start Switcher -->
<?php include('includes/colorswitcher.php');?>
<!-- /Switcher -->  

<!--Header-->
<?php include('includes/header.php');?>
<!-- /Header --> 

<!--Listing-Image-Slider-->

<?php 
$id=intval($_GET['id']);
$sql = "SELECT baju.*, jenis.* from baju, jenis WHERE baju.id_jenis=jenis.id_jenis AND baju.id_baju='$id'";
$query = mysqli_query($koneksidb,$sql);
if(mysqli_num_rows($query)>0)
{
while($result = mysqli_fetch_array($query))
{ 
//	$_SESSION['brndid']=$result['id_merek'];  
?>  

<section id="listing_img_slider">
  <div><img src="admin/img/baju/<?php echo htmlentities($result['gambar1']);?>" class="img-responsive" alt="image" width="900" height="560"></div>
  <div><img src="admin/img/baju/<?php echo htmlentities($result['gambar2']);?>" class="img-responsive" alt="image" width="900" height="560"></div>
  <div><img src="admin/img/baju/<?php echo htmlentities($result['gambar3']);?>" class="img-responsive" alt="image" width="900" height="560"></div>
</section>
<!--/Listing-Image-Slider-->


<!--Listing-detail-->
<section class="listing-detail">
  <div class="container">
    <div class="listing_detail_head row">
      <div class="col-md-9">
        <h2><?php echo htmlentities($result['nama_baju']);?></h2>
      </div>
      <div class="col-md-3">
        <div class="price_info">
          <p><?php echo htmlentities(format_rupiah($result['harga']));?> </p>/ Hari
         
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-9">
        <div class="main_features">
        </div>
        <div class="listing_more_info">
          <div class="listing_detail_wrap"> 
            <!-- Nav tabs -->
            <ul class="nav nav-tabs gray-bg" role="tablist">
              <li role="presentation" class="active"><a href="#vehicle-overview " aria-controls="vehicle-overview" role="tab" data-toggle="tab">Deskripisi Baju</a></li>
			</ul>
            
            <!-- Tab panes -->
            <div class="tab-content"> 
              <!-- vehicle-overview -->
              <div role="tabpanel" class="tab-pane active" id="vehicle-overview">                
                <p><?php echo htmlentities($result['deskripsi']);?></p>
              </div>
            </div>
          </div>
        </div>
<?php }} ?>
   
      </div>
      
      <!--Side-Bar-->
      <aside class="col-md-3">

		<div class="sidebar_widget">
          <div class="widget_heading">
            <h5><i class="fa fa-envelope" aria-hidden="true"></i>Sewa Sekarang</h5>
          </div>
          <form method="get" action="booking.php">
			<input type="hidden" class="form-control" name="id" value=<?php echo $id;?> required>
			<?php if($_SESSION['ulogin'])
              {?>
              <div class="form-group" align="center">
                <button class="btn" align="center">Sewa Sekarang</button>
              </div>
              <?php } else { ?>
				<a href="#loginform" class="btn btn-xs uppercase" data-toggle="modal" data-dismiss="modal">Login Untuk Menyewa</a>

              <?php } ?>
          </form>
        </div>
		<div class="share_vehicle">
          <p>Share: <a href="https://www.facebook.com/people/Tara-Bali-Wedding/100070495268062/"><i class="fa fa-facebook-square" aria-hidden="true"></i></a> <a href="https://instagram.com/tara_baliwedding?igshid=YmMyMTA2M2Y="><i class="fa fa-instagram" aria-hidden="true"></i></a> <a href="https://www.google.com/maps/place/Tara+Bali+Wedding/@-8.3980286,115.2187338,15z/data=!4m6!3m5!1s0x2dd221a39b6bfc4b:0xac85a347d22ea50c!8m2!3d-8.3980286!4d115.2187338!16s%2Fg%2F11nxn_dlvd?hl=id"><i class="fa fa-google-plus-square" aria-hidden="true"></i></a> </p>
        </div>
              </aside>
      <!--/Side-Bar--> 
    </div>
    
    <div class="space-20"></div>
    <div class="divider"></div>
    
    <!--Similar-Cars-->
    <div class="similar_cars">
      <h3>Baju Lainnya</h3>
      <div class="row">
<?php 
$sql1="SELECT baju.*, jenis.* FROM baju, jenis WHERE baju.id_jenis=jenis.id_jenis AND baju.id_baju!='$id'";
$query1 = mysqli_query($koneksidb,$sql1);
if(mysqli_num_rows($query1)>0){
while($result = mysqli_fetch_array($query1))
{ 
 ?>      

        <div class="col-md-3 grid_listing">
          <div class="product-listing-m gray-bg">
            <div class="product-listing-img"> <a href="baju_details.php?id=<?php echo htmlentities($result['id_baju']);?>"><img src="admin/img/baju/<?php echo htmlentities($result['gambar1']);?>" class="img-responsive" alt="image" /> </a>
            </div>
            <div class="product-listing-content">
              <h5><a href="baju_details.php?id=<?php echo htmlentities($result['id_baju']);?>"><?php echo htmlentities($result['nama_baju']);?></a></h5>
              <p class="list-price"><?php echo htmlentities(format_rupiah($result['harga']));?></p>         
            </div>
          </div>
        </div>
 <?php }} ?>       

      </div>
    </div>
    <!--/Similar-Cars--> 
    
  </div>
</section>
<!--/Listing-detail--> 

<!--Footer -->
<?php include('includes/footer.php');?>
<!-- /Footer--> 

<!--Back to top-->
<div id="back-top" class="back-top"> <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a> </div>
<!--/Back to top--> 

<!--Login-Form -->
<?php include('includes/login.php');?>
<!--/Login-Form --> 

<!--Register-Form -->
<?php include('includes/registration.php');?>

<!--/Register-Form --> 

<!--Forgot-password-Form -->
<?php include('includes/forgotpassword.php');?>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script> 
<script src="assets/js/interface.js"></script> 
<script src="assets/switcher/js/switcher.js"></script>
<script src="assets/js/bootstrap-slider.min.js"></script> 
<script src="assets/js/slick.min.js"></script> 
<script src="assets/js/owl.carousel.min.js"></script>

</body>
</html>