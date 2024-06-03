-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 12, 2022 lúc 01:09 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopbansach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id_chi_tiet_hoadon` bigint(10) NOT NULL,
  `sodh` bigint(20) NOT NULL,
  `masp` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` float NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL,
  `madv` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_chi_tiet_hoadon`, `sodh`, `masp`, `soluong`, `dongia`, `thanhtien`, `madv`) VALUES
(145, 128, 214, 1, 214, '214.00', '16'),
(146, 129, 219, 2, 59, '118.00', '16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `madv` bigint(20) NOT NULL,
  `tendv` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`madv`, `tendv`, `gia`) VALUES
(15, 'Bọc sách', 10),
(16, 'Gói quà tặng', 20),
(17, 'Bút', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `sodh` bigint(20) NOT NULL,
  `emailkh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaygiao` date NOT NULL,
  `tenkh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hinhthucthanhtoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`sodh`, `emailkh`, `ngaygiao`, `tenkh`, `diachi`, `dienthoai`, `hinhthucthanhtoan`, `thanhtien`) VALUES
(128, 'thuan@gmail.com', '2022-10-23', 'thuan', 'ha noi', '1234567890', 'Live', '234.00'),
(129, 'ducanh@gmail.com', '2022-10-25', 'quyen', 'h', '1234567890', 'ATM', '271.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginadmin`
--

CREATE TABLE `loginadmin` (
  `tendangnhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginadmin`
--

INSERT INTO `loginadmin` (`tendangnhap`, `matkhau`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginuser`
--

CREATE TABLE `loginuser` (
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` int(200) NOT NULL,
  `HoTen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginuser`
--

INSERT INTO `loginuser` (`email`, `matkhau`, `HoTen`, `DienThoai`) VALUES
('luongtrungthuan175@gmail.com', 1, 'Lương Trung Thuần', '0326323497'),
('nhungxinhxinh12@gmail.com', 112002, 'nhung au', '1234545'),
('quyendb@gmail.com', 1, 'quyennguyen', '123456789');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`ID`, `Ten`) VALUES
(15, 'NXB Trẻ'),
(16, 'NXB Tổng hợp TP.HCM'),
(17, 'NXB Thế Giới'),
(18, 'NXB Hội Nhà Văn'),
(19, 'Nhà Xuất Bản Công Thương'),
(21, 'NXB KIM ĐỒNG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` double NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Manhasx` bigint(10) NOT NULL,
  `Mota` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `KhuyenMai` tinyint(1) NOT NULL,
  `giakhuyenmai` double NOT NULL,
  `tacgia` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID`, `Ten`, `Gia`, `HinhAnh`, `Manhasx`, `Mota`, `date`, `KhuyenMai`, `giakhuyenmai`, `tacgia`) VALUES
(212, 'Bản Án Chế Độ Thực Dân Pháp', 75, 'DSHCM.jpg', 15, '<p>&ldquo;Bản &aacute;n chế độ thực d&acirc;n Ph&aacute;p&rdquo; (Le Proc&egrave;s de la Colonisation Fran&ccedil;aise) l&agrave; t&aacute;c phẩm của Hồ Chủ tịch viết bằng tiếng Ph&aacute;p trong khoảng những năm 1921-1925, đăng tải lần đầu ti&ecirc;n năm 1925 tại Paris (thủ đ&ocirc; nước Ph&aacute;p) tr&ecirc;n b&aacute;o Impr&eacute;kor của Quốc tế Cộng sản. T&aacute;c phẩm gồm 12 chương v&agrave; phần phụ lục, với c&aacute;ch h&agrave;nh văn ngắn gọn, s&uacute;c t&iacute;ch, c&ugrave;ng với những sự kiện đầy sức thuyết phục, t&aacute;c phẩm tố c&aacute;o thực d&acirc;n Ph&aacute;p d&ugrave;ng mọi thủ đoạn khốc liệt bắt &ldquo;d&acirc;n bản xứ&rdquo; phải đ&oacute;ng &ldquo;thuế m&aacute;u&rdquo; cho ch&iacute;nh quốc... để &ldquo;phơi th&acirc;y tr&ecirc;n chiến trường ch&acirc;u &Acirc;u&rdquo;; đ&agrave;y đọa phụ nữ, trẻ em &ldquo;thuộc địa&rdquo;; c&aacute;c thống sứ, quan lại thực d&acirc;n độc &aacute;c như một bầy th&uacute; dữ, v.v... T&aacute;c phẩm đ&atilde; g&acirc;y được tiếng vang lớn ngay từ khi ra đời, thức tỉnh lương tri của những con người y&ecirc;u tự do, b&igrave;nh đẳng, b&aacute;c &aacute;i, hướng c&aacute;c d&acirc;n tộc bị &aacute;p bức đi theo con đường C&aacute;ch mạng th&aacute;ng Mười Nga v&agrave; chủ nghĩa M&aacute;c &ndash; L&ecirc;nin, thắp l&ecirc;n ngọn lửa đấu tranh cho độc lập, tự do v&agrave; chủ nghĩa x&atilde; hội của d&acirc;n tộc Việt Nam. Nh&acirc;n hưởng ứng cuộc vận động học tập v&agrave; l&agrave;m theo tấm gương đạo đức Hồ Ch&iacute; Minh, Nh&agrave; xuất bản Trẻ in t&aacute;c phẩm &ldquo;Bản &aacute;n chế độ thực d&acirc;n Ph&aacute;p&rdquo; &ndash; một trong những đỉnh cao của văn chương ch&iacute;nh luận c&aacute;ch mạng.</p>\r\n', '2022-11-26', 0, 0, 'Hồ Chí Minh'),
(214, 'Muôn Kiếp Nhân Sinh Tập 2', 268, 'MKNS.jpg', 16, '<p>T&aacute;c phẩm Mu&ocirc;n Kiếp Nh&acirc;n Sinh tập 1 của t&aacute;c giả Nguy&ecirc;n Phong xuất bản giữa t&acirc;m điểm của đại dịch đ&atilde; thực sự tạo n&ecirc;n một hiện tượng xuất bản hiếm c&oacute; ở Việt Nam. Cuốn s&aacute;ch đ&atilde; khơi dậy những trực cảm tiềm ẩn của con người, l&agrave;m thay đổi g&oacute;c nh&igrave;n cuộc sống v&agrave; thức tỉnh nhận thức của ch&uacute;ng ta giữa một thế giới đang ng&agrave;y c&agrave;ng bất ổn v&agrave; đầy biến động. Ngo&agrave;i việc ph&aacute;t h&agrave;nh hơn 200.000 bản trong 6 th&aacute;ng, chưa kể lượng ph&aacute;t h&agrave;nh Ebook v&agrave; Audio Book qua Voiz-FM, First News c&ograve;n nhận được h&agrave;ng ng&agrave;n tin nhắn, e-mail chuyển lời cảm ơn đến t&aacute;c giả Nguy&ecirc;n Phong. Điều n&agrave;y chứng tỏ sức lan tỏa của cuốn s&aacute;ch đ&atilde; tạo n&ecirc;n một hiện tượng trong văn h&oacute;a đọc của năm 2020.</p>\r\n', '2022-11-26', 1, 214, 'Nguyên Phong'),
(216, 'Hiểu Về Trái Tim (Tái Bản 2019) ', 138, 'image_195509_1_14922.jpg', 16, '<p>HIỂU VỀ TR&Aacute;I TIM &ndash; CUỐN S&Aacute;CH MỞ CỬA THẾ GIỚI CẢM X&Uacute;C CỦA MỖI NGƯỜI &ldquo;Hiểu về tr&aacute;i tim&rdquo; l&agrave; một cuốn s&aacute;ch đặc biệt được viết bởi thiền sư Minh Niệm. Với phong th&aacute;i v&agrave; lối h&agrave;nh văn gần gũi với những sinh hoạt của người Việt, thầy Minh Niệm đ&atilde; thật sự thổi hồn Việt v&agrave;o cuốn s&aacute;ch nhỏ n&agrave;y. Xuất bản lần đầu ti&ecirc;n v&agrave;o năm 2011, Hiểu Về Tr&aacute;i Tim tr&igrave;nh l&agrave;ng cũng l&uacute;c với kỷ lục: cuốn s&aacute;ch c&oacute; số lượng in lần đầu lớn nhất: 100.000 bản. Trung t&acirc;m s&aacute;ch kỷ lục Việt Nam c&ocirc;ng nhận kỳ t&iacute;ch ấy nhưng đến nay, con số ph&aacute;t h&agrave;nh của Hiểu về tr&aacute;i tim vẫn chưa c&oacute; dấu hiệu chậm lại. L&agrave; t&aacute;c phẩm đầu tay của nh&agrave; sư Minh Niệm, người s&aacute;ng lập d&ograve;ng thiền hiểu biết (Understanding Meditation), kết hợp giữa tư tưởng Phật gi&aacute;o Đại thừa v&agrave; Thiền nguy&ecirc;n thủy Vipassana, nhưng Hiểu Về Tr&aacute;i Tim kh&ocirc;ng phải t&aacute;c phẩm thuyết gi&aacute;o về Phật ph&aacute;p. Cuốn s&aacute;ch rất &ldquo;đời&rdquo; với những ưu tư của một người tu nh&igrave;n về c&otilde;i thế. Ở đ&oacute;, c&oacute; hạnh ph&uacute;c, c&oacute; đau khổ, c&oacute; t&igrave;nh y&ecirc;u, c&oacute; c&ocirc; đơn, c&oacute; tuyệt vọng, c&oacute; lười biếng, c&oacute; yếu đuối, c&oacute; bu&ocirc;ng xả&hellip; Nhưng, tất cả những hỉ nộ &aacute;i ố ấy đều được kho&aacute;c l&ecirc;n tấm &aacute;o mới, một tấm &aacute;o tinh khiết v&agrave; xuy&ecirc;n suốt, khiến người đọc khi nh&igrave;n v&agrave;o, đều thấy mọi sự như nhẹ nh&agrave;ng hơn&hellip;</p>\r\n', '2022-11-26', 1, 110, 'Minh Niệm'),
(218, 'Đừng Chạy Theo Số Đông ', 200, 'image_195509_1_37011.jpg', 17, 'Nếu tất cả mọi người ai cũng làm chủ doanh nghiệp, thì ai sẽ đi làm thuê?\r\n\r\nTôi.\r\n\r\nBởi lúc đó họ sẽ phải đấu giá để có được tôi.\r\n\r\nNhưng điều này không bao giờ xảy ra. Bởi ngay từ trong trứng đến lúc mọc cánh, chúng ta đã được dạy phải làm cho người khác cả đời. Chỉ có 1% được dạy khác.\r\n\r\nBạn không chạy theo số đông.\r\n\r\nBạn LÀ số đông.\r\n\r\nTuy nhiên bạn đừng nhầm lẫn. Cuốn sách này không chỉ nói về vấn đề “làm thuê” hay “làm riêng”. Đây chỉ là một trong những khía cạnh rất nhỏ.\r\n\r\nCuốn sách này muốn làm nổi bật một hệ tư duy ngầm lớn và khủng khiếp hơn thế mà chúng ta không nhận ra. Một sức hút vô hình nhưng mạnh mẽ.', '2022-11-28', 0, 0, 'Kiên Trần'),
(219, 'Nhà Giả Kim (Tái Bản 2020) ', 79, 'image_195509_1_36793.jpg', 18, 'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người. \r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\r\n\r\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”', '2022-11-26', 1, 59, 'Paulo Coelho'),
(220, 'Quốc Gia Khởi Nghiệp ( Tái Bản 2019 )', 133, 'c1e7282144fcfaf258a23bc4bf04f47a.jpg', 17, '<p>L&agrave; c&acirc;u chuyện viết về sự ph&aacute;t triển thần kỳ của nền kinh tế Israel từ l&uacute;c lập quốc cho đến khi trở th&agrave;nh quốc gia c&oacute; nền c&ocirc;ng nghệ h&agrave;ng đầu thế giới. Quyển s&aacute;ch n&agrave;y c&oacute; thể trả lời cho những thắc mắc l&agrave;m thế n&agrave;o một đất nước nhỏ b&eacute; lại c&oacute; thể tồn tại giữa sự th&ugrave; địch của c&aacute;c quốc gia l&acirc;n cận, đối ph&oacute; với những cuộc chiến giữ vững bờ c&otilde;i m&agrave; vẫn tạo ra sự s&aacute;ng tạo vượt bậc trong c&aacute;c lĩnh vực c&ocirc;ng nghệ, qu&acirc;n sự v&agrave; d&acirc;n sự.</p>\r\n\r\n<p>Với ng&ograve;i b&uacute;t sắc sảo, phong ph&uacute; v&agrave; tập trung những lời nhận x&eacute;t thực tế từ những doanh nh&acirc;n th&agrave;nh c&ocirc;ng h&agrave;ng đầu, Quốc gia khởi nghiệp đ&atilde; đem đến những c&aacute;i nh&igrave;n mới mẻ về con người v&agrave; đất nước Israel, l&agrave;m s&aacute;ng tỏ phần n&agrave;o những th&agrave;nh c&ocirc;ng tưởng chừng như kh&ocirc;ng tưởng của đất nước nhỏ b&eacute; n&agrave;y. C&aacute; t&iacute;nh quyết liệt, d&aacute;m th&aacute;ch thức v&agrave; s&aacute;ng tạo kh&ocirc;ng ngừng của những con người Do Th&aacute;i lưu vong, chạy trốn v&agrave; sống s&oacute;t sau những cuộc thảm s&aacute;t trong Chiến tranh thế giới thứ II, kh&ocirc;ng cam chịu cuộc sống ngh&egrave;o kh&oacute;, họ đ&atilde; c&ugrave;ng với những người theo Chủ nghĩa Phục quốc Do Th&aacute;i g&acirc;y dựng v&agrave; bảo vệ đất nước Israel bằng ch&iacute;nh sức lực của m&igrave;nh v&agrave; khiến cả thế giới phải kinh ngạc.</p>\r\n', '2022-10-25', 1, 100, 'DO thái'),
(224, 'doraemon', 12500, '203534_p67314mconchonho.jpg', 15, '<p><strong>sadfghjgfdsafghjgfdsasdfghj</strong></p>\r\n', '2022-12-12', 1, 0, 'DO thái');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_chi_tiet_hoadon`),
  ADD KEY `chitiethoadon` (`sodh`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`madv`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`sodh`);

--
-- Chỉ mục cho bảng `loginadmin`
--
ALTER TABLE `loginadmin`
  ADD PRIMARY KEY (`tendangnhap`);

--
-- Chỉ mục cho bảng `loginuser`
--
ALTER TABLE `loginuser`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`Ten`),
  ADD KEY `sanpham` (`Manhasx`),
  ADD KEY `giakhuyenmai` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_2` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_3` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_4` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_5` (`giakhuyenmai`);
ALTER TABLE `sanpham` ADD FULLTEXT KEY `Ten_2` (`Ten`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_chi_tiet_hoadon` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `madv` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `sodh` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon` FOREIGN KEY (`sodh`) REFERENCES `hoadon` (`sodh`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham` FOREIGN KEY (`Manhasx`) REFERENCES `nhaxuatban` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
