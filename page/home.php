<!--Banner-->
<div class="banner">
	<div id="example1" class="core-slider core-slider__carousel">
		<div class="core-slider_viewport">
			<div class="core-slider_list">
				<div class="core-slider_item">
					<img src="../assets/img/header3.jpg" alt="">
				</div>
				<div class="core-slider_item">
					<img src="../assets/img/header4.jpg" alt="">
				</div>
				<div class="core-slider_item">
					<img src="../assets/img/header1.jpg" alt="">
				</div>
				<div class="core-slider_item">
					<img src="../assets/img/header2.jpg" alt="">
				</div>
			</div>
		</div>
		<div class="core-slider_nav">
			<div class="core-slider_arrow core-slider_arrow__right"></div>
			<div class="core-slider_arrow core-slider_arrow__left"></div>
		</div>
		<div class="core-slider_control-nav"></div>
	</div>
</div>
<div class="clearfix"></div>

<!--All Products-->
<div class="top-products">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="text-center text1">Semua Produk</h2>
			</div>
		</div>
		<div class="row product">
			<?php
			$perpage = 20;
			$page = isset($_GET['page']) ? $_GET['page'] : "";

			if (empty($page)) {
				$num = 0;
				$page = 1;
			} else {
				$num = ($page - 1) * $perpage;
			}

			$query = "SELECT * FROM items WHERE available = 'Ada' ORDER by item_id ASC LIMIT $num, $perpage";
			$result = mysqli_query($conn, $query);
			while ($row = mysqli_fetch_array($result)) {
				$totalDisc = $row['price'] - ($row['price'] * $row['discount'] / 100);
			?>
				<div class="col-md-3 col-xs-6 product-left">
					<div class="p-one">
						<a href="#">
							<img src="../miiadmin/img/<?php echo $row['bgimg']; ?>" />
							<div class="mask">
								<a href="../index.php?p=single&id=<?php echo $row['item_id']; ?>"><span>Lihat Detail</span></a>
							</div>
						</a>
						<h4><?php echo $row['item_name']; ?></h4>
						<?php
						if ($row['discount'] == "0") {
							echo '
							<div class="item_price">
								<p>
									<span>Rp ' . number_format($row['price'], 0, ".", ".") . '</span>
								</p>
							</div>
							';
						} else {
							echo '
							<div class="item_price">
								<p>
									<i>Rp ' . number_format($row['price'], 0, ".", ".") . '</i>
									<span>Rp ' . number_format($totalDisc, 0, ".", ".") . '</span>
								</p>
							</div>
							';
						}
						?>
					</div>
				</div>

			<?php
			}
			$sql = mysqli_query($conn, "SELECT * FROM items");
			$total_record = mysqli_num_rows($sql);
			$total_page = ceil($total_record / $perpage);
			?>
			<div class="col-lg-12 col-xs-12">
				<nav class="text-center">
					<ul class="pagination">
						<?php
						if ($page > 1) {
							$prev = "<a href='../index.php?p=home&page=1'><span aria-hidden='true'>First</span></a>";
						} else {
							$prev = "<a href=''><span aria-hidden='true'>First</span></a>";
						}
						$number = '';
						for ($i = 1; $i <= $total_page; $i++) {
							if ($i == $page) {
								$number .= "<a href='../index.php?p=home&page=$i'>$i</a>";
							} else {
								$number .= "<a href='../index.php?p=home&page=$i'>$i</a>";
							}
						}
						if ($page < $total_page) {
							$link = $page + 1;
							$next = "<a href='../index.php?p=home&page=$total_page'><span aria-hidden='true'>Last</span></a>";
						} else {
							$next = "<a href=''><span aria-hidden='true'>Last</span></a>";
						}
						?>
						<li><?php echo $prev; ?></li>
						<li><?php echo $number; ?></li>
						<li><?php echo $next; ?></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>
</div>
<div class="clearfix"></div>