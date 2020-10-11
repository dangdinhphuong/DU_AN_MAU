-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 29, 2020 lúc 04:36 PM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `maithigam_duanmau`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Thời trang Nam', '', '2020-05-26', '0000-00-00'),
(2, 'Thời trang Nữ', '5ecc7a383ae49huawei-mate-30-pro-400x460-4-400x460.png', '2020-05-26', '0000-00-00'),
(26, 'Thời trang trẻ em', '', '0000-00-00', '0000-00-00'),
(27, 'Điện thoại', '', '0000-00-00', '0000-00-00'),
(28, 'Thực phẩm', '', '0000-00-00', '0000-00-00'),
(29, 'Làm đẹp', '', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `product_id`, `user_id`, `content`, `created_at`) VALUES
(9, 113, 33, 'good website', '2020-09-08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(300) NOT NULL,
  `image` varchar(225) NOT NULL,
  `detail` mediumtext NOT NULL,
  `price` float NOT NULL,
  `sale` float NOT NULL,
  `status` int(1) NOT NULL,
  `view` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `description`, `image`, `detail`, `price`, `sale`, `status`, `view`, `created_at`, `updated_at`) VALUES
(110, 26, 'váy tím', '<div style=\"color: #676666; font-family: -apple-system, \'Helvetica Neue\', Helvetica, Roboto, \'Droid Sans\', Arial, sans-serif; font-size: 12px;\">-&nbsp;<span style=\"color: green;\">MIỄN PH&Iacute; VẬN CHUYỂN</span>&nbsp;đơn h&agrave;ng từ&nbsp;500.000đ&nbsp;tr&ecirc;n To&agrave;n quốc. Ri&ecirc;ng TPH', '_1ks20s004-sp141-1-thumb-.jpg', '<div style=\"color: #444444; font-family: -apple-system, \'Helvetica Neue\', Helvetica, Roboto, \'Droid Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">\r\n<h2 style=\"margin: 10px 0px 20px; font-family: inherit; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 20px; width: 1130px;\">Bộ thun ba l&ocirc; dễ thương cho&nbsp;<a style=\"color: #444444; text-decoration-line: none;\" href=\"http://www.bexinhshop.vn/thoi-trang-be-trai\" target=\"_blank\" rel=\"noopener\">b&eacute; trai</a>&nbsp;3 - 10 Tuổi BTB23259</h2>\r\n</div>\r\n<div id=\"tab-attribute\" class=\"tab-content\" style=\"overflow: auto; color: #444444; font-family: -apple-system, \'Helvetica Neue\', Helvetica, Roboto, \'Droid Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">\r\n<table class=\"table attribute\" style=\"max-width: 100%; background-color: transparent; border-spacing: 0px; width: 1129.6px; margin-bottom: 20px; color: rgba(0, 0, 0, 0.87); font-size: 12px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top: 0px;\" colspan=\"2\">Thuộc t&iacute;nh sản phẩm</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Thiết kế</td>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Bộ thun in Ba l&ocirc; quần t&uacute;i hộp đ&aacute;ng y&ecirc;u cho b&eacute; trai. Nguy&ecirc;n bộ chất thun cotton 4c co gi&atilde;n , tho&aacute;ng m&aacute;t. H&igrave;nh in trước sau sắc n&eacute;t, ngộ nghĩnh. Quần may t&uacute;i hộp đi c&ugrave;ng tone với &aacute;o. Nh&iacute; size 3-10. Đại size 11-16.</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Chất liệu</td>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Thun cotton</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Xuất xứ</td>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Việt Nam</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div style=\"text-align: center;\">\r\n<div class=\"descipon_image\" style=\"border: 1px solid #e4e4e4; border-radius: 10px; padding: 10px; width: 600px; margin: 0px auto 30px;\"><img class=\"lazy \" style=\"max-width: 100%; height: auto; vertical-align: middle; border: 0px; display: inline;\" title=\"Bộ thun ba l&ocirc; dễ thương cho b&eacute; trai 3 - 10 Tuổi BTB23259\" src=\"https://getbootstrap.com/docs/4.0/content/tables/\" data-original=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhla.jpg\" /></div>\r\n<div class=\"descipon_image\" style=\"border: 1px solid #e4e4e4; border-radius: 10px; padding: 10px; width: 600px; margin: 0px auto 30px;\"><img class=\"lazy \" style=\"max-width: 100%; height: auto; vertical-align: middle; border: 0px; display: inline;\" title=\"Bộ thun ba l&ocirc; dễ thương cho b&eacute; trai 3 - 10 Tuổi BTB23259\" src=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhduong.jpg\" data-original=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhduong.jpg\" /></div>\r\n<div class=\"descipon_image\" style=\"border: 1px solid #e4e4e4; border-radius: 10px; padding: 10px; width: 600px; margin: 0px auto 30px;\"><img class=\"lazy \" style=\"max-width: 100%; height: auto; vertical-align: middle; border: 0px; display: inline;\" title=\"Bộ thun ba l&ocirc; dễ thương cho b&eacute; trai 3 - 10 Tuổi BTB23259\" src=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbalovang.jpg\" data-original=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbalovang.jpg\" /></div>\r\n<div class=\"descipon_image\" style=\"border: 1px solid #e4e4e4; border-radius: 10px; padding: 10px; width: 600px; margin: 0px auto 30px;\"><img class=\"lazy \" style=\"max-width: 100%; height: auto; vertical-align: middle; border: 0px; display: inline;\" title=\"Bộ thun ba l&ocirc; dễ thương cho b&eacute; trai 3 - 10 Tuổi BTB23259\" src=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhduong1.jpg\" data-original=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhduong1.jpg\" /></div>\r\n</div>\r\n</div>\r\n<div style=\"color: #444444; font-family: -apple-system, \'Helvetica Neue\', Helvetica, Roboto, \'Droid Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">\r\n<h3 style=\"margin: 10px 0px; font-family: inherit; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 24px;\">C&Aacute;CH GIẶT ỦI V&Agrave; BẢO QUẢN QUẦN &Aacute;O TRẺ EM</h3>\r\n<p style=\"margin: 0px 0px 10px;\">- V&ograve; bằng tay với lần giặt đầu ti&ecirc;n, giặt bằng nước l&atilde; v&agrave; kh&ocirc;ng c&oacute; x&agrave; ph&ograve;ng để lớp in mềm hơn, chống bong tr&oacute;c. N&ecirc;n giặt sản phẩm bằng nước lạnh hoặc nước n&oacute;ng dưới 40 độ v&igrave; nếu giặt trong nước qu&aacute; n&oacute;ng sẽ l&agrave;m vải gi&atilde;n ra v&agrave; lỏng sản phẩm.</p>\r\n<p style=\"margin: 0px 0px 10px;\">- Để giữ m&agrave;u sản được l&acirc;u v&agrave; kh&ocirc;ng bị ra m&agrave;u trong qu&aacute; tr&igrave;nh giặt, mẹ c&oacute; thể ng&acirc;m sản phẩm trong nước ấm c&oacute; pha ch&uacute;t giấm trong khoảng 15-20 ph&uacute;t.</p>\r\n<p style=\"margin: 0px 0px 10px;\">- Kh&ocirc;ng đổ trực tiếp c&aacute;c loại x&agrave; b&ocirc;ng hoặc nước tẩy l&ecirc;n h&igrave;nh in. Mẹ n&ecirc;n hạn chế d&ugrave;ng c&aacute;c loại nước xả mềm vải v&igrave; n&oacute; sẽ l&agrave;m sản phẩm bị gi&atilde;n rất nhanh v&agrave; khiến h&igrave;nh in bị mềm, dễ bong tr&oacute;c. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ c&oacute; thể d&ugrave;ng c&aacute;c loại nước xả thơm.</p>\r\n<p style=\"margin: 0px 0px 10px;\">- Kh&ocirc;ng n&ecirc;n để sản phẩm ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, sản phẩm dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải. Tr&aacute;nh phơi sản phẩm trực tiếp dưới nắng v&igrave; sẽ l&agrave;m m&agrave;u v&agrave; h&igrave;nh in phai m&agrave;u.</p>\r\n<p style=\"margin: 0px 0px 10px;\">- Khi ủi sản phẩm tuyệt đối kh&ocirc;ng được ủi l&ecirc;n bề mặt in h&igrave;nh tr&ecirc;n sản phẩm, n&ecirc;n ủi ở nhiệt độ thấp v&agrave; lộn tr&aacute;i sản phẩm ra trước khi ủi để tr&aacute;nh l&agrave;m chết m&agrave;u sắc của vải v&agrave; l&agrave;m bong tr&oacute;c hay biến dạng những h&igrave;nh ảnh được in tr&ecirc;n sản phẩm.</p>\r\n</div>', 200000, 25, 1, 0, '2020-09-28', '2020-09-29'),
(111, 26, 'bộ áo thun', '<div style=\"color: #676666; font-family: -apple-system, \'Helvetica Neue\', Helvetica, Roboto, \'Droid Sans\', Arial, sans-serif; font-size: 12px;\">-&nbsp;<span style=\"color: green;\">MIỄN PH&Iacute; VẬN CHUYỂN</span>&nbsp;đơn h&agrave;ng từ&nbsp;500.000đ&nbsp;tr&ecirc;n To&agrave;n quốc. Ri&ecirc;ng TPH', '1bk20s001-sp020-1-thumb.jpg', '<div style=\"color: #444444; font-family: -apple-system, \'Helvetica Neue\', Helvetica, Roboto, \'Droid Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">\r\n<h2 style=\"margin: 10px 0px 20px; font-family: inherit; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 20px; width: 1130px;\">Bộ thun ba l&ocirc; dễ thương cho&nbsp;<a style=\"color: #444444; text-decoration-line: none;\" href=\"http://www.bexinhshop.vn/thoi-trang-be-trai\" target=\"_blank\" rel=\"noopener\">b&eacute; trai</a>&nbsp;3 - 10 Tuổi BTB23259</h2>\r\n</div>\r\n<div id=\"tab-attribute\" class=\"tab-content\" style=\"overflow: auto; color: #444444; font-family: -apple-system, \'Helvetica Neue\', Helvetica, Roboto, \'Droid Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">\r\n<table class=\"table attribute\" style=\"max-width: 100%; background-color: transparent; border-spacing: 0px; width: 1129.6px; margin-bottom: 20px; color: rgba(0, 0, 0, 0.87); font-size: 12px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top: 0px;\" colspan=\"2\">Thuộc t&iacute;nh sản phẩm</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Thiết kế</td>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Bộ thun in Ba l&ocirc; quần t&uacute;i hộp đ&aacute;ng y&ecirc;u cho b&eacute; trai. Nguy&ecirc;n bộ chất thun cotton 4c co gi&atilde;n , tho&aacute;ng m&aacute;t. H&igrave;nh in trước sau sắc n&eacute;t, ngộ nghĩnh. Quần may t&uacute;i hộp đi c&ugrave;ng tone với &aacute;o. Nh&iacute; size 3-10. Đại size 11-16.</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Chất liệu</td>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Thun cotton</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Xuất xứ</td>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Việt Nam</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div style=\"text-align: center;\">\r\n<div class=\"descipon_image\" style=\"border: 1px solid #e4e4e4; border-radius: 10px; padding: 10px; width: 600px; margin: 0px auto 30px;\"><img class=\"lazy \" style=\"max-width: 100%; height: auto; vertical-align: middle; border: 0px; display: inline;\" title=\"Bộ thun ba l&ocirc; dễ thương cho b&eacute; trai 3 - 10 Tuổi BTB23259\" src=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhla.jpg\" data-original=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhla.jpg\" /></div>\r\n<div class=\"descipon_image\" style=\"border: 1px solid #e4e4e4; border-radius: 10px; padding: 10px; width: 600px; margin: 0px auto 30px;\"><img class=\"lazy \" style=\"max-width: 100%; height: auto; vertical-align: middle; border: 0px; display: inline;\" title=\"Bộ thun ba l&ocirc; dễ thương cho b&eacute; trai 3 - 10 Tuổi BTB23259\" src=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhduong.jpg\" data-original=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhduong.jpg\" /></div>\r\n<div class=\"descipon_image\" style=\"border: 1px solid #e4e4e4; border-radius: 10px; padding: 10px; width: 600px; margin: 0px auto 30px;\"><img class=\"lazy \" style=\"max-width: 100%; height: auto; vertical-align: middle; border: 0px; display: inline;\" title=\"Bộ thun ba l&ocirc; dễ thương cho b&eacute; trai 3 - 10 Tuổi BTB23259\" src=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbalovang.jpg\" data-original=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbalovang.jpg\" /></div>\r\n<div class=\"descipon_image\" style=\"border: 1px solid #e4e4e4; border-radius: 10px; padding: 10px; width: 600px; margin: 0px auto 30px;\"><img class=\"lazy \" style=\"max-width: 100%; height: auto; vertical-align: middle; border: 0px; display: inline;\" title=\"Bộ thun ba l&ocirc; dễ thương cho b&eacute; trai 3 - 10 Tuổi BTB23259\" src=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhduong1.jpg\" data-original=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhduong1.jpg\" /></div>\r\n</div>\r\n</div>\r\n<div style=\"color: #444444; font-family: -apple-system, \'Helvetica Neue\', Helvetica, Roboto, \'Droid Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">\r\n<h3 style=\"margin: 10px 0px; font-family: inherit; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 24px;\">C&Aacute;CH GIẶT ỦI V&Agrave; BẢO QUẢN QUẦN &Aacute;O TRẺ EM</h3>\r\n<p style=\"margin: 0px 0px 10px;\">- V&ograve; bằng tay với lần giặt đầu ti&ecirc;n, giặt bằng nước l&atilde; v&agrave; kh&ocirc;ng c&oacute; x&agrave; ph&ograve;ng để lớp in mềm hơn, chống bong tr&oacute;c. N&ecirc;n giặt sản phẩm bằng nước lạnh hoặc nước n&oacute;ng dưới 40 độ v&igrave; nếu giặt trong nước qu&aacute; n&oacute;ng sẽ l&agrave;m vải gi&atilde;n ra v&agrave; lỏng sản phẩm.</p>\r\n<p style=\"margin: 0px 0px 10px;\">- Để giữ m&agrave;u sản được l&acirc;u v&agrave; kh&ocirc;ng bị ra m&agrave;u trong qu&aacute; tr&igrave;nh giặt, mẹ c&oacute; thể ng&acirc;m sản phẩm trong nước ấm c&oacute; pha ch&uacute;t giấm trong khoảng 15-20 ph&uacute;t.</p>\r\n<p style=\"margin: 0px 0px 10px;\">- Kh&ocirc;ng đổ trực tiếp c&aacute;c loại x&agrave; b&ocirc;ng hoặc nước tẩy l&ecirc;n h&igrave;nh in. Mẹ n&ecirc;n hạn chế d&ugrave;ng c&aacute;c loại nước xả mềm vải v&igrave; n&oacute; sẽ l&agrave;m sản phẩm bị gi&atilde;n rất nhanh v&agrave; khiến h&igrave;nh in bị mềm, dễ bong tr&oacute;c. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ c&oacute; thể d&ugrave;ng c&aacute;c loại nước xả thơm.</p>\r\n<p style=\"margin: 0px 0px 10px;\">- Kh&ocirc;ng n&ecirc;n để sản phẩm ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, sản phẩm dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải. Tr&aacute;nh phơi sản phẩm trực tiếp dưới nắng v&igrave; sẽ l&agrave;m m&agrave;u v&agrave; h&igrave;nh in phai m&agrave;u.</p>\r\n<p style=\"margin: 0px 0px 10px;\">- Khi ủi sản phẩm tuyệt đối kh&ocirc;ng được ủi l&ecirc;n bề mặt in h&igrave;nh tr&ecirc;n sản phẩm, n&ecirc;n ủi ở nhiệt độ thấp v&agrave; lộn tr&aacute;i sản phẩm ra trước khi ủi để tr&aacute;nh l&agrave;m chết m&agrave;u sắc của vải v&agrave; l&agrave;m bong tr&oacute;c hay biến dạng những h&igrave;nh ảnh được in tr&ecirc;n sản phẩm.</p>\r\n</div>', 300000, 30, 1, 2, '2020-09-28', '0000-00-00'),
(112, 26, 'áo phông', '<div style=\"color: #676666; font-family: -apple-system, \'Helvetica Neue\', Helvetica, Roboto, \'Droid Sans\', Arial, sans-serif; font-size: 12px;\">-&nbsp;<span style=\"color: green;\">MIỄN PH&Iacute; VẬN CHUYỂN</span>&nbsp;đơn h&agrave;ng từ&nbsp;500.000đ&nbsp;tr&ecirc;n To&agrave;n quốc. Ri&ecirc;ng TPH', '2bp20s004-sj519-1-thumb.jpg', '<div style=\"color: #444444; font-family: -apple-system, \'Helvetica Neue\', Helvetica, Roboto, \'Droid Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">\r\n<h2 style=\"margin: 10px 0px 20px; font-family: inherit; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 20px; width: 1130px;\">Bộ thun ba l&ocirc; dễ thương cho&nbsp;<a style=\"color: #444444; text-decoration-line: none;\" href=\"http://www.bexinhshop.vn/thoi-trang-be-trai\" target=\"_blank\" rel=\"noopener\">b&eacute; trai</a>&nbsp;3 - 10 Tuổi BTB23259</h2>\r\n</div>\r\n<div id=\"tab-attribute\" class=\"tab-content\" style=\"overflow: auto; color: #444444; font-family: -apple-system, \'Helvetica Neue\', Helvetica, Roboto, \'Droid Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">\r\n<table class=\"table attribute\" style=\"max-width: 100%; background-color: transparent; border-spacing: 0px; width: 1129.6px; margin-bottom: 20px; color: rgba(0, 0, 0, 0.87); font-size: 12px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top: 0px;\" colspan=\"2\">Thuộc t&iacute;nh sản phẩm</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Thiết kế</td>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Bộ thun in Ba l&ocirc; quần t&uacute;i hộp đ&aacute;ng y&ecirc;u cho b&eacute; trai. Nguy&ecirc;n bộ chất thun cotton 4c co gi&atilde;n , tho&aacute;ng m&aacute;t. H&igrave;nh in trước sau sắc n&eacute;t, ngộ nghĩnh. Quần may t&uacute;i hộp đi c&ugrave;ng tone với &aacute;o. Nh&iacute; size 3-10. Đại size 11-16.</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Chất liệu</td>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Thun cotton</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Xuất xứ</td>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Việt Nam</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div style=\"text-align: center;\">\r\n<div class=\"descipon_image\" style=\"border: 1px solid #e4e4e4; border-radius: 10px; padding: 10px; width: 600px; margin: 0px auto 30px;\"><img class=\"lazy \" style=\"max-width: 100%; height: auto; vertical-align: middle; border: 0px; display: inline;\" title=\"Bộ thun ba l&ocirc; dễ thương cho b&eacute; trai 3 - 10 Tuổi BTB23259\" src=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhla.jpg\" data-original=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhla.jpg\" /></div>\r\n<div class=\"descipon_image\" style=\"border: 1px solid #e4e4e4; border-radius: 10px; padding: 10px; width: 600px; margin: 0px auto 30px;\"><img class=\"lazy \" style=\"max-width: 100%; height: auto; vertical-align: middle; border: 0px; display: inline;\" title=\"Bộ thun ba l&ocirc; dễ thương cho b&eacute; trai 3 - 10 Tuổi BTB23259\" src=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhduong.jpg\" data-original=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhduong.jpg\" /></div>\r\n<div class=\"descipon_image\" style=\"border: 1px solid #e4e4e4; border-radius: 10px; padding: 10px; width: 600px; margin: 0px auto 30px;\"><img class=\"lazy \" style=\"max-width: 100%; height: auto; vertical-align: middle; border: 0px; display: inline;\" title=\"Bộ thun ba l&ocirc; dễ thương cho b&eacute; trai 3 - 10 Tuổi BTB23259\" src=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbalovang.jpg\" data-original=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbalovang.jpg\" /></div>\r\n<div class=\"descipon_image\" style=\"border: 1px solid #e4e4e4; border-radius: 10px; padding: 10px; width: 600px; margin: 0px auto 30px;\"><img class=\"lazy \" style=\"max-width: 100%; height: auto; vertical-align: middle; border: 0px; display: inline;\" title=\"Bộ thun ba l&ocirc; dễ thương cho b&eacute; trai 3 - 10 Tuổi BTB23259\" src=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhduong1.jpg\" data-original=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhduong1.jpg\" /></div>\r\n</div>\r\n</div>\r\n<div style=\"color: #444444; font-family: -apple-system, \'Helvetica Neue\', Helvetica, Roboto, \'Droid Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">\r\n<h3 style=\"margin: 10px 0px; font-family: inherit; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 24px;\">C&Aacute;CH GIẶT ỦI V&Agrave; BẢO QUẢN QUẦN &Aacute;O TRẺ EM</h3>\r\n<p style=\"margin: 0px 0px 10px;\">- V&ograve; bằng tay với lần giặt đầu ti&ecirc;n, giặt bằng nước l&atilde; v&agrave; kh&ocirc;ng c&oacute; x&agrave; ph&ograve;ng để lớp in mềm hơn, chống bong tr&oacute;c. N&ecirc;n giặt sản phẩm bằng nước lạnh hoặc nước n&oacute;ng dưới 40 độ v&igrave; nếu giặt trong nước qu&aacute; n&oacute;ng sẽ l&agrave;m vải gi&atilde;n ra v&agrave; lỏng sản phẩm.</p>\r\n<p style=\"margin: 0px 0px 10px;\">- Để giữ m&agrave;u sản được l&acirc;u v&agrave; kh&ocirc;ng bị ra m&agrave;u trong qu&aacute; tr&igrave;nh giặt, mẹ c&oacute; thể ng&acirc;m sản phẩm trong nước ấm c&oacute; pha ch&uacute;t giấm trong khoảng 15-20 ph&uacute;t.</p>\r\n<p style=\"margin: 0px 0px 10px;\">- Kh&ocirc;ng đổ trực tiếp c&aacute;c loại x&agrave; b&ocirc;ng hoặc nước tẩy l&ecirc;n h&igrave;nh in. Mẹ n&ecirc;n hạn chế d&ugrave;ng c&aacute;c loại nước xả mềm vải v&igrave; n&oacute; sẽ l&agrave;m sản phẩm bị gi&atilde;n rất nhanh v&agrave; khiến h&igrave;nh in bị mềm, dễ bong tr&oacute;c. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ c&oacute; thể d&ugrave;ng c&aacute;c loại nước xả thơm.</p>\r\n<p style=\"margin: 0px 0px 10px;\">- Kh&ocirc;ng n&ecirc;n để sản phẩm ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, sản phẩm dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải. Tr&aacute;nh phơi sản phẩm trực tiếp dưới nắng v&igrave; sẽ l&agrave;m m&agrave;u v&agrave; h&igrave;nh in phai m&agrave;u.</p>\r\n<p style=\"margin: 0px 0px 10px;\">- Khi ủi sản phẩm tuyệt đối kh&ocirc;ng được ủi l&ecirc;n bề mặt in h&igrave;nh tr&ecirc;n sản phẩm, n&ecirc;n ủi ở nhiệt độ thấp v&agrave; lộn tr&aacute;i sản phẩm ra trước khi ủi để tr&aacute;nh l&agrave;m chết m&agrave;u sắc của vải v&agrave; l&agrave;m bong tr&oacute;c hay biến dạng những h&igrave;nh ảnh được in tr&ecirc;n sản phẩm.</p>\r\n</div>', 500000, 12, 1, 28, '2020-09-28', '0000-00-00'),
(113, 26, 'bộ pizama2', '<div style=\"color: #676666; font-family: -apple-system, \'Helvetica Neue\', Helvetica, Roboto, \'Droid Sans\', Arial, sans-serif; font-size: 12px;\">-&nbsp;<span style=\"color: green;\">MIỄN PH&Iacute; VẬN CHUYỂN</span>&nbsp;đơn h&agrave;ng từ&nbsp;500.000đ&nbsp;tr&ecirc;n To&agrave;n quốc. Ri&ecirc;ng TPH', '1ls20s007-fm112-2.jpg', '<div style=\"color: #444444; font-family: -apple-system, \'Helvetica Neue\', Helvetica, Roboto, \'Droid Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">\r\n<h2 style=\"margin: 10px 0px 20px; font-family: inherit; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 20px; width: 1130px;\">Bộ thun ba l&ocirc; dễ thương cho&nbsp;<a style=\"color: #444444; text-decoration-line: none;\" href=\"http://www.bexinhshop.vn/thoi-trang-be-trai\" target=\"_blank\" rel=\"noopener\">b&eacute; trai</a>&nbsp;3 - 10 Tuổi BTB23259</h2>\r\n</div>\r\n<div id=\"tab-attribute\" class=\"tab-content\" style=\"overflow: auto; color: #444444; font-family: -apple-system, \'Helvetica Neue\', Helvetica, Roboto, \'Droid Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">\r\n<table class=\"table attribute\" style=\"max-width: 100%; background-color: transparent; border-spacing: 0px; width: 1129.6px; margin-bottom: 20px; color: rgba(0, 0, 0, 0.87); font-size: 12px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top: 0px;\" colspan=\"2\">Thuộc t&iacute;nh sản phẩm</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Thiết kế</td>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Bộ thun in Ba l&ocirc; quần t&uacute;i hộp đ&aacute;ng y&ecirc;u cho b&eacute; trai. Nguy&ecirc;n bộ chất thun cotton 4c co gi&atilde;n , tho&aacute;ng m&aacute;t. H&igrave;nh in trước sau sắc n&eacute;t, ngộ nghĩnh. Quần may t&uacute;i hộp đi c&ugrave;ng tone với &aacute;o. Nh&iacute; size 3-10. Đại size 11-16.</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Chất liệu</td>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Thun cotton</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Xuất xứ</td>\r\n<td style=\"padding: 8px; line-height: 20px; vertical-align: top; border-top-color: #dddddd;\">Việt Nam</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div style=\"text-align: center;\">\r\n<div class=\"descipon_image\" style=\"border: 1px solid #e4e4e4; border-radius: 10px; padding: 10px; width: 600px; margin: 0px auto 30px;\"><img class=\"lazy \" style=\"max-width: 100%; height: auto; vertical-align: middle; border: 0px; display: inline;\" title=\"Bộ thun ba l&ocirc; dễ thương cho b&eacute; trai 3 - 10 Tuổi BTB23259\" src=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhla.jpg\" data-original=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhla.jpg\" /></div>\r\n<div class=\"descipon_image\" style=\"border: 1px solid #e4e4e4; border-radius: 10px; padding: 10px; width: 600px; margin: 0px auto 30px;\"><img class=\"lazy \" style=\"max-width: 100%; height: auto; vertical-align: middle; border: 0px; display: inline;\" title=\"Bộ thun ba l&ocirc; dễ thương cho b&eacute; trai 3 - 10 Tuổi BTB23259\" src=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhduong.jpg\" data-original=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhduong.jpg\" /></div>\r\n<div class=\"descipon_image\" style=\"border: 1px solid #e4e4e4; border-radius: 10px; padding: 10px; width: 600px; margin: 0px auto 30px;\"><img class=\"lazy \" style=\"max-width: 100%; height: auto; vertical-align: middle; border: 0px; display: inline;\" title=\"Bộ thun ba l&ocirc; dễ thương cho b&eacute; trai 3 - 10 Tuổi BTB23259\" src=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbalovang.jpg\" data-original=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbalovang.jpg\" /></div>\r\n<div class=\"descipon_image\" style=\"border: 1px solid #e4e4e4; border-radius: 10px; padding: 10px; width: 600px; margin: 0px auto 30px;\"><img class=\"lazy \" style=\"max-width: 100%; height: auto; vertical-align: middle; border: 0px; display: inline;\" title=\"Bộ thun ba l&ocirc; dễ thương cho b&eacute; trai 3 - 10 Tuổi BTB23259\" src=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhduong1.jpg\" data-original=\"https://www.bexinhshop.vn/image/data/22-9-2020/bothunbaloxanhduong1.jpg\" /></div>\r\n</div>\r\n</div>\r\n<div style=\"color: #444444; font-family: -apple-system, \'Helvetica Neue\', Helvetica, Roboto, \'Droid Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">\r\n<h3 style=\"margin: 10px 0px; font-family: inherit; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 24px;\">C&Aacute;CH GIẶT ỦI V&Agrave; BẢO QUẢN QUẦN &Aacute;O TRẺ EM</h3>\r\n<p style=\"margin: 0px 0px 10px;\">- V&ograve; bằng tay với lần giặt đầu ti&ecirc;n, giặt bằng nước l&atilde; v&agrave; kh&ocirc;ng c&oacute; x&agrave; ph&ograve;ng để lớp in mềm hơn, chống bong tr&oacute;c. N&ecirc;n giặt sản phẩm bằng nước lạnh hoặc nước n&oacute;ng dưới 40 độ v&igrave; nếu giặt trong nước qu&aacute; n&oacute;ng sẽ l&agrave;m vải gi&atilde;n ra v&agrave; lỏng sản phẩm.</p>\r\n<p style=\"margin: 0px 0px 10px;\">- Để giữ m&agrave;u sản được l&acirc;u v&agrave; kh&ocirc;ng bị ra m&agrave;u trong qu&aacute; tr&igrave;nh giặt, mẹ c&oacute; thể ng&acirc;m sản phẩm trong nước ấm c&oacute; pha ch&uacute;t giấm trong khoảng 15-20 ph&uacute;t.</p>\r\n<p style=\"margin: 0px 0px 10px;\">- Kh&ocirc;ng đổ trực tiếp c&aacute;c loại x&agrave; b&ocirc;ng hoặc nước tẩy l&ecirc;n h&igrave;nh in. Mẹ n&ecirc;n hạn chế d&ugrave;ng c&aacute;c loại nước xả mềm vải v&igrave; n&oacute; sẽ l&agrave;m sản phẩm bị gi&atilde;n rất nhanh v&agrave; khiến h&igrave;nh in bị mềm, dễ bong tr&oacute;c. Nế n muốn sản phẩm thơm hơn sau khi giặt, mẹ c&oacute; thể d&ugrave;ng c&aacute;c loại nước xả thơm.</p>\r\n<p style=\"margin: 0px 0px 10px;\">- Kh&ocirc;ng n&ecirc;n để sản phẩm ở những nơi ẩm ướt, với t&iacute;nh chất h&uacute;t ẩm, h&uacute;t nước tốt, sản phẩm dễ bị ẩm mốc, thậm ch&iacute; để lại những vết ố tr&ecirc;n vải. Tr&aacute;nh phơi sản phẩm trực tiếp dưới nắng v&igrave; sẽ l&agrave;m m&agrave;u v&agrave; h&igrave;nh in phai m&agrave;u.</p>\r\n<p style=\"margin: 0px 0px 10px;\">- Khi ủi sản phẩm tuyệt đối kh&ocirc;ng được ủi l&ecirc;n bề mặt in h&igrave;nh tr&ecirc;n sản phẩm, n&ecirc;n ủi ở nhiệt độ thấp v&agrave; lộn tr&aacute;i sản phẩm ra trước khi ủi để tr&aacute;nh l&agrave;m chết m&agrave;u sắc của vải v&agrave; l&agrave;m bong tr&oacute;c hay biến dạng những h&igrave;nh ảnh được in tr&ecirc;n sản phẩm.</p>\r\n</div>', 175000, 16, 1, 0, '2020-09-28', '2020-09-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role` int(4) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `gender` int(2) NOT NULL,
  `created_at` date NOT NULL,
  `update_at` date NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `password`, `role`, `address`, `phone`, `gender`, `created_at`, `update_at`, `image`) VALUES
(33, 'đăng ha', 'admin', 'DSAFASD@gmail.com', '1234', 1, 'Hà Nội', '0976594507', 0, '2020-09-28', '2020-09-29', '5-mau-dong-ho-deo-tay-nam-nu-dep-gia-re-nhat-tai-tphcm.jpg'),
(34, 'Đặng Văn Xưởng', 'xuong0398', 'xuong0398@gmail.com', '0398', 0, 'Hà Nội', '0976594507', 0, '2020-09-29', '2020-09-29', 'hot-girl-bi-doi-qua-khoe-anh-goi-cam-3cfa0f.jpg'),
(38, 'Đặng đình phương', 'phuong0398', 'abc@gmail.com', '0398', 1, 'hn', '0976594507', 0, '2020-09-29', '2020-09-29', '<img src=\'../../content/images/users/hot-girl-bi-doi-qua-khoe-anh-goi-cam-3cfa0f.jpg\' alt=\'User image\' class=\'dropdown-toggle\' data-toggle=\'user-menu\'>');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `lk_products_comments` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cate_id` (`cate_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `lk_products_comments` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `cate_id` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
