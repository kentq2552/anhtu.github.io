<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/chitietsanpham.css">
    <link rel="stylesheet" href="css/progressBar.css">
    <link rel="stylesheet" href="css/font.css">

    <!-- Google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&display=swap" rel="stylesheet">

    <!-- Font awesome -->
    <script src="https://kit.fontawesome.com/b872ab0b46.js" crossorigin="anonymous"></script>
    <title>Flomer · Shop hoa tươi</title>
    <link rel="icon" href="../img/icon-flower-tab.png" type="image/x-icon">
    <?php require_once "php/echoHTML.php"; ?>
</head2

<body class="main-bg">
    <div id="progressbar"></div>
    <div id="scrollPath"></div>
    <?php addNav(); ?>

    <?php
    include "../back-end/DBclasses.php";
    $db = new DBclasses();
    $id_sanpham = $_GET['id'];
    $sql = "SELECT * FROM sanpham WHERE id = $id_sanpham";
    $result = $db->query($sql);
    $product = mysqli_fetch_assoc($result);
    $makhuyenmai =$product['makhuyenmai'];
    $idlsp= $product['IDLSP'];
    $sqlkm = "SELECT * FROM khuyenmai WHERE makhuyenmai = $makhuyenmai";
    $resultkm = $db->query($sqlkm);
    $giatrikm= mysqli_fetch_assoc($resultkm);

    if (!$product) {
        echo "Sản phẩm không tồn tại.";
        exit;
    }
    ?>
    <div id="product-info" class="content">
        <div class="row mb-3 product-display">
            <!-- Hình ảnh sản phẩm -->
            <div class="col-sm image magnific-popup">
                <a href="<?php echo $product['hinhanh']; ?>" title="<?php echo htmlspecialchars($product['ten']); ?>">
                    <img src="<?php echo $product['hinhanh']; ?>" alt="<?php echo htmlspecialchars($product['ten']); ?>" class="img-thumbnail mb-3 product-img">
                </a>
            </div>

            <!-- Thông tin sản phẩm -->
            <div class="col-sm product-details oswald-regular">
                <h1 class="product-name"><?php echo htmlspecialchars($product['ten']); ?></h1>
                <ul class="list-unstyled price-box">
                    <?php if ($giatrikm['giatrikm'] < $product['gia']) { ?>

                        <li><h3><span class="price-old"><?php echo number_format($product['gia'], 0, ',', '.'); ?> VND</span></h3></li>
                        <li><h3><span class="price-new"><?php echo number_format($product['gia']-$giatrikm['giatrikm'], 0, ',', '.'); ?> VND</span></h3></li>
                        <span class="percent_off"> GIẢM <?php echo round((($giatrikm['giatrikm']) / $product['gia']) * 100); ?>%</span>
                    <?php } else { ?>
                        <li><h3><span class="price-new"><?php echo number_format($product['gia'], 0, ',', '.'); ?> VND</span></h3></li>
                    <?php } ?>
                </ul>

                

                <div class="call_us_total">
                    <div class="call_us_box">
                        Gọi ngay: <span class="call-us">0365560201</span>
                    </div>
                    
                    <div class=" call_social">
                        Chat ngay:

                        <a href="https://www.facebook.com/Anhtusohandsome/" target="_blank"><img src="../img/messenger.png" alt="Messenger"></a>
                        <a href="https://zalo.me/0365560201" target="_blank"><img src="../img/zalo_icon.png" alt="Zalo"></a>
                    </div>
                </div>
                
                <div class="ship_box_total">
                    <!-- Chính sách vận chuyển -->
                <span>ĐỊA CHỈ GIAO HÀNG!!</span>
                <div class="ship_box_detail row">
            <div class="col-sm-6 mt-2 mb-2">
    <select class="form-select ship-to-region" id="region">
        <option>Hà Nội</option>
        <option>TP Hồ Chí Minh</option>
        <option>Khác</option>
    </select>
</div>

<div class="col-sm-6 mt-2 mb-2">
    <select class="form-select ship-to-district" id="district">
        <!-- District options will be populated dynamically -->
    </select>
</div>

