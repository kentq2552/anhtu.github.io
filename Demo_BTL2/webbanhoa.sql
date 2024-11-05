-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 04, 2024 lúc 03:52 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanhoa`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `makhuyenmai` int(11) NOT NULL,
  `loaikhuyenmai` varchar(70) NOT NULL,
  `giatrikm` int(11) NOT NULL,
  `ngaybdkm` date DEFAULT NULL,
  `ngayktkm` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`makhuyenmai`, `loaikhuyenmai`, `giatrikm`, `ngaybdkm`, `ngayktkm`) VALUES
(1, 'khongkm', 0, NULL, NULL),
(2, 'giamgia', 300000, '2024-10-31', '2024-11-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `maquyen` int(11) NOT NULL,
  `tenchucdanh` varchar(50) NOT NULL,
  `motaquyen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` int(11) NOT NULL,
  `IDLSP` int(11) NOT NULL,
  `phanloaihang` int(11) NOT NULL,
  `ten` varchar(70) NOT NULL,
  `loai` varchar(70) NOT NULL,
  `thongtinmota` varchar(900) NOT NULL,
  `gia` int(11) NOT NULL,
  `makhuyenmai` int(11) NOT NULL,
  `hinhanh` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID`, `IDLSP`, `phanloaihang`, `ten`, `loai`, `thongtinmota`, `gia`, `makhuyenmai`, `hinhanh`) VALUES
