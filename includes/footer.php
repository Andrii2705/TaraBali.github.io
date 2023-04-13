<?php
if(isset($_POST['emailsubscibe']))
{
$subscriberemail=$_POST['subscriberemail'];
$sql ="SELECT * FROM subscribers WHERE email_sub='$subscriberemail'";
$query = mysqli_query($koneksidb,$sql);
if(mysqli_num_rows($query)>0)
{
echo "<script>alert('Already Subscribed.');</script>";
}
else{
$sql1="INSERT INTO subscribers(email_sub) VALUES('$subscriberemail')";
$lastInsertId=mysqli_query($koneksidb, $sql1);
if($lastInsertId)
{
echo "<script>alert('Subscribed successfully.');</script>";
}
else 
{
echo "<script>alert('Something went wrong. Please try again');</script>";
}
}
}
?>

<footer>
  <div class="footer-top">
    <div class="container">
      <div class="row">
      
        <div class="col-md-6">
          <h6>Tentang Kami</h6>
          <ul>

        
          <li><a href="page.php?type=aboutus">Tentang Kami</a></li>
            <li><a href="page.php?type=faqs">FAQs</a></li>
            <li><a href="page.php?type=privacy">Privacy</a></li>
          <li><a href="page.php?type=terms">Terms of use</a></li>
               <li><a href="admin/">Admin Login</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-md-push-6 text-right">
          <div class="footer_widget">
            <p>Connect with Us:</p>
            <ul>
              <li><a href="https://www.facebook.com/people/Tara-Bali-Wedding/100070495268062/"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
              <!-- <li><a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li> -->
              <!-- <li><a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li> -->
              <li><a href="https://www.google.com/maps/place/Tara+Bali+Wedding/@-8.3980286,115.2187338,15z/data=!4m6!3m5!1s0x2dd221a39b6bfc4b:0xac85a347d22ea50c!8m2!3d-8.3980286!4d115.2187338!16s%2Fg%2F11nxn_dlvd?hl=id"><i class="fa fa-google-plus-square" aria-hidden="true"></i></a></li>
              <li><a href="https://instagram.com/tara_baliwedding?igshid=YmMyMTA2M2Y="><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-6 col-md-pull-6">
          <p class="copy-right">&copy;2023 tara_baliwedding <br>Distributed by <a href="Andriani" target="_blank" rel="noopener noreferrer">Andriani</a></p>
        </div>
      </div>
    </div>
  </div>
</footer>