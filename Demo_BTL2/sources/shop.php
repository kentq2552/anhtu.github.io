<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="shop.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/progressBar.css">
    <link rel="stylesheet" href="css/font.css">

    <!-- Google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&display=swap" rel="stylesheet">

    <!-- Font awesome -->
    <script src="https://kit.fontawesome.com/b872ab0b46.js" crossorigin="anonymous"></script>
    <title>Flomer · Shop hoa tươi</title>
    <link rel="icon" href="../img/icon-flower-tab.png" type="image/x-icon">
    <?php require_once "php/echoHTML.php"; ?>
</head>
<body>
<?php addProgressBar() ?>
<?php addNav() ?>
<section id="shop">
    <div class="container">
        <div class="categories">
            <h2 class="roboto-medium"><i class="fa-solid fa-list" style="font-size: 22px; margin-right: 5px;"></i>Danh
                Mục</h2>
            <div class="category-list roboto-regular">
                <ul>
                    <li><a href="shop.php?category=bo_hoa" class="<?= isset($_GET['category']) && $_GET['category'] == 'bo_hoa' ? 'active-btn' : '' ?>"><img src="../img/icons/bo_hoa.svg" alt="" width="28px"
                                                                                                                                                             height="28px">Bó hoa</a></li>
                    <li><a href="shop.php?category=gio_hoa" class="<?= isset($_GET['category']) && $_GET['category'] == 'gio_hoa' ? 'active-btn' : '' ?>"><img src="../img/icons/gio_hoa.svg" alt="" width="28px"
                                                                                                                                                               height="28px">Giỏ hoa</a></li>
                    <li><a href="shop.php?category=hop_hoa" class="<?= isset($_GET['category']) && $_GET['category'] == 'hop_hoa' ? 'active-btn' : '' ?>"><img src="../img/icons/hop_hoa.svg" alt="" width="28px"
                                                                                                                                                               height="28px">Hộp hoa</a></li>
                    <li><a href="shop.php?category=binh_hoa" class="<?= isset($_GET['category']) && $_GET['category'] == 'binh_hoa' ? 'active-btn' : '' ?>"><img src="../img/icons/binh_hoa.svg" alt="" width="28px"
                                                                                                                                                                 height="28px">Bình hoa</a></li>
                </ul>

            </div>
        </div>
        <div class="showcase">
            <div class="filters roboto-regular">
                <div class="left-filters">
                    <span>Sắp xếp theo</span>
                    <div class="sort-by-options">
                        <a href="shop.php?filter=1" >
                            <button class="<?= isset($_GET['filter']) && $_GET['filter'] == 1 ? 'active-filter' : '' ?>">Phổ Biến</button>
                        </a>
                        <a href="shop.php?filter=2" >
                            <button class="<?= isset($_GET['filter']) && $_GET['filter'] == 2 ? 'active-filter' : '' ?>">Mới Nhất</button>
                        </a>
                        <a href="shop.php?filter=3" >
                            <button class="<?= isset($_GET['filter']) && $_GET['filter'] == 3 ? 'active-filter' : '' ?>">Bán Chạy</button>
                        </a>
                    </div>
                </div>
                <div class="right-filters"><?php if (isset($_GET['category']) || isset($_GET['filter'])): ?>

                        <a href="shop.php" class="clear-filter roboto-regular"><button><i class="fa-solid fa-filter-circle-xmark"></i></button></a>
                    <?php endif; ?></div>

            </div>
            <div class="showcase-items">
                <?php
                include "../back-end/DBclasses.php";

                $db = new DBclasses();
                $Filter = '';

                if (isset($_GET['category'])) {
                    $category = $_GET['category'];
                    if ($category == "bo_hoa") {
                        $category = "Bó hoa";
                    } else if ($category == "gio_hoa") {
                        $category = "Giỏ hoa";
                    } else if ($category == "hop_hoa") {
                        $category = "Hộp hoa";
                    } else if ($category == "binh_hoa") {
                        $category = "Bình hoa";
                    }
                    $Filter = "WHERE loai = '$category'";
                }
                if (isset($_GET['filter'])) {
                    $filterhang = $_GET['filter'];
                    $Filter = "WHERE phanloaihang = '$filterhang'";
                }
                $sql = "SELECT * FROM sanpham $Filter";
                $result = $db->query($sql);
                $total_items = mysqli_num_rows($result);
                $limit = 12;
                $total_pages = ceil($total_items / $limit);
                while ($row = mysqli_fetch_assoc($result)) {

                    $formatted_price = number_format($row['gia'], 0, '', '.');
                    echo '
                    
                    <div class="item" >
                        <img src="' . $row['hinhanh'] . '" alt="hoa">
                        <div class="des roboto-regular">
                            <a class="h3" href="chitietsanpham.php?id='.$row['ID'].'">' . $row['ten'] . '</a>
                            <h4>' . $formatted_price . ' ₫</h4>
                            <a class="save-to-cart" href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </div>
                    ';
                }

                ?>

            </div>
            <ul class="listPage roboto-regular">
                <?php for ($i = 1; $i <= $total_pages; $i++): ?>
                    <li onclick="changePage(<?= $i ?>)" class="<?= $i === 1 ? 'active' : '' ?>"><?= $i ?></li>
                <?php endfor; ?>
            </ul>
        </div>
    </div>
</section>
<?php addFooter() ?>
<script src="shop.js"></script>
</body>
</html>