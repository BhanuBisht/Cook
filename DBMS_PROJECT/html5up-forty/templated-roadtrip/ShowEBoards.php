<!DOCTYPE HTML>
<!--
	Road Trip by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>ELECTRICTY DISTRIBUTION INFORMATION PORATAL</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body>

		<!-- Header -->
			<header id="header">
				<div class="logo"><a href="index.php">Portal <span>for all information about distribution of Electricity</span></a></div>
				<a href="#menu"><span>Menu</span></a>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="index.php">Home</a></li>
					<li><a href="EBoards.php">Electricity Boards</a></li>
					<li><a href="Users.php">Users</a></li>
					<li><a href="generic.php">Generic</a></li>
					<li><a href="elements.php">Elements</a></li>
				</ul>
			</nav>

		<!-- Banner -->
		<!--
			Note: To show a background image, set the "data-bg" attribute below
			to the full filename of your image. This is used in each section to set
			the background image.
		-->
			<section id="banner" class="bg-img" data-bg="banner.jpg">
				<div class="inner">
					<header>
						<h1>One Portal - All Info</h1>
					</header>
				</div>
				<a href="#one" class="more">Learn More</a>
			</section>

		<!-- One -->
			<section id="one" class="wrapper post bg-img" data-bg="banner2.jpg">
				<div class="inner">
					<article class="box">
						<header>
							<h2>Regions</h2>
							<p>Available Regions</p>
						</header>
						<div class="table-wrapper">
									<table>
										<thead>
											<tr>
												<th><div align="center">S.No</div></th>
												<th><div align="center">Region Name</div></th>
												<th><div align="center">Pin Code</div></th>
											</tr>
										</thead>
										<tbody>
											 <?php
												 $count=1;
												 include "connection.php";
												$sql="select * from region";
												$result=mysqli_query($con,$sql);
												while($arr=mysqli_fetch_array($result))
												{
												?>
												<tr>
												<td><?=$count++; ?></td>
												<td><?php echo $arr['RegionName']; ?></td>
												<td><?php echo $arr['PinCode']; ?></td>
												</tr>
											<?php } ?>
										</tbody>
									</table>
								</div>
					</article>
				</div>
				<a href="#two" class="more">Learn More</a>
			</section>

		<!-- Two -->
			<section id="two" class="wrapper post bg-img" data-bg="banner5.jpg">
				<div class="inner">
					<article class="box">
						<header>
							<h2>Boards</h2>
							<p>List Of All Boards</p>
						</header>
						<div>
							<form method="post" action="more.php">
							<input type="text" name="id" placeholder="Search by Id">
							<input type="submit" value="Search" class="button special icon fa-search">
							</form>
						</div>
						<div class="table-wrapper">
									<table>
										<thead>
											<tr>
												<th><div align="center">Sr.No</div></th>
												<th><div align="center">Pan No</div></th>
												<th><div align="center">GSTIN</div></th>
												<th><div align="center">Board Name</div></th>
												<th><div align="center">More</div></th>>
											</tr>
										</thead>
										<tbody>
											 <?php
												 $count=1;
												 include "connection.php";
												$sql="select * from e_board";
												$result=mysqli_query($con,$sql);
												while($arr=mysqli_fetch_array($result))
												{
												?>
												<tr>
												<td><?=$count++; ?></td>
												<td><?php echo $arr['PanNo']; ?></td>
												<td><?php echo $arr['GSTIN']; ?></td>
												<td><?php echo $arr['BoardName']; ?></td>
												<td><a href="more.php?id=<?php echo $arr['PanNo']; ?>" class="button alt icon fa-check">Show More</a></td>
												</tr>
											<?php } ?>
										</tbody>
									</table>
								</div>
					</article>
				</div>
				<a href="#three" class="more">Learn More</a>
			</section>

		<!-- Three -->
			<section id="three" class="wrapper post bg-img" data-bg="banner4.jpg">
				<div class="inner">
					<article class="box">
						<header>
							<h2>Varius a cursus aliquet</h2>
							<p>11.11.2016</p>
						</header>
						<div class="content">
							<p>Scelerisque enim mi curae erat ultricies lobortis donec velit in per cum consectetur purus a enim platea vestibulum lacinia et elit ante scelerisque vestibulum. At urna condimentum sed vulputate a duis in senectus ullamcorper lacus cubilia consectetur odio proin sociosqu a parturient nam ac blandit praesent aptent. Eros dignissim mus mauris a natoque ad suspendisse nulla a urna in tincidunt tristique enim arcu litora scelerisque eros suspendisse.</p>
						</div>
						<footer>
							<a href="generic.php" class="button alt">Learn More</a>
						</footer>
					</article>
				</div>
				<a href="#four" class="more">Learn More</a>
			</section>

		<!-- Four -->
			<section id="four" class="wrapper post bg-img" data-bg="banner3.jpg">
				<div class="inner">
					<article class="box">
						<header>
							<h2>Luctus blandit mi lectus in nascetur</h2>
							<p>10.30.2016</p>
						</header>
						<div class="content">
							<p>Scelerisque enim mi curae erat ultricies lobortis donec velit in per cum consectetur purus a enim platea vestibulum lacinia et elit ante scelerisque vestibulum. At urna condimentum sed vulputate a duis in senectus ullamcorper lacus cubilia consectetur odio proin sociosqu a parturient nam ac blandit praesent aptent. Eros dignissim mus mauris a natoque ad suspendisse nulla a urna in tincidunt tristique enim arcu litora scelerisque eros suspendisse.</p>
						</div>
						<footer>
							<a href="generic.php" class="button alt">Learn More</a>
						</footer>
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