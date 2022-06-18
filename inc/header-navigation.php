<!-- header one-->
<header class="page-header-one">
	<div class="container-fluid">
		<div class="top-right text-center">
			<ul>
				<?php
				if (empty($_SESSION['email']) && empty($_COOKIE['email'])) {
				?>
					<li><a href="../index.php?p=login">Masuk</a></li>
					<li><a href="../index.php?p=register">Daftar</a></li>
				<?php
				} else {
					if (isset($_SESSION['email'])) {
						$member = $_SESSION['member_id'];
						$queryname = mysqli_query($conn, "SELECT * FROM members WHERE member_id = '" . $member . "'");
						$name = mysqli_fetch_array($queryname);
						echo '<li>' . $name['fullname'] . '</li>';
					} else {
						$member = $_COOKIE['member_id'];
						$queryname = mysqli_query($conn, "SELECT * FROM members WHERE member_id = '" . $member . "'");
						$name = mysqli_fetch_array($queryname);
						echo '<li>' . $name['fullname'] . '</li>';
					}
				?>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown">Pengaturan<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="../index.php?p=profil">Profil Saya</a></li>
							<li><a href="../index.php?&p=logout">Keluar</a></li>
						</ul>
					</li>
				<?php } ?>
			</ul>
		</div>
	</div>
</header>

<!-- header two-->
<header class="page-header-two">
	<div class="container-fluid text-center">
		<div class="col-md-4 top-header-left">
			<div class="search-bar">
				<input type="text" id="search" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
			</div>
		</div>
		<div class="col-md-4 top-header-middle">
			<h1>Various Bags</h1>
		</div>
		<div class="col-md-4 top-header-right">
			<a href="../index.php?p=cart">
				<span class="fa fa-shopping-cart"></span>
				<h4 class="items">
					<?php
					if (isset($_SESSION['cart'])) {
						echo count($_SESSION['cart']);
					} else {
						echo '0';
					}
					?>
				</h4>
			</a>
		</div>
	</div>
</header>

<!-- navigation -->
<nav class="top-nav navbar navbar-inverse" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle Navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>

		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav top-nav-info">
				<li><a href="../index.php">Semua Produk</a></li>
				<li><a href="../index.php?p=brands">Brands</a></li>
				<li><a href="../page/biodata.php">Biodata Team</a></li>
			</ul>
		</div>
	</div>
</nav>