(0, 4, 1, 'Bừng Sáng', 'Bình hoa', 'Một bình hoa cao cấp, sang trọng được thiết kế từ các loại hoa hồng cam free spirit, cúc mẫu đơn cam, cúc mẫu đơn xanh là lựa chọn hoàn hảo để gửi tặng những người quan trọng.\r\nBình Hoa Bừng Sáng được thiết kế từ: \r\nCúc mẫu đơn cam: 10 cành.\r\nCúc mẫu đơn xanh: 10 cành.\r\nHoa hồng cam: 50-60 cành.\r\nHoa hồng Juliet: 30 cành.\r\nCác loại hoa lá phụ theo mùa.', 5050000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/B%C3%ACnh%20Hoa/bung-sang.jpg.webp'),
(1, 1, 1, 'Bé Xinh', 'Bó hoa', 'Bó hoa Bé xinh được thiết kế từ hoa cúc họa mi, loài hoa đặc trưng của Hà Nội. Nếu bạn đang cần một bó hoa tặng các cô gái sinh vào tháng 10, 11, Bé xinh là sự lựa chọn không thể bỏ lỡ.\r\nBó hoa Bé Xinh được thiết kế từ:\r\nHoa cúc họa mi: 10 cành.', 420000, 1, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/B%C3%B3%20Hoa/bo-cuc-hoa-mi-be-xinh.jpg.webp'),
(2, 1, 1, 'Lời Yêu', 'Bó hoa', 'Bó hoa Lời Yêu được thiết kế từ:\r\nHoa mẫu đơn trắng: 10 cành.\r\nCác loại hoa lá phụ khác: Cúc tana, hoa voan.\r\nLưu ý:\r\n**Do được làm thủ công, nên sản phẩm ngoài thực tế sẽ có đôi chút khác biệt so với hình ảnh trên website. Tuy nhiên, Flomer cam kết hoa sẽ giống khoảng 80% so với hình ảnh.', 4800000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/loi-yeu.jpg.webp'),
(3, 1, 2, 'The Hope', 'Bó hoa', 'The hope được thiết kế từ hoa hướng dương, loài hoa tượng trưng cho sự mạnh mẽ, niềm tin và tương lai tươi sáng. Bó hoa là sự lựa chọn để gửi tặng người thân, bạn bè trong dịp sinh nhật, lễ tốt nghiệp. Nếu bạn đang cần một bó hoa tặng tốt nghiệp giá rẻ để tặng người thân, bạn bè thì The hope là sự lựa chọn hoàn hảo.\r\nBó hoa The Hope được thiết kế từ:\r\nHoa hướng dương: 3 cành.\r\nCác loại hoa lá phụ: Lá bạc.', 310000, 1, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/bo-hoa-huong-duong-the-hope.jpg.webp'),
(4, 1, 2, 'Dâu Ngọt Ngào (Bó Hoa Dâu Tây)', 'Bó hoa', 'Ngày lễ đặc biệt đã đến nhưng bạn vẫn đang bối rối chưa biết chọn gì cho người đặt biệt ấy? Một bó hoa dâu tây sẽ là món quà vô cùng thiết thực chứa đựng những tìm cảm ngọt ngào và chân thành nhất. \r\nBó hoa dâu tây Dâu Ngọt Ngào là sự kết hợp hoàn hảo giữa những trái dâu tây căng mọng đại diện cho tình yêu ngọt ngào, cùng với hoa baby trắng tượng trưng cho tình yêu vĩnh cửu, bền chặt.\r\nBó hoa Dâu Ngọt Ngào sẽ là một món quà sinh nhật vừa độc đáo, vừa ý nghĩa và cũng vô cùng thiết thực để gửi tặng vợ, bạn gái hay những người thân yêu của bạn vào những dịp đặc biệt.\r\nBó Hoa Dâu Tây - Dâu Ngọt Ngào Gồm Có:\r\nDâu tây: 500 gram.\r\nHoa cúc thạch thảo trắng: 1 bó.\r\nHoa baby trắng: 150 gram.', 730000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/bo-hoa-dau-tay-ngot-ngao.jpg.webp'),
(5, 1, 3, 'Hồng Xanh', 'Bó hoa', 'Bó hoa Hồng Xanh được thiết kế từ những đóa hồng Blue Ecuador, biểu tượng của tình yêu yên bình và vĩnh cửu theo năm tháng. Bó hoa Hồng Xanh là lựa chọn hoàn hảo để tặng vợ hoặc bạn gái trong dịp sinh nhật, ngày quốc tế phụ nữ 8-3 và đặc biệt là trong ngày lễ tình nhân Valentine.\r\nBó Hoa Hồng Xanh được thiết kế từ:\r\nHoa hồng Xanh Blue : 10 cành.\r\nCác loại hoa lá phụ: Cẩm tú cầu, lá bạc.', 1750000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/B%C3%B3%20Hoa/bo-hoa-hong-xanh-nhap.jpg.webp'),
(6, 1, 3, 'Adorable', 'Bó hoa', 'Bó hoa Adorable được thiết kế từ hoa thạch thảo trắng, loài hoa tượng trưng cho tình yêu chân thành, mộc mạc nhưng vô cùng bền chặt. Bên cạnh đó, hoa thạch thảo cũng tượng trưng cho tình bạn chân thành, gắn bó và sự mạnh mẽ. Bó hoa Adorable là lựa chọn phù hợp để gửi tặng vợ, bạn gái hay những người bạn thân thiết vào những dịp đặc biệt.\r\nBó hoa Adorable được thiết kế từ:\r\nHoa thạch thảo trắng: 12 bó.', 850000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/bo-hoa-thach-thao-trang-Adorable.jpg.webp'),
(7, 1, 1, 'Tình Đầu', 'Bó hoa', 'Hoa hồng trắng đại diện cho tình yêu mới chớm nở đầy chân thành và trong sáng. Bó hoa hoa hồng trắng Tình Đầu là lựa chọn hoàn hảo để gửi tặng cô bạn gái mới quen.\r\nBó hoa Ẩn Dấu được thiết kế từ:\r\nHoa hồng trắng: 15 cành.\r\nHoa cúc trắng.\r\nLá bạc.', 580000, 1, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/bo-hoa-15-hong-trang-mix-cuc.jpg.webp'),
(8, 1, 1, 'Cánh Sen', 'Bó hoa', 'Hoa sen tượng trưng cho vẻ đẹp dịu dàng mà đầy cao quí, hoa sen cũng tượng trưng cho sự thanh cao và mang đến không khí an bình đầy an nhiên và tự tại. Bó hoa là sự kết hợp giữa hoa sen hồng và sen trắng ngọt ngào. Hãy dành tặng bó hoa sen như một món quà đầy ý nghĩa đến người thân, bạn bè và những người bạn luôn yêu quí bạn nhé.\r\nBó hoa Cánh Sen được thiết kế từ:\r\nHoa sen hồng: 15 cành.\r\nĐài hoa sen: 5 cành.\r\nCác loại hoa lá phụ: Lá bạc, cỏ đồng tiền.', 870000, 1, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/bo-hoa-sen-hong-canh-sen.jpg.webp'),
(9, 2, 2, 'Sunrise Spirit', 'Giỏ hoa', 'Lẵng hoa được thiết kế với tone màu cam rực rỡ từ hoa hồng cam free spirit mang đến một không khí tươi vui và sự may mắn. Nếu bạn đang cần một lẵng hoa nhỏ xinh để gửi lời chúc mừng người thân, bạn bè vào những dịp đặc biệt, Sunrise Spirit sẽ là lựa chọn hoàn hảo.\r\nGiỏ hoa Sunrise Spirit được thiết kế từ:\r\nHoa hồng cam: 18 cành.\r\nHoa cẩm chướng đơn chùm hồng: 5 cành.\r\nCác loại hoa lá phụ khác: Hoa cúc tana, cỏ đồng tiền, lá bạc.', 760000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202022/lang-hoa-hong-cam-01.jpg.webp'),
(10, 2, 2, 'La Rosa', 'Giỏ hoa', 'Giỏ hoa La Rosa được thiết kế từ hoa hồng sen dễ thương mang thông điệp tình yêu ngọt ngào. Nếu bạn đang cần một giỏ hoa sinh nhật thật xinh xắn để gửi tặng người thân, bạn gái, La Rosa sẽ là lựa chọn mà bạn không nên bỏ qua.\r\nGiỏ Hoa Hồng được thiết kế từ:\r\nHoa hồng dâu: 30 cành.\r\nCác loại hoa lá phụ: Cúc thạch thảo trắng.', 900000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/la-rosa.jpg.webp'),
(11, 2, 3, 'Giỏ hoa mộng mơ', 'Giỏ hoa', 'Giỏ hoa với tone màu xanh mát lạ mắt từ các loài hoa cúc mẫu đơn, green wicky kết hợp hài hòa cùng hoa hồng champagne và các loại hoa lá phụ cao cấp. Giỏ hoa là lựa chọn tuyệt vời để gửi tặng người thân, đối tác vào những dịp đặc biệt.\r\nGiỏ hoa Mộng Mơ được thiết kế từ:\r\nCúc mẫu đơn xanh: 5 cành.\r\nCúc tia xanh: 5 cành.\r\nThuỷ Tiên vàng: 10 cành.\r\nThiên nga trắng: 10 cành.\r\nGreen wicky: 5 cành.\r\nCúc ping pong trắng: 5 cành. \r\nThủy tiên trắng: 10 cành.\r\nHồng Mondial: 15 cành.\r\nHoa cát tường: 10 cành.\r\nĐồng tiền tia trắng: 10 cành.\r\nCác loại hoa lá phụ khác: Cỏ tia, cỏ đồng tiền, cúc xanh nhí, lá bạc tròn, hoa cà rốt.', 2560000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202022/gio-hoa-mong-mo.jpg.webp'),
(12, 2, 3, 'Giỏ Hoa Ngày Rực Rỡ\r\n', 'Giỏ hoa', 'Giỏ hoa Ngày Rực Rỡ lấy màu đỏ của hoa hồng, màu tím của hoa cát tường và lan Mokara làm màu chủ đạo, tạo nên một sự kết hợp rực rỡ nhưng không kém phần sang trọng. Kết hợp cùng hướng dương, thủy tiên và hoa lá phụ trang trí sẽ mang đến một \"tác phẩm\" đầy ấn tượng cho người được tặng.\r\nGiỏ Hoa Ngày Rực Rỡ được thiết kế từ:\r\nHoa hồng đỏ : 20. \r\nHoa cát tường tím : 9.\r\nLan mokara tím : 6.\r\nHoa hướng dương : 4.\r\nHoa thủy tiên trắng : 4.\r\nCúc phun xanh : 16.\r\nLá bạc : 8. \r\nCác loại lá phụ trang trí khác.', 1300000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/gio-hoa-ngay-ruc-ro.jpg.webp'),
(13, 2, 1, 'Sắc tím mộng mơ', 'Giỏ hoa', 'Hoa Thạch thảo tím mang trên mình một nét đẹp nhẹ nhàng lại dễ thương, xinh xắn. Hoa thạch thảo tím gắn liền với những ý nghĩa sâu sắc về tình yêu đôi lứa. Loài hoa này mang ý nghĩa tượng trưng cho một tình yêu bình dị và nhẹ nhàng. Trong tình yêu ấy, đôi lứa luôn đong đầy tình cảm và luôn dõi theo nhau. Những cánh hoa mỏng manh còn là tượng trưng cho những lời thề hẹn không bao giờ quên, sẽ mãi cùng nhau nắm tay đi qua những sóng gió, gập ghềnh của cuộc đời.\r\nGiỏ hoa Sắc Tím Mộng Mơ được thiết kế từ:\r\nHoa thạch thảo tím: 5 bó.', 600000, 1, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/gio-hoa-thach-thao-tim.jpg.webp'),
(14, 2, 1, 'Rose and Love', 'Giỏ hoa', 'Lẵng hoa là quà tặng hoàn hảo dành cho bạn bè, đối tác trong ngày lễ khai trương cửa hàng, công ty. Ngoài ra, bạn cũng có thể lựa chọn lẵng hoa này để gửi tặng sinh nhật cấp trên hoặc người thân.\r\nBó hoa Rose and Love được thiết kế từ :\r\nHoa hồng tím cồ : 20 cành.\r\nHoa hồng kem: 20 cành.\r\nHoa thanh liễu hồng: 10 cành. \r\nCác loại hoa lá phụ: Cỏ đồng tiền.', 1230000, 1, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/lang-hoa-Rose-and-Love.jpg.webp'),
(15, 2, 2, 'Tình yêu mãnh liệt (O\'hara)', 'Giỏ hoa', 'Hoa hồng mang tên nhân vật nữ xinh đẹp Scarlett O\'hara trong tiểu thuyết nổi tiếng \"Cuốn theo chiều gió\". O\'hara thơm manh, ngây thơ nhưng cũng rất mạnh mẽ và kiêu kì. Hoa nhằm tôn vinh vẻ đẹp người phụ nữ, với ý nghĩa “em là loài hoa đẹp nhất trong lòng anh. Tone đỏ - trắng đầy sang trọng, mãnh liệt và không kém phần ngọt ngào.\r\nGiỏ hoa Tình yêu mãnh liệt được thiết kế từ :\r\nHoa hồng cao cấp O\'hara trắng : 20  cành. \r\nHoa hồng cao cấp O\'hara đỏ : 35 cành. \r\nHoa baby trắng : 100gram. \r\nCác loại hoa lá phụ : lá đuôi chồn phun silver .', 2070000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/tinh-yeu-manh-liet.jpg.webp'),
(16, 3, 2, 'Small Pine Forest', 'Hộp hoa', 'sản phẩm Gorgeous Holiday là sự kết hợp hoàn mỹ giữa những lá thông tươi, hoa hồng đỏ sẽ là 1 món quà vô cùng hoàn hảo dành tặng cho người yêu thương của bạn.\r\nHộp hoa Small Pine Forest được thiết kế từ :\r\nLá thông tươi : 1 cành.\r\nHoa hồng đỏ : 3 cành. \r\nChuỗi ngọc đỏ : 5 cành. \r\nĐồ trang trí theo chủ đề Christmas. ', 810000, 1, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/small-pine-forest.jpg.webp'),
(17, 3, 3, 'Vườn ươm trong hộp quà', 'Hộp hoa', 'Còn gì bất ngờ hơn là cầm trên tay chiếc hộp quà thanh lịch, mở ra là cả một vườn ươm những đóa hoa đang nở rộ tươi tắn? Hãy gửi hộp quà này cho một ai đó thật đặc biệt, một ai đó bạn quan tâm thật nhiều, vì bất ngờ nằm trong chiếc hộp này chắc chắn sẽ khiến một ngày của họ bừng sáng!.\r\nVườn ươm trong hộp quà được thiết kế từ :\r\nHoa hồng tím: 10 cành. \r\nHoa hồng kem: 5 cành. \r\nHoa cát tường trắng: 3 cành. \r\nHoa baby trắng: 30 gram.\r\nHoa Thuỷ Tiên : 5 cành. \r\nCác loại hoa lá phụ : Hoa Voan , lá đuôi chồn.', 1300000, 1, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/vuon-uom-trong-hop-qua.jpg.webp'),
(18, 3, 3, 'Thắp lửa', 'Hộp hoa', 'Hộp hoa Thắp lửa là món quà vô cùng sang trọng và cao cấp phù hợp với rất nhiều dịp quan trọng như: Mừng sinh nhật, kỷ niệm ngày cưới, kỷ niệm yêu nhau, Mừng khai trương phát đạt, Quà tặng cho cấp trên của mình.\r\nTrong 1 hộp hoa Lửa tình yêu được thiết kế từ :\r\nHoa hồng EXPLORER đỏ cao cấp: 30 cành. \r\nHoa Thanh liễu trắng : 20 cành. \r\nHoa baby trắng: 300gram. ', 5520000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/thap-lua.jpg.webp'),
(19, 3, 1, 'Một Tình Yêu', 'Hộp hoa', 'Hộp hoa Một Tình Yêu được thiết kế từ:\r\nHoa hồng đỏ Pháp: 42 cành.\r\nCác loại hoa lá phụ trang trí: Lá bạc Trung.\r\nLưu ý:\r\n**Đối với các loại hoa nhập khẩu, Flomer khuyến khích khách hàng đặt trước 1-2 ngày để đảm bảo sản phẩm được chuẩn bị chỉnh chu nhất.', 1050000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/Autumn_2024/NEWBOUQUET_084.jpg.webp'),
(20, 3, 1, 'Hộp hoa cúc mẫu đơn', 'Hộp hoa', 'Hoa cúc mẫu đơn được xem như một trong những loài hoa đẹp nhất thế giới. Với vẻ đẹp duyên dáng và độc đáo kiến chúng ta liên tưởng đến một người phụ nữ xinh đẹp và tài giỏi đang khoác lên mình một tấm áo lụa thướt tha. Hoa cúc mẫu đơn nổi bật và sang trọng được yêu thích ở khắp mọi nơi chính là món quà hoàn hảo cho những tháng đầu hè.\r\nHộp hoa Cúc Mẫu Đơn được thiết kế từ:\r\nCúc mẫu đơn hồng: 10 cành.\r\nHoa hồng kem bẻ cánh: 15 cành. \r\nCác loại hoa lá phụ : Lá đuôi chồn phun silver, lá bạc. ', 1790000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/hop-hoa-cuc-mau-don.jpg.webp'),
(21, 3, 2, 'Hộp hoa Đỏ Tinh Tế', 'Hộp hoa', 'Hộp hoa Đỏ Tinh Tế được tạo nên từ những bông hoa hồng đỏ, hoa baby trắng và các loại lá phụ trang trí khác. Lẵng hoa thích hợp dành tặng những dịp chúc mừng, mừng khai trương, tân gia.\r\nHộp hoa Đỏ Tinh được thiết kế từ:\r\nHoa hồng đỏ: 30 cành.\r\nHoa baby trắng: 50 gram.\r\nCác loại hoa lá phụ: Thủy trúc, lá bạc.', 1170000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/hop-hoa-do-tinh-te.jpg.webp'),
(22, 3, 2, 'Gorgeous Holiday ', 'Hộp hoa', 'sản phẩm Gorgeous Holiday là sự kết hợp hoàn mỹ giữa những lá thông tươi, hoa hồng đỏ sẽ là 1 món quà vô cùng hoàn hảo dành tặng cho người yêu thương của bạn.\r\nHộp hoa Gorgeous Holiday được thiết kế từ :\r\nLá thông tươi : 1 cành. \r\nHoa Hồng Đỏ :7 cành. \r\nCát Tường Xanh : 1 cành. \r\nChuỗi ngọc đỏ : 5 cành. \r\nĐồ trang trí theo chủ đề Christmas. ', 810000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/gorgeous-holiday.jpg.webp'),
(23, 4, 3, 'Vụt Sáng', 'Bình hoa', 'Một tác phẩm lộng lẫy được thiết kế từ hoa hồng, lan hồ điệp kết hợp với cúc tana và các loại lá phụ. Bình hoa này chắc hẳn là một lời chúc mừng đầy hứng khởi mang lại thật nhiều niềm vui cho người được tặng.\r\nBình hoa Vụt Sáng được thiết kế từ:\r\nHoa hồng đỏ: 50-60 cành.\r\nHoa lan hồ điệp trắng: 4 cành.\r\nCúc tana.\r\nCác loại hoa lá phụ: lá bạc, cà rốt.\r\nBình hoa cao cấp.', 3150000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/B%C3%ACnh%20Hoa/vut-sang.jpg.webp'),
(24, 0, 3, 'Sớm Mai', 'Bình hoa', 'Bình hoa Sớm mai là sự kết hợp tinh tế giữa hoa hồng đỏ, chuỗi ngọc đỏ, hoa baby, rất phù hợp để trao tặng người thân, công ty, gia đình trong dịp đặc biệt.\r\nBình Hoa Sớm Mai được thiết kế từ:\r\nHoa hồng đỏ: 50 cành.\r\nHoa chuỗi ngọc đỏ: 20 cành.\r\nHoa mõm sói hồng: 10 cành. \r\nHoa baby trắng: 100 gram.\r\nCác loại hoa lá phụ: Lá đuôi chồn.', 1790000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/B%C3%ACnh%20Hoa/binh-hoa-03.jpg.webp'),
(26, 4, 2, 'Tươi Mới', 'Bình hoa', 'Bình hoa Tươi Mới là sự phối hợp giữa nhiều loại hoa quen thuộc nhưng khi đứng cùng nhau, lại tạo nên 1 tác phẩm độc đáo, mang màu sắc tươi mới và tinh tế, sang trọng. Bình hoa thích hợp tặng trong dịp sinh nhật như 1 lời chúc chân thành nhất đến người được tặng.\r\nBình Hoa Tươi Mới được thiết kế từ:\r\nHoa thiên điểu: 4 cành.\r\nHoa lan vũ nữ: 20 cành.', 1140000, 1, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/Nu%20Tam%20Xuan/binh-hoa-02.jpg.webp'),
(27, 4, 2, 'Chào Đón', 'Bình hoa', 'Sắc trắng tinh khôi của hoa baby và lan hồ điệp trắng cùng sắc hồng ngọt ngào của hoa hồng như tôn lên vẻ đẹp của nhau trong chiếc bình xinh xắn. Đây sẽ là một món quà đáng yêu đem lại nhiều niềm vui cho người ấy của bạn. Đây có thể là một bình hoa trang trí trên bàn làm việc hay trong phòng của người ấy.\r\nBình Hoa Chào Đón được thiết kế từ:\r\nLan hồ điệp trắng: 1 cành (6-8 bông/cành).\r\nHoa hồng kem: 30 cành. \r\nHoa mõm sói trắng: 25 cành.\r\nHoa baby trắng: 100 gram.\r\nCác loại hoa lá phụ: Lá dương sỉ. \r\n', 1790000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/B%C3%ACnh%20Hoa/binh-hoa-chao-don.jpg.webp'),
(28, 4, 3, 'Nắng Mới', 'Bình hoa', 'Bình hoa Nắng mới là sự phối hợp giữa nhiều loại hoa quen thuộc nhưng khi đứng cùng nhau, lại tạo nên 1 tác phẩm độc đáo, mang màu sắc tươi mới và tinh tế, sang trọng.  Bình hoa thích hợp tặng trong dịp sinh nhật hay kỷ niệm như 1 lời chúc chân thành nhất đến người được tặng.\r\nBình Hoa Nắng Mới được thiết kế từ:\r\nHoa hồng vàng: 20 cành.\r\nHoa cúc tana: 10 cành.\r\nCác loại hoa lá phụ: Cỏ lan chi, lá đuôi chồn. ', 990000, 1, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/nang-moi%20(1).jpg.webp'),
(29, 4, 1, 'Nét Ngây Thơ', 'Bình hoa', 'Bình hoa được thiết kế theo phong cách hiện đại dành tặng những cô nàng nữ tính, ngây thơ với nụ cười hiền dịu mà bạn luôn thầm nhớ thương. Bình hoa gồm các loại hoa hồng cùng cát tường trắng và hoa mõm sói mãnh mẽ sẽ tỏa sáng một ngày đặc biệt của người ấy đó.\r\nBình Hoa Nét Ngây Thơ được thiết kế từ: \r\nHoa hồng dâu: 10 cành.\r\nHoa cát tường trắng: 5 cành.\r\nHoa cát tường hồng: 5 cành.\r\nHoa cẩm chướng hồng: 5 cành. \r\nHoa cẩm chướng đỏ: 5 cành. \r\nHoa cẩm chướng viền cam: 5 cành.\r\nCác loại hoa lá phụ khác: Thạch thảo tím, lá đuôi chồn.', 710000, 1, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/net-ngay-tho.jpg.webp'),
(30, 4, 2, 'Bầu Trời Xanh Trong', 'Bình hoa', 'Là sự kết hợp giữa các bông hoa hồng pastel, hoa hồng phun xanh và hoa đồng tiền hồng, bình hoa như một lời nhắn nhủ yêu thương, lời chúc sức khỏe đến với những ai nhận được. Phù hợp với các dịp lễ khai trương, chúc mừng, sinh nhật, kỉ niệm ngày cưới...\r\nBình Hoa Bầu Trời Xanh Trong được thiết kế từ:\r\nHoa hồng kem pastel: 10 cành.\r\nHoa hồng phun xanh: 15 cành.\r\nHoa đồng tiền hồng: 10 cành.\r\nCác loại hoa lá phụ: Lá canh phun tím, sao tím. ', 1333000, 2, 'https://flowercorner.b-cdn.net/image/cache/catalog/products/August%202023/bau-troi-xanh-trong.jpg.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `IDUSER` int(11) NOT NULL,
  `Ho` varchar(20) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `taikhoan` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `maquyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`makhuyenmai`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`maquyen`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDUSER`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `IDUSER` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
