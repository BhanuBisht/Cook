<?php
session_start();
ob_start();
error_reporting(0);
include "connection.php";
include "function.php";
logcheck();
?>
<!DOCTYPE HTML>
<!--
	Road Trip by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Generic - Road Trip by TEMPLATED</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="subpage">

		<!-- Header -->
			<header id="header" class="alt">
				<div class="logo"><a href="index.php">One Portal <span>all INFORMATION</span></a></div>
				<a href="#menu"><span>Menu</span></a>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="index.php">Home</a></li>
					<li><a href="EBoards.php">Electricity Boards</a></li>
					<li><a href="Users.php">Users</a></li>
					<li><a href="showEboards.php">Show</a></li>
					<li><a href="search.php">Search</a></li>
                                        <li><a href="logout.php" class="button">Logout</a></li>
				</ul>
			</nav>

		<!-- Content -->
		<!--
			Note: To show a background image, set the "data-bg" attribute below
			to the full filename of your image. This is used in each section to set
			the background image.
		-->
			<section id="post" class="wrapper bg-img" data-bg="banner2.jpg">
				<div class="inner">
					<article class="box">
						<header>
							<h2>All Details</h2>
						</header>
						
						<div class="box">
						<div>
							<form method="post" action="search.php">
							<table>
							<tr align="center"><td><input type="text" name="id" placeholder="Search"></td>
							<td>
							<input type="submit" value="Search"></td>
							</table>
							</form>
							</div>
							<?php
								if(isset($_REQUEST['id']))
                                {
								$id=$_REQUEST['id'];
								include "connection.php";
								$sql="SELECT * FROM e_board b inner join region r on b.PinCode=r.PinCode WHERE b.PanNo LIKE '%" . $id .  "%' OR b.GSTIN LIKE '%" . $id ."%' OR b.BoardName LIKE '%" . $id ."%' OR b.Address LIKE '%" . $id ."%' OR b.Pincode LIKE '%" . $id ."%' OR b.Phone LIKE '%" . $id ."%' OR r.RegionName LIKE '%" . $id ."%'";
								$result=mysqli_query($con,$sql);
                                                                $nums=mysqli_num_rows($result);;
                                                                if($nums>0)
                                                                {
								while($arr=mysqli_fetch_array($result))
								{
								?>
								<table>
								<tr><td>Pan No</td><td><?php echo $arr['PanNo']; ?></td></tr>
								<tr><td>GSTIN</td><td><?php echo $arr['GSTIN']; ?></td></tr>
								<tr><td>Board Name</td><td><?php echo $arr['BoardName']; ?></td></tr>
								<tr><td>Phone Number</td><td><?php echo $arr['Phone']; ?></td></tr>
								<tr><td>Address</td><td><?php echo $arr['Address']; ?></td></tr>
								<tr><td>Pin Code</td><td><?php echo $arr['PinCode']; ?></td></tr>
								<tr><td>Region Name</td><td><?php echo $arr['RegionName']; ?></td></tr>
								</table>
							<?php }}
                                                        else
                                                        {
                                                                echo "No Data Found";
                                                        }
                                                        }
								else{
										echo "Enter The Keyword";
								}
							 ?>
							</div>
					</article>
				</div>
			</section>

		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<ul class="icons">
						<li><a href="#" class="icon round fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon round fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon round fa-instagram"><span class="label">Instagram</span></a></li>
					</ul>

					<div class="copyright">
						&copy; Untitled. Design: <a href="https://templated.co">TEMPLATED</a>. Images: <a href="https://unsplash.com">Unsplash</a>.
					</div>

				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>