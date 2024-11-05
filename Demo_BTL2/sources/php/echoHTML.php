<?php
session_start();

function addNav(){
    echo '
    <nav class="roboto-regular">
        <div class="nav-logo">
            <div class="login">
                <span class="openbtn" onclick="openNav()">&#9776;</span>
                <a href="login.php">LOGIN</a>
            </div>
            <div class="logo roboto-medium">FL<img src="../img/icon-flower-tab.png" width="26px"><span>MER</span></div>
            <div class="shop-inf">
                <ul>
                    <li><i class="fa-solid fa-cart-shopping"></i></li>
                    <li><i class="fa fa-magnifying-glass"></i></li>
                </ul>
            </div>
            
            
        </div>
        <div class="nav-links">
            <ul class="links">
                <li><a href="home.php">TRANG CHỦ</a></li>
                <li><a href="shop.php">SHOP</a></li>
                <li><a href="#">Ý KIẾN</a></li>
            </ul>
        </div>
        <div id="sideMenu" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <a href="home.php">TRANG CHỦ</a>
            <a href="shop.php">SHOP</a>
            <a href="#">Ý KIẾN</a>
        </div>
    </nav>
    <script>
        function openNav() {
            document.getElementById("sideMenu").style.width = "250px";
        }

        function closeNav() {
            document.getElementById("sideMenu").style.width = "0";
        }
    </script>
    ';
}

function addFooter(){
    echo '<footer>
        <div class="main-footer roboto-regular">
            <div class="left-box">
                <h2>TRẦN NAM PHONG</h2>
                <div class="footer-content">
                    <p><i class="fa-solid fa-cake-candles"></i>12/09/2003</p>
                </div>
            </div>
            <div class="right-box">
                <h2>PHẠM ANH TÚ</h2>
                <div class="footer-content">
                    <p><i class="fa-solid fa-cake-candles"></i>02/01/2003</p>
                </div>
            </div>
        </div>
        <div class="all-right roboto-regular">
            <p>Thanks for shopping - © Flomer, Tnp-Pat.</p>
        </div>
    </footer>';
}
function addProgressBar(){
    echo '<div id="progressbar"></div>
    <div id="scrollPath"></div>';
}
?>