<script>
    // Define the mapping of regions to districts
    const districtsByRegion = {
        "Hà Nội": ["Quận Ba Đình", "Huyện Sóc Sơn"],
        "TP Hồ Chí Minh": ["Quận 1", "Quận 2"],
        "Khác": ["Khác"]
    };

    // Get references to the dropdown elements
    const regionSelect = document.getElementById("region");
    const districtSelect = document.getElementById("district");

    // Function to update district options based on the selected region
    function updateDistrictOptions() {
        const selectedRegion = regionSelect.value;
        const districts = districtsByRegion[selectedRegion] || [];

        // Clear the current district options
        districtSelect.innerHTML = "";

        // Populate the district dropdown with new options
        districts.forEach(district => {
            const option = document.createElement("option");
            option.textContent = district;
            districtSelect.appendChild(option);
        });
    }

    // Add event listener to the region dropdown
    regionSelect.addEventListener("change", updateDistrictOptions);

    // Initialize the district options on page load
    updateDistrictOptions();
</script>

            <p class="ship_message">Phí giao hàng: <span class="ship_fee">50.000VND</span></p>
        </div>
                </div>
                
        <div id="product">
            <form id="form-product">
                <div class="mb-3 alert alert-warning"><i class="fa-solid fa-circle-exclamation"></i> Sản phẩm này không hỗ trợ giao vào ngày: 20-10-2024</div>
                <div class="mb-3">
                    
                    <input type="hidden" name="product_id" value="<?php echo $product['ID']; ?>" id="input-product-id">
                    <button type="submit" id="button-cart" class="add-to-cart-btn">Đặt hàng</button>
                    <button type="submit" class="add-to-cart-btn"><i class="fa-solid fa-cart-shopping"></i></button>
                </div>
            </form>
        </div>
            </div>
        </div>

    <div class="product-description">
    <h3>Mô tả sản phẩm</h3>
    <div class="flower-details">
        <?php
        // Lấy nội dung mô tả sản phẩm từ cơ sở dữ liệu
        $description = $product['thongtinmota'];

        // Tách phần trước và sau dấu hai chấm đầu tiên
        list($beforeColon, $afterColon) = explode(':', $description, 2);

        // Tách các câu trong phần trước dấu hai chấm
        $sentencesBefore = preg_split('/(?<=\.)\s*/', trim($beforeColon));
        foreach ($sentencesBefore as $sentence) {
            echo "<p><b>" . htmlspecialchars(trim($sentence)) . "</b></p>";
        }

        // Tách các câu sau dấu hai chấm dựa vào dấu chấm
        $sentencesAfter = preg_split('/(?<=\.)\s*/', trim($afterColon));

        // Mở danh sách ul cho các câu sau dấu hai chấm
        echo "<ul>";
        foreach ($sentencesAfter as $sentence) {
            // Kiểm tra nếu câu bắt đầu bằng chữ cái viết hoa
            if (preg_match('/^[A-Z]/', trim($sentence))) {
                echo "<li>" . htmlspecialchars(trim($sentence)) . "</li>";
            }
        }
        echo "</ul>";
        ?>
    </div>
</div>

<div class="showcase-items">
                <?php
                
                

                
                $sql = "SELECT * FROM sanpham where IDLSP=$idlsp AND ID!=$id_sanpham";
                $result = $db->query($sql);
                $total_items = mysqli_num_rows($result);
                $limit = 5;
                
                while ($row = mysqli_fetch_assoc($result)) {

                    $formatted_price = number_format($row['gia'], 0, '', '.');
                    echo '<div class="item">
                        <img src="' . $row['hinhanh'] . '" alt="hoa">
                        <div class="des roboto-regular">
                            <h3>' . $row['ten'] . '</h3>
                            <h4>' . $formatted_price . ' ₫</h4>
                            <form method="post">
                            <button type="submit" name="product_id" value="' . $row['ID'] . '"><i class="fa-solid fa-cart-shopping"></i></button>
                            </form>
                        </div>
                    </div>';
                }

                ?>

            </div>


    


    
    </div>

    <footer><?php addFooter(); ?></footer>

    <script src="chitiet.js"></script>
</body>

</html>
