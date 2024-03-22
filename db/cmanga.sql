-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th3 22, 2024 lúc 03:19 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cmanga`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bookstory`
--

CREATE TABLE `bookstory` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `featured` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `statusproblem` enum('Đang Cập Nhật','Đã Hoàn Thành') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Đang Cập Nhật',
  `follow` int NOT NULL DEFAULT '0',
  `view` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bookstory`
--

INSERT INTO `bookstory` (`id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `category_id`, `statusproblem`, `follow`, `view`) VALUES
(11, 'Thảm Họa Tử Linh Sư', NULL, NULL, '<p>Truyện tranh Thảm Họa Tử Linh Sư được cập nhật nhanh v&agrave; đầy đủ nhất tại NetTruyen. Bạn đọc đừng qu&ecirc;n để lại b&igrave;nh luận v&agrave; chia sẻ, ủng hộ NetTruyen ra c&aacute;c chương mới nhất của truyện Thảm Họa Tử Linh Sư.</p>', 'bookstory/Thảm Họa Tử Linh Sư.png', 'tham-hoa-tu-linh-su', NULL, NULL, 'ACTIVE', 1, '2024-01-15 04:22:04', '2024-03-11 15:16:37', NULL, 'Đang Cập Nhật', 0, 3),
(29, 'Hoàng Tử Chuyển Sinh Trở Thành Người Mạnh Nhất Thế Giới Nhờ Vào Sự Hiểu Biết Về Bug', NULL, NULL, '<p>Destiny Slayer, một tựa game kh&aacute; nổi ở Nhật Bản đ&atilde; được ch&agrave;ng game thủ Tamotsu ph&aacute; đảo. Một h&ocirc;m l&uacute;c đang ngủ, do th&oacute;i ngủ xấu của anh ch&agrave;ng, cậu đ&atilde; ng&atilde; dập đầu v&agrave; chuyển sinh v&agrave;o vai phản diện yếu nhất trong game. Với deathflag si&ecirc;u to khổng lồ, h&agrave;nh tr&igrave;nh của ch&agrave;ng trai trong thế giới mới bắt đầu.</p>', 'bookstory/Hoàng Tử Chuyển Sinh Trở Thành Người Mạnh Nhất Thế Giới Nhờ Vào Sự Hiểu Biết Về Bug.png', 'hoang-tu-chuyen-sinh-tro-thanh-nguoi-manh-nhat-the-gioi-nho-vao-su-hieu-biet-ve-bug', NULL, NULL, 'ACTIVE', 1, '2024-01-17 03:52:42', '2024-01-30 04:04:31', NULL, 'Đang Cập Nhật', 1, 0),
(30, 'Ngày Nào Đó Trở Thành Công Chúa Tế Phẩm', NULL, NULL, '<p>c&ocirc;ng ch&uacute;a bebejana vừa ra đời th&igrave; bị vứt bỏ đi, đ&aacute;nh mất th&acirc;n phận c&ocirc;ng ch&uacute;a trở th&agrave;nh trẻ mồ c&ocirc;i lang thang, đột nhi&ecirc;n c&oacute; một ng&agrave;y phụ ho&agrave;ng t&igrave;m kiếm c&ocirc; ấy trở về, kh&ocirc;i phục th&acirc;n phận c&ocirc;ng ch&uacute;a của c&ocirc; ấy, nhưng điều c&ocirc; ấy mong đợi kh&ocirc;ng phải l&agrave; sự đo&agrave;n tụ của người th&acirc;n v&agrave; ăn ngon mặc đẹp, m&agrave; l&agrave; trở th&agrave;nh vật tế phẩm của c&aacute;c vị thần. xuy&ecirc;n kh&ocirc;ng v&agrave;o bebejana để muốn thay đổi số phận, nhưng lại ph&aacute;t hiện c&aacute;ch tốt nhất ch&iacute;nh l&agrave; trở th&agrave;nh tế phẩm, bởi v&igrave; trở th&agrave;nh tế phẩm mới c&oacute; thể khiến cho c&ocirc; ấy sống tiếp, &acirc;m mưu v&agrave; nh&acirc;n quả tiềm ẩn trong đ&oacute;, dần dần hiện ra trước mắt c&ocirc;&hellip;</p>', 'bookstory/Ngày Nào Đó Trở Thành Công Chúa Tế Phẩm.png', 'ngay-nao-do-tro-thanh-cong-chua-te-pham', NULL, NULL, 'ACTIVE', 0, '2024-01-17 04:04:48', '2024-01-24 03:57:57', NULL, 'Đang Cập Nhật', 0, 0),
(31, 'Độc Thoại Của Người Dược Sĩ', NULL, NULL, '<p>Ở trong triều đ&igrave;nh, một c&ocirc; g&aacute;i trẻ bị trở th&agrave;nh n&ocirc; t&igrave;, Maomao. C&acirc;u chuyện mở đầu khi Maomao (b&aacute;c sĩ từ phố đ&egrave;n đỏ) nghe về chuyện con của ho&agrave;ng đế bị chết non. Bản t&iacute;nh hiếu k&igrave; v&agrave; kh&aacute;t vọng tri thức đ&atilde; l&agrave;m c&ocirc; phải ra tay. Vậy th&igrave; c&ocirc; đ&atilde; t&igrave;m ra được g&igrave;? Chuyện g&igrave; đang xảy ra trong triều đ&igrave;nh?</p>', 'bookstory/Độc Thoại Của Người Dược Sĩ.png', 'doc-thoai-cua-nguoi-duoc-s', NULL, NULL, 'ACTIVE', 1, '2024-01-17 04:07:28', '2024-01-26 02:43:32', NULL, 'Đang Cập Nhật', 1, 0),
(32, 'Tình Yêu Của Ik Seob', NULL, NULL, '<p>Vị tr&iacute; số 1 về tỷ lệ th&agrave;nh t&iacute;ch kinh doanh trong 10 năm li&ecirc;n tiếp! Nh&acirc;n vi&ecirc;n trẻ v&agrave; c&oacute; lộ tr&igrave;nh thăng tiến nhanh nhất! Kang Min Kyung, động lực để t&ocirc;i gia nhập c&ocirc;ng ty, người đ&atilde; cho trải nhiệm cảm gi&aacute;c đứng thứ 2 trong khi t&ocirc;i l&uacute;c n&agrave;o cũng l&agrave; nhất. C&ocirc; ấy đ&atilde; ch&agrave; đạp l&ecirc;n l&ograve;ng ki&ecirc;u h&atilde;nh của t&ocirc;i v&agrave; trở th&agrave;nh thư k&yacute; của gi&aacute;m đốc điều h&agrave;nh Tae Ik Seob. C&ocirc; định xử l&yacute; cả t&ocirc;i với năng lực xử l&yacute; c&ocirc;ng việc xuất sắc đ&oacute; sao? Ngừng l&agrave;m việc ch&uacute;t đi, nh&igrave;n thẳng v&agrave;o t&ocirc;i đ&acirc;y n&agrave;y, c&ocirc; Kang Min Kyung! Chuyện t&igrave;nh c&ocirc;ng sở n&aacute;o loạn giữa Tae Ik Seob, người chẳng th&iacute;ch l&agrave;m g&igrave;, v&agrave; Kang Min Kyung, người phải l&agrave;m việc bằng mọi gi&aacute;!</p>', 'bookstory/Tình Yêu Của Ik Seob.png', 'tinh-yeu-cua-ik-seob', NULL, NULL, 'ACTIVE', 0, '2024-01-17 04:08:51', '2024-01-24 03:58:47', NULL, 'Đang Cập Nhật', 0, 0),
(33, 'Thuật Sĩ Đến Từ Tương Lai', NULL, NULL, '<p>Truyện tranh Thuật Sĩ Đến Từ Tương Lai được cập nhật nhanh v&agrave; đầy đủ nhất tại NetTruyen. Bạn đọc đừng qu&ecirc;n để lại b&igrave;nh luận v&agrave; chia sẻ, ủng hộ NetTruyen ra c&aacute;c chương mới nhất của truyện Thuật Sĩ Đến Từ Tương Lai.</p>', 'bookstory/Thuật Sĩ Đến Từ Tương Lai.png', 'thuat-s-den-tu-tuong-lai', NULL, NULL, 'ACTIVE', 1, '2024-01-17 04:10:50', '2024-01-26 04:02:28', NULL, 'Đang Cập Nhật', 1, 0),
(34, 'Tôi Trở Nên Phi Thường Ngay Cả Ở Thế Giới Thật', NULL, NULL, '<p>Yuuya Tenjo đ&atilde; lu&ocirc;n bị bắt nạt ngay từ nhỏ v&agrave; bị ch&iacute;nh gia đ&igrave;nh m&igrave;nh ruồng bỏ. Ng&ocirc;i nh&agrave; duy nhất của cậu l&agrave; ng&ocirc;i nh&agrave; được thừa hưởng từ &ocirc;ng nội. Trong một lần t&igrave;nh cờ, cậu đ&atilde; v&ocirc; t&igrave;nh kh&aacute;m ph&aacute; được một căn ph&ograve;ng b&iacute; mật. Đ&acirc;y l&agrave; nơi m&agrave; &ocirc;ng nội cậu lưu giữ c&aacute;c m&oacute;n đồ vật m&agrave; &ocirc;ng thu thập được từ khắp thế giới. Tại đ&acirc;y, một c&aacute;nh cửa b&iacute; ẩn được đặt giữa căn ph&ograve;ng. Đằng sau c&aacute;nh cửa đ&oacute; ch&iacute;nh l&agrave;...</p>', 'bookstory/Tôi Trở Nên Phi Thường Ngay Cả Ở Thế Giới Thật.png', 'toi-tro-nen-phi-thuong-ngay-ca-o-the-gioi-that', NULL, NULL, 'ACTIVE', 1, '2024-01-17 06:43:44', '2024-01-29 06:50:33', NULL, 'Đang Cập Nhật', 2, 0),
(35, 'Hậu Duệ Phái Mao Sơn', NULL, NULL, '<p>V&igrave; ngẫu nhi&ecirc;n đạt được cuốn m&agrave; Trương Quốc Trung mở được c&aacute;nh cửa bước v&agrave;o ph&eacute;p thuật của ph&aacute;i Mao Sơn. Từ trừ quỷ trấn t&agrave; cho đến t&igrave;m kiếm v&agrave; kh&aacute;m ph&aacute; những điều k&igrave; b&iacute;, bước l&ecirc;n nhiều khu vực, lợi dụng thuật ph&aacute;p của Mao Sơn ph&aacute; giải b&iacute; ẩn đ&atilde; ngủ s&acirc;u ng&agrave;n năm.</p>', 'bookstory/Hậu Duệ Phái Mao Sơn.png', 'hau-due-phai-mao-son', NULL, NULL, 'ACTIVE', 0, '2024-01-19 10:01:30', '2024-01-29 06:51:50', NULL, 'Đang Cập Nhật', 1, 0),
(36, 'Quân Cờ Thứ 31 Lật Ngược Ván Cờ', NULL, NULL, '<p>Truyện tranh Qu&acirc;n Cờ Thứ 31 Lật Ngược V&aacute;n Cờ được cập nhật nhanh v&agrave; đầy đủ nhất tại NetTruyen. Bạn đọc đừng qu&ecirc;n để lại b&igrave;nh luận v&agrave; chia sẻ, ủng hộ NetTruyen ra c&aacute;c chương mới nhất của truyện Qu&acirc;n Cờ Thứ 31 Lật Ngược V&aacute;n Cờ.</p>', 'bookstory/Quân Cờ Thứ 31 Lật Ngược Ván Cờ.png', 'quan-co-thu-31-lat-nguoc-van-co', NULL, NULL, 'ACTIVE', 1, '2024-01-19 10:02:29', '2024-01-29 06:50:38', NULL, 'Đang Cập Nhật', 2, 0),
(37, 'Trở Thành Vợ Thái Tử Quái Vật', NULL, NULL, '<p>C&ocirc; tr&ugrave;ng sinh v&agrave;o th&acirc;n thể của &ldquo;Ancia&rdquo;, th&ecirc; tử của một th&aacute;i tử qu&aacute;i dị, &ldquo;Blake&rdquo; trong một bộ tiểu thuyết l&atilde;ng mạn 19+ Trong truyện gốc, Ancia đ&atilde; tử tự v&agrave;o ng&agrave;y đầu t&acirc;n h&ocirc;n, để lại cho Blake một &aacute;m ảnh lớn. Nhưng lần n&agrave;y, Ancia kh&ocirc;ng hề c&oacute; &yacute; định l&agrave;m vậy nữa. Blake l&agrave; nam thứ trong truyện gốc, người được khắc họa như một con qu&aacute;i vật tr&uacute; ngụ dưới chiếc vỏ bọc ho&agrave;n hảo. Vậy nhưng, giờ đ&acirc;y ng&agrave;y ấy lại cư xử như một con thỏ ngay thơ vậy. Người duy nhất c&oacute; thể h&oacute;a giải được lời nguyền của th&aacute;i tử l&agrave; nữ ch&iacute;nh Diana. C&ocirc; chỉ c&oacute; một nhiệm vụ duy nhất đ&oacute; ch&iacute;nh l&agrave; bảo vệ th&aacute;i tử b&eacute; nhỏ đ&aacute;ng y&ecirc;u n&agrave;y khỏi mọi hiểm nguy v&agrave; l&ugrave;i bước khi thời khắc định mệnh tới. Nhưng&hellip; &ldquo;Ancia, đừng bỏ ta!&rdquo; Con thỏ con n&agrave;y cứ m&atilde;i lẽo đẽo theo c&ocirc; th&ocirc;i.</p>', 'bookstory/Trở Thành Vợ Thái Tử Quái Vật.png', 'tro-thanh-vo-thai-tu-quai-vat', NULL, NULL, 'ACTIVE', 0, '2024-01-19 10:03:39', '2024-01-25 09:47:14', NULL, 'Đang Cập Nhật', 0, 0),
(38, 'Võ Luyện Đỉnh Phong', NULL, NULL, NULL, 'bookstory/Võ Luyện Đỉnh Phong.png', 'vo-luyen-dinh-phong', NULL, NULL, 'ACTIVE', 1, '2024-01-19 10:04:33', '2024-03-22 01:59:16', NULL, 'Đang Cập Nhật', 5, 116),
(39, 'Anh Hùng  Ta Không Làm Lâu Rồi', NULL, NULL, '<p>Zero l&agrave; l&agrave; vị Si&ecirc;u Anh h&ugrave;ng đầu ti&ecirc;n của to&agrave;n nh&acirc;n loại. Sau hắn, lần lượt xuất hiện nhiều si&ecirc;u anh h&ugrave;ng kh&aacute;c, nhưng hắn chỉ l&agrave;m si&ecirc;u anh h&ugrave;ng 5 năm rồi đột nhi&ecirc;n biến mất, kh&ocirc;ng ai biết hắn đi đ&acirc;u</p>', 'bookstory/Anh Hùng  Ta Không Làm Lâu Rồi.png', 'anh-hung-ta-khong-lam-lau-roi', NULL, NULL, 'ACTIVE', 0, '2024-01-24 04:54:47', '2024-01-26 07:20:18', NULL, 'Đang Cập Nhật', 3, 0),
(40, 'Chiến Lược Tình Yêu Trong Sáng', NULL, NULL, '<p>Truyện tranh Chiến Lược: T&igrave;nh Y&ecirc;u Trong S&aacute;ng được cập nhật nhanh v&agrave; đầy đủ nhất tại NetTruyen. Bạn đọc đừng qu&ecirc;n để lại b&igrave;nh luận v&agrave; chia sẻ, ủng hộ NetTruyen ra c&aacute;c chương mới nhất của truyện Chiến Lược: T&igrave;nh Y&ecirc;u Trong S&aacute;ng.</p>', 'bookstory/Chiến Lược Tình Yêu Trong Sáng.png', 'chien-luoc-tinh-yeu-trong-sang', NULL, NULL, 'ACTIVE', 0, '2024-01-25 08:50:58', '2024-01-26 03:37:13', NULL, 'Đang Cập Nhật', 1, 0),
(41, 'Cô Dâu Pháp Sư', NULL, NULL, '<p>Tồn tại c&ugrave;ng với ch&uacute;ng ta l&agrave; thế giới của ma thuật, nơi m&agrave; ph&ugrave; thuỷ, thuật sĩ, người s&oacute;i, ma quỷ... sinh sống. Nhưng c&oacute; những con người c&oacute; khả năng nh&igrave;n thấy những sinh vật huyền b&iacute; đ&oacute;. Chitose l&agrave; một c&ocirc; b&eacute; như vậy. 15 tuổi, Chitose kh&ocirc;ng c&ograve;n nơi để nương tựa. V&agrave; rồi ở bước đường c&ugrave;ng, khi m&agrave; c&ocirc; b&eacute; phải b&aacute;n m&igrave;nh l&agrave;m n&ocirc; lệ, một ph&ugrave; thuỷ với bộ dạng ch&iacute;n phần quỷ, một phần người xuất hiện đ&oacute;n c&ocirc; b&eacute; về, chăm s&oacute;c Chitose, dạy dỗ Chitose, cho c&ocirc; b&eacute; một gia đ&igrave;nh. Với th&acirc;n phận \\\"học tr&ograve; của Ph&ugrave; Thuỷ\\\", chờ đợi Chitose ph&iacute;a trước l&agrave; cả những điều kỳ th&uacute;, k&egrave;m theo đ&oacute; l&agrave; v&ocirc; v&agrave;n trắc trở, c&aacute;m dỗ...</p>', 'bookstory/Cô Dâu Pháp Sư.png', 'co-dau-phap-su', NULL, NULL, 'ACTIVE', 0, '2024-01-25 08:51:55', '2024-01-29 06:50:23', NULL, 'Đang Cập Nhật', 1, 0),
(42, 'Ta Không Phải Là Hồi Quy Giả', NULL, NULL, '<p>[Bởi t&aacute;c giả đ&atilde; mang đến cho bạn \\\"Sự Trở Lại Của Người Chơi Sau 10000 Năm\\\"] Một ng&agrave;y nọ, trước mắt t&ocirc;i xuất hiện một Nữ thần t&oacute;c bạc. [Tinh t&uacute; th&aacute;ch thức số phận. Phản mệnh chi tinh. Vị cứu tinh duy nhất của một thế giới đ&atilde; được định sẵn để đi đến hồi kết&mdash;] Người phụ nữ n&agrave;y đang n&oacute;i c&aacute;i thứ nhảm nh&iacute; g&igrave; vậy? [Ngươi chắc chắn l&agrave; một Hồi Quy Giả.] &ldquo;...C&aacute;i g&igrave;?&rdquo; Kh&ocirc;ng, t&ocirc;i kh&ocirc;ng phải</p>', 'bookstory/Ta Không Phải Là Hồi Quy Giả.png', 'ta-khong-phai-la-hoi-quy-gia', NULL, NULL, 'ACTIVE', 0, '2024-01-26 03:36:08', '2024-01-29 06:50:18', NULL, 'Đang Cập Nhật', 1, 0),
(43, 'Ta Không Muốn Làm Đệ Nhất', NULL, NULL, '<p>Trải qua nhiều lần lu&acirc;n hồi, Hứa Tiểu Văn ph&aacute;t hiện bản th&acirc;n m&igrave;nh sở hữu buff top 1. Cho d&ugrave; l&agrave;m bất cứ chuyện g&igrave;, cũng lấy được hạng nhất, h&ocirc;m đ&oacute; chết bất đắc kỳ tử, lần n&agrave;y hứa Tiểu Văn đ&atilde; đặt ra nguyện vọng ..nhất định phải l&agrave; một t&ecirc;n phế vật, v&agrave; nỗ lực sống tới 80 tuổi. V&igrave; vậy &ocirc;ng trời lại đ&ugrave;a giỡn với hắn, hắn lại l&agrave; một người c&oacute; si&ecirc;u năng lực to&agrave;n năng.</p>', 'bookstory/Ta Không Muốn Làm Đệ Nhất.png', 'ta-khong-muon-lam-de-nhat', NULL, NULL, 'ACTIVE', 0, '2024-02-01 11:10:41', '2024-02-01 11:10:41', NULL, 'Đang Cập Nhật', 0, 0),
(44, 'Đây Là Luật', NULL, NULL, '<p>Ảo tưởng về người thực thi c&ocirc;ng l&yacute; của luật sư thi&ecirc;n t&agrave;i Noh HyungJin! Anh ấy l&agrave; thủ khoa của trường Đại học, đạt điểm tuyệt đối trong k&igrave; thi Bar v&agrave; thậm ch&iacute; c&oacute; tỷ lệ thắng kiện l&ecirc;n tới 95%. Noh HyungJin l&agrave; một luật sư th&agrave;nh c&ocirc;ng! Trong cuộc chiến chống lại c&aacute;i &aacute;c lẫn quyền lực để đưa H&agrave;n Quốc trở th&agrave;nh một đất nước c&ocirc;ng bằng, anh đ&atilde; bị s&aacute;t hại một c&aacute;ch t&agrave;n nhẫn bởi c&aacute;c nh&acirc;n vi&ecirc;n Cục T&igrave;nh b&aacute;o Quốc gia. \\\"Anh ấy kh&ocirc;ng n&ecirc;n ra đi như vậy ...\\\" Noh HyungJin l&agrave; người được Ho&agrave;ng đế YeomRa cử đến để sửa chữa những sai lầm thối n&aacute;t tr&ecirc;n Tr&aacute;i đất! Tuy nhi&ecirc;n, sau khi kết th&uacute;c trong địa ngục m&agrave; kh&ocirc;ng thể đạt được bất cứ điều g&igrave;, Ho&agrave;ng đế YeomRa đ&atilde; trả Noh HyungJin lại... \\\"&Iacute;t nhất ta n&ecirc;n cho hắn sức mạnh để hắn c&oacute; thể tự bảo vệ m&igrave;nh.\\\" \\\'Quyền năng\\\' m&agrave; Ho&agrave;ng đế YeomRa trao cho anh ấy l&agrave; g&igrave;? Liệu Noh HyungJin c&oacute; thể thay đổi tương lai của ch&iacute;nh m&igrave;nh cũng như tương lai của đất nước H&agrave;n Quốc?!</p>', 'bookstory/Đây Là Luật.png', 'day-la-luat', NULL, NULL, 'ACTIVE', 0, '2024-02-01 11:13:21', '2024-02-01 11:13:21', NULL, 'Đang Cập Nhật', 0, 0),
(45, 'Tôi Chỉ Là Một Người Dọn Dẹp', NULL, NULL, '<p>T&ocirc;i l&agrave; Banjo Taiga, v&agrave; h&ocirc;m nay, t&ocirc;i v&agrave;o ng&ocirc;i trường n&agrave;y dưới danh nghĩa người dọn dẹp. Banjo Taiga l&agrave; một đứa trẻ sống trong thời kỳ Yakuza. Theo những g&igrave; cậu nhớ được, họ l&agrave; s&aacute;t thủ chuy&ecirc;n nghiệp được huấn luyện tại thế giới ngầm. Tuy nhi&ecirc;n, sự hiện diện của yakuza bao tr&ugrave;m cả thế giới ngầm chỉ l&agrave; chuyện trong qu&aacute; khứ. Những g&igrave; c&ograve;n s&oacute;t lại ở thực tại chỉ l&agrave; Gokudo, v&agrave; Yamada-gumi, nơi Taiga thuộc về, nhưng nơi đ&oacute; cũng đ&atilde; bị giải t&aacute;n v&agrave; được th&agrave;nh lập lại, hoạt động dưới tư c&aacute;ch một c&ocirc;ng ty hợp ph&aacute;p. C&ocirc;ng việc mới của cậu l&agrave; người dọn dẹp. Một s&aacute;t thủ thi&ecirc;n t&agrave;i m&agrave; giờ lại trở th&agrave;nh lao c&ocirc;ng. Nơi l&agrave;m việc th&igrave; chuyển từ thế giới ngầm sang trường học. Giờ đ&acirc;y, l&agrave; một người l&agrave;m c&ocirc;ng b&igrave;nh thường trong x&atilde; hội, kh&ocirc;ng c&ograve;n l&agrave; kẻ s&aacute;t nh&acirc;n nữa, mọi h&agrave;nh vi bạo lực v&agrave; đ&aacute;nh nhau đều bị cấm. Tuy thế, những g&igrave; chờ đợi Taiga trong trường cấp 3 lại l&agrave; b&egrave; lũ c&ocirc;n đồ với những vụ bắt nạt tr&agrave;n lan, bạo lực, h&uacute;t thuốc, uống rượu, v&agrave; nhiều vấn đề kh&aacute;c nữa. Một h&igrave;nh huống m&agrave; ngay cả gi&aacute;o vi&ecirc;n lẫn người lớn kh</p>', 'bookstory/Tôi Chỉ Là Một Người Dọn Dẹp.png', 'toi-chi-la-mot-nguoi-don-dep', NULL, NULL, 'ACTIVE', 0, '2024-02-01 11:14:15', '2024-02-01 11:16:41', NULL, 'Đang Cập Nhật', 0, 0),
(46, 'Đại Phụng Đả Canh Nhân', NULL, NULL, '<p>Truyện tranh Đại Phụng Đả Canh Nh&acirc;n được cập nhật nhanh v&agrave; đầy đủ nhất tại NetTruyen. Bạn đọc đừng qu&ecirc;n để lại b&igrave;nh luận v&agrave; chia sẻ, ủng hộ NetTruyen ra c&aacute;c chương mới nhất của truyện Đại Phụng Đả Canh Nh&acirc;n.</p>', 'bookstory/Đại Phụng Đả Canh Nhân.png', 'dai-phung-da-canh-nhan', NULL, NULL, 'ACTIVE', 0, '2024-02-01 11:15:03', '2024-02-01 11:15:03', NULL, 'Đang Cập Nhật', 0, 0),
(47, 'Tôi Trở Thành Vợ Nam Chính', NULL, NULL, '<p>C&ocirc; xuy&ecirc;n v&agrave;o cơ thể của Fiona, nh&acirc;n vật phản diện cuối c&ugrave;ng phải chịu c&aacute;i chết bi thảm bởi nam ch&iacute;nh đ&atilde; giải cứu thế giới. C&ocirc; chết theo đ&uacute;ng nghĩa đen v&agrave; đau khổ cả thể x&aacute;c lẫn linh hồn. Từ năm mười ba tuổi, c&ocirc; đ&atilde; bị gia đ&igrave;nh đối xử tệ bạc v&igrave; l&agrave; con ngo&agrave;i gi&aacute; th&uacute;. S&aacute;u năm trước khi c&acirc;u chuyện bắt đầu, c&ocirc; bị đuổi ra chiến trường! May mắn thay, c&ocirc; xuy&ecirc;n v&agrave;o cơ thể của nh&acirc;n vật phản diện mạnh nhất trong truyện, cũng l&agrave; ma ph&aacute;p sư thi&ecirc;n t&agrave;i với sức mạnh khổng lồ. Nhưng, c&ocirc; cũng phải sống s&oacute;t tr&ecirc;n chiến trường đầy rẫy ma quỷ. B&ecirc;n cạnh đ&oacute;... Đ&uacute;ng l&uacute;c đ&oacute;, c&ocirc; lại gặp được nam ch&iacute;nh &ndash; người anh h&ugrave;ng thời thơ ấu của c&ocirc; &ndash; đang vật lộn giữa ranh giới sinh tử. ...Tại sao anh ấy ở đ&acirc;y? D&ugrave; sao th&igrave;, nếu nh&acirc;n vật ch&iacute;nh đ&atilde; chết, thế giới sẽ bị hủy diệt. V&igrave; vậy cho n&ecirc;n, c&ocirc; phải cứu anh trước đ&atilde;....</p>', 'bookstory/Tôi Trở Thành Vợ Nam Chính.png', 'toi-tro-thanh-vo-nam-chinh', NULL, NULL, 'ACTIVE', 0, '2024-02-01 11:16:05', '2024-02-01 11:16:05', NULL, 'Đang Cập Nhật', 0, 0),
(48, 'Bách Luyện Thành Thần', NULL, NULL, NULL, 'bookstory/Bách Luyện Thành Thần.png', 'bach-luyen-thanh-than', NULL, NULL, 'ACTIVE', 1, '2024-02-01 11:20:33', '2024-03-06 06:38:12', NULL, 'Đang Cập Nhật', 1, 14),
(49, 'Tôi Sẽ Ly Hôn Với Người Chồng Bạo Chúa Của Mình', NULL, NULL, NULL, 'bookstory/Tôi Sẽ Ly Hôn Với Người Chồng Bạo Chúa Của Mình.png', 'toi-se-ly-hon-voi-nguoi-chong-bao-chua-cua-minh', NULL, NULL, 'ACTIVE', 0, '2024-02-02 15:16:08', '2024-02-02 15:16:08', NULL, 'Đang Cập Nhật', 0, 0),
(50, 'Trường Học Thôi Miên', NULL, NULL, '<p>&ldquo;Bạn đang rất buồn ngủ&hellip;&rdquo; Chankyu Kim học c&aacute;ch th&ocirc;i mi&ecirc;n từ việc xem c&aacute;c video tr&ecirc;n YouTube để trở n&ecirc;n nổi tiếng trong số c&aacute;c nữ sinh ở trường của m&igrave;nh. Tuy nhi&ecirc;n, mọi thứ kh&ocirc;ng diễn ra theo đ&uacute;ng kế hoạch khi anh nhận thấy m&igrave;nh li&ecirc;n tiếp gặp thất bại. Sau đ&oacute;, anh gặp người đọc t&acirc;m tr&iacute; Euijoo Yeo, người c&oacute; khả năng phi thường giống như anh. C&acirc;u chuyện th&uacute; vị nhưng kh&ocirc;ng may của họ bắt đầu từ đ&oacute;&hellip;</p>', 'bookstory/Trường Học Thôi Miên.png', 'truong-hoc-thoi-mien', NULL, NULL, 'ACTIVE', 1, '2024-02-02 15:17:17', '2024-02-02 15:17:17', NULL, 'Đang Cập Nhật', 0, 0),
(51, 'Đại Tiểu Thư Có Thể Có Bụng Dạ Gì Xấu Chứ!', NULL, NULL, '<p>Bộ truyện n&agrave;y đang được ph&aacute;t h&agrave;nh tr&ecirc;n ứng dụng Beebook.Online.</p>', 'bookstory/Đại Tiểu Thư Có Thể Có Bụng Dạ Gì Xấu Chứ!.png', 'dai-tieu-thu-co-the-co-bung-da-gi-xau-chu', NULL, NULL, 'ACTIVE', 0, '2024-02-02 15:18:14', '2024-02-02 15:18:14', NULL, 'Đang Cập Nhật', 0, 0),
(52, 'Trọng Sinh Thành Cậu Vàng Tại Dị Thế', NULL, NULL, NULL, 'bookstory/Trọng Sinh Thành Cậu Vàng Tại Dị Thế.png', 'trong-sinh-thanh-cau-vang-tai-di-the', NULL, NULL, 'ACTIVE', 1, '2024-02-02 15:20:18', '2024-02-02 15:20:18', NULL, 'Đang Cập Nhật', 0, 0),
(53, 'Tiên Vương Trùng Sinh', NULL, NULL, '<p>B&aacute;ch L&yacute; V&acirc;n Ti&ecirc;u - một đời linh t&ocirc;ng ở Cửu Ti&ecirc;u đại lục, sau khi chết lại hồi sinh trở về 300 năm trước, quay lại thời thiếu ni&ecirc;n đ&ocirc; thị, thay đổi cuộc đời, leo l&ecirc;n đỉnh thế giới một lần nữa, tr&ecirc;n trời dưới đất, chỉ c&oacute; ta v&ocirc; địch! Xem th&ecirc;m</p>', 'bookstory/Tiên Vương Trùng Sinh.png', 'tien-vuong-trung-sinh', NULL, NULL, 'ACTIVE', 1, '2024-02-02 15:21:38', '2024-03-10 04:04:16', NULL, 'Đang Cập Nhật', 0, 4),
(54, 'Thả Vu Nữ Đó Ra', NULL, NULL, NULL, 'bookstory/Thả Vu Nữ Đó Ra.png', 'tha-vu-nu-do-ra', NULL, NULL, 'ACTIVE', 1, '2024-02-02 15:27:26', '2024-03-12 10:31:20', NULL, 'Đang Cập Nhật', 0, 8),
(55, 'Ta Có Phòng Riêng Thời Tận Thế', NULL, NULL, '<p>Truyện Ta C&oacute; Ph&ograve;ng Ri&ecirc;ng Thời Tận Thế Tận thế sau chiến tranh hạt nh&acirc;n, nơi nơi đều l&agrave; đống đổ n&aacute;t hoang t&agrave;n,nếu ngươi may mắn c&ograve;n sống, vậy tiếptheo, ngươi kh&ocirc;ng thể đối mặt với nỗi sợh&atilde;i về đ&oacute;i kh&aacute;t v&agrave; bệnh tật, c&ograve;n c&oacute;người nhiễm ph&oacute;ng xa m&agrave; biến th&agrave;nh dị chủng kỳqu&aacute;i, nhưng đối với Giang Thần m&agrave; n&oacute;i,Nơi n&agrave;y lại l&agrave; thi&ecirc;n được, khắp nơi đều c&oacute; biệt thư cao cấp, si&ecirc;u xe, c&ograve;n c&oacute; mỹ nữ nữa</p>', 'bookstory/Ta Có Phòng Riêng Thời Tận Thế.png', 'ta-co-phong-rieng-thoi-tan-the', NULL, NULL, 'ACTIVE', 0, '2024-02-02 15:29:08', '2024-03-02 01:52:40', NULL, 'Đang Cập Nhật', 1, 0),
(56, 'Bạn Gái Zombie Của Tôi', NULL, NULL, NULL, 'bookstory/Bạn Gái Zombie Của Tôi.png', 'ban-gai-zombie-cua-toi', NULL, NULL, 'ACTIVE', 0, '2024-03-02 03:35:59', '2024-03-14 04:00:55', NULL, 'Đang Cập Nhật', 0, 2),
(57, 'Bạn Học Của Tôi Là Lính Đánh Thuê', NULL, NULL, '<p>Yu Ijin - người duy nhất sống s&oacute;t sau một vụ tai nạn m&aacute;y bay thảm khốc khi anh c&ograve;n nhỏ. Sau qu&atilde;ng thời gian 10 năm trở th&agrave;nh l&iacute;nh đ&aacute;nh thu&ecirc; để ho&agrave;n th&agrave;nh giao k&egrave;o với người đ&atilde; cứu m&igrave;nh, cậu đ&atilde; trở về với gia đ&igrave;nh ở qu&ecirc; hương. Một cuộc sống mới v&agrave; cả s&oacute;ng gi&oacute; mới bắt đầu....</p>', 'bookstory/Bạn Học Của Tôi Là Lính Đánh Thuê.png', 'ban-hoc-cua-toi-la-linh-danh-thue', NULL, NULL, 'ACTIVE', 0, '2024-03-02 03:36:59', '2024-03-02 03:36:59', NULL, 'Đang Cập Nhật', 0, 0),
(58, 'Cường Giả Đến Từ Trại Tâm Thần', NULL, NULL, NULL, 'bookstory/Cường Giả Đến Từ Trại Tâm Thần.png', 'cuong-gia-den-tu-trai-tam-than', NULL, NULL, 'ACTIVE', 0, '2024-03-02 03:38:05', '2024-03-02 03:38:05', NULL, 'Đang Cập Nhật', 0, 0),
(59, 'Đại Vương Tha Mạng', NULL, NULL, '<p>Sau khi linh kh&iacute; hồi phục, mọi người chắt chiu từng tơ linh kh&iacute;, chỉ c&oacute; Lữ Thụ, dựa v&agrave;o hệ thống điểm cảm x&uacute;c ti&ecirc;u cực , o&aacute;n hận người kh&aacute;c l&agrave; trở n&ecirc;n mạnh hơn! Cậu ta chỉ muốn bảo vệ em g&aacute;i, nhưng m&agrave; thời k&igrave; lũ lụt kh&oacute; c&oacute; thể tr&aacute;nh khỏi, chỉ đ&agrave;nh..... tiện o&aacute;n hận người kh&aacute;c , trở n&ecirc;n mạnh hơn! Vậy th&igrave; , chuẩn bị xong chưa, Lữ Thụ \\\"Đại Ma Vương \\\" tới đ&acirc;y</p>', 'bookstory/Đại Vương Tha Mạng.png', 'dai-vuong-tha-mang', NULL, NULL, 'ACTIVE', 0, '2024-03-02 03:40:57', '2024-03-02 03:40:57', NULL, 'Đang Cập Nhật', 0, 0),
(60, 'Đảo Hải Tặc', NULL, NULL, '<table id=\"myTable1\" class=\"table dataTable no-footer\" aria-describedby=\"myTable1_info\">\r\n<tbody>\r\n<tr class=\"odd\">\r\n<td>One Piece xoay quanh 1 nh&oacute;m cướp biển được gọi l&agrave; Băng Hải tặc Mũ Rơm - Straw Hat Pirates - được th&agrave;nh lập v&agrave; l&atilde;nh đạo bởi thuyền trưởng Monkey D. Luffy. Cậu b&eacute; Luffy c&oacute; ước mơ t&igrave;m thấy kho b&aacute;u vĩ đại nhất, One Piece, của Vua Hải Tặc đời trước Gold D. Roger v&agrave; trở th&agrave;nh Vua Hải Tặc đời kế tiếp. Ở Việt Nam hiện nay, truyện đang được Nh&agrave; xuất bản Thanh H&oacute;a xuất bản nhưng kh&ocirc;ng c&oacute; bản quyền, với t&ecirc;n gọi l&agrave; Đảo Hải tặc Cốt truyện: Monkey D. Luffy, 1 cậu b&eacute; rất th&iacute;ch hải tặc c&oacute; ước mơ t&igrave;m được kho b&aacute;u</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'bookstory/Đảo Hải Tặc.png', 'dao-hai-tac', NULL, NULL, 'ACTIVE', 0, '2024-03-02 03:42:08', '2024-03-02 03:42:08', NULL, 'Đang Cập Nhật', 0, 0),
(61, 'Đấu Phá Thương Khung', NULL, NULL, NULL, 'bookstory/Đấu Phá Thương Khung.png', 'dau-pha-thuong-khung', NULL, NULL, 'ACTIVE', 0, '2024-03-02 03:43:17', '2024-03-02 03:43:17', NULL, 'Đang Cập Nhật', 0, 0),
(62, 'Đệ Nhất Người Ở Rể', NULL, NULL, '<p>Cha mẹ mất t&iacute;ch Tần Lập đạt được l&atilde;o nh&acirc;n thần b&iacute; b&iacute; truyền c&ocirc;ng ph&aacute;p, 10 năm nhẫn nhục tu luyện, khi th&agrave;nh c&ocirc;ng nh&acirc;n sinh đỉnh phong.</p>', 'bookstory/Đệ Nhất Người Ở Rể.png', 'de-nhat-nguoi-o-re', NULL, NULL, 'ACTIVE', 0, '2024-03-02 03:44:08', '2024-03-02 03:44:08', NULL, 'Đang Cập Nhật', 0, 0),
(63, 'Hộ Hoa Cao Thủ Tại Vườn Trường', NULL, NULL, '<p>Tịnh lệ cường thế ngự tỷ, thanh thuần mỹ nữ l&atilde;o sư, nhao nhao &ocirc;m ấp y&ecirc;u thương... một học sinh phổ phổ th&ocirc;ng th&ocirc;ng, ngẫu nhi&ecirc;n nhặt được một c&aacute;i b&uacute;t m&aacute;y thần kỳ, từ đ&oacute; xảy ra nhiều chuyện li k&igrave;...</p>', 'bookstory/Hộ Hoa Cao Thủ Tại Vườn Trường.png', 'ho-hoa-cao-thu-tai-vuon-truong', NULL, NULL, 'ACTIVE', 0, '2024-03-02 03:45:07', '2024-03-02 03:45:07', NULL, 'Đang Cập Nhật', 0, 0),
(64, 'Kiếm Nghịch Thương Khung', NULL, NULL, NULL, 'bookstory/Kiếm Nghịch Thương Khung.png', 'kiem-nghich-thuong-khung', NULL, NULL, 'ACTIVE', 0, '2024-03-02 03:58:38', '2024-03-02 03:58:38', NULL, 'Đang Cập Nhật', 0, 0),
(65, 'Mạt Thế Vi Vương', NULL, NULL, NULL, 'bookstory/Mạt Thế Vi Vương.png', 'mat-the-vi-vuong', NULL, NULL, 'ACTIVE', 0, '2024-03-02 03:59:25', '2024-03-02 03:59:25', NULL, 'Đang Cập Nhật', 0, 0),
(66, 'Ngạo Thị Thiên Địa', NULL, NULL, NULL, 'bookstory/Ngạo Thị Thiên Địa.png', 'ngao-thi-thien-dia', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:00:12', '2024-03-02 04:00:12', NULL, 'Đang Cập Nhật', 0, 0),
(67, 'Nghịch Thiên Tà Thần', NULL, NULL, '<p>Nhất đại thi&ecirc;n t&agrave;i huyền mạch bị hao tổn trở th&agrave;nh phế vật, gia tộc vứt bỏ, thế nh&acirc;n chế giễu, thậm ch&iacute; đ&ecirc;m t&acirc;n h&ocirc;n bị người độc hại...... Huyền Thi&ecirc;n ch&iacute; bảo, lu&acirc;n hồi k&iacute;nh hiện, nghịch thi&ecirc;n cải mệnh, khởi động lại nh&acirc;n sinh, mang theo cừu hận c&ugrave;ng tiếc nuối, thề phải đăng đỉnh lực lượng đỉnh phong!</p>', 'bookstory/Nghịch Thiên Tà Thần.png', 'nghich-thien-ta-than', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:01:18', '2024-03-11 15:08:07', NULL, 'Đang Cập Nhật', 0, 5),
(68, 'Người Ở Rể Bị Ép Thành Phản Diện', NULL, NULL, '<p>Một t&aacute;c giả tiểu thuyết mạng trọng sinh v&agrave;o ch&iacute;nh t&aacute;c phẩm của m&igrave;nh, trở th&agrave;nh vai &aacute;c người ở rể L&iacute; Quả Vũ, c&ugrave;ng nam ch&iacute;nh đấu tr&iacute; đấu dũng, kết duy&ecirc;n với nhiều hồng nhan tri kỷ....</p>', 'bookstory/Người Ở Rể Bị Ép Thành Phản Diện.png', 'nguoi-o-re-bi-ep-thanh-phan-dien', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:02:19', '2024-03-02 04:02:19', NULL, 'Đang Cập Nhật', 0, 0),
(69, 'Phàm Nhân Tu Tiên', NULL, NULL, '<p>Một bộ truyện được chuyển thể từ tiểu thuyết tu ti&ecirc;n c&ugrave;ng t&ecirc;n rất đỉnh của t&aacute;c giả Vong Ngữ, với t&igrave;nh tiết logic, Vong Ngữ đ&atilde; cho ra đời một thế giới tu ti&ecirc;n giả đầy m&agrave;u sắc v&agrave; huyền ảo.</p>', 'bookstory/Phàm Nhân Tu Tiên.png', 'pham-nhan-tu-tien', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:03:11', '2024-03-02 04:03:11', NULL, 'Đang Cập Nhật', 0, 0),
(70, 'Spy X Family', NULL, NULL, NULL, 'bookstory/Spy X Family.png', 'spy-x-family', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:04:06', '2024-03-02 04:04:06', NULL, 'Đang Cập Nhật', 0, 0),
(71, 'Sự Trở Lại Của Pháp Sư Vĩ Đại Sau 4000 Năm', NULL, NULL, NULL, 'bookstory/Sự Trở Lại Của Pháp Sư Vĩ Đại Sau 4000 Năm.png', 'su-tro-lai-cua-phap-su-v-dai-sau-4000-nam', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:04:51', '2024-03-02 04:04:51', NULL, 'Đang Cập Nhật', 0, 0),
(72, 'Ta Bị Nhốt Tại Cùng Một Ngày Mười Vạn Năm', NULL, NULL, NULL, 'bookstory/Ta Bị Nhốt Tại Cùng Một Ngày Mười Vạn Năm.png', 'ta-bi-nhot-tai-cung-mot-ngay-muoi-van-nam', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:05:26', '2024-03-02 04:05:26', NULL, 'Đang Cập Nhật', 0, 0),
(73, 'Ta Luyện Khí Ba Ngàn Năm', NULL, NULL, NULL, 'bookstory/Ta Luyện Khí Ba Ngàn Năm.png', 'ta-luyen-khi-ba-ngan-nam', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:07:14', '2024-03-02 04:07:14', NULL, 'Đang Cập Nhật', 0, 0),
(74, 'Tiên Tôn Lạc Vô Cực', NULL, NULL, NULL, 'bookstory/Tiên Tôn Lạc Vô Cực.png', 'tien-ton-lac-vo-cuc', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:08:01', '2024-03-02 04:08:01', NULL, 'Đang Cập Nhật', 0, 0),
(75, 'Tiên Võ Đế Tôn', NULL, NULL, NULL, 'bookstory/Tiên Võ Đế Tôn.png', 'tien-vo-de-ton', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:08:40', '2024-03-02 04:08:40', NULL, 'Đang Cập Nhật', 0, 0),
(76, 'Toàn Chức Pháp Sư', NULL, NULL, NULL, 'bookstory/Toàn Chức Pháp Sư.png', 'toan-chuc-phap-su', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:09:55', '2024-03-02 04:09:55', NULL, 'Đang Cập Nhật', 0, 0),
(77, 'Tôi Chuyển Vàng Tại Mạt Thế', NULL, NULL, NULL, 'bookstory/Tôi Chuyển Vàng Tại Mạt Thế.png', 'toi-chuyen-vang-tai-mat-the', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:10:36', '2024-03-02 04:10:36', NULL, 'Đang Cập Nhật', 0, 0),
(78, 'Tối Cường Phản Sáo Lộ Hệ Thống', NULL, NULL, NULL, 'bookstory/Tối Cường Phản Sáo Lộ Hệ Thống.png', 'toi-cuong-phan-sao-lo-he-thong', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:11:16', '2024-03-02 04:11:16', NULL, 'Đang Cập Nhật', 0, 0),
(79, 'Tối Cường Thăng Cấp', NULL, NULL, '<p>Hệ thống trong tay, thi&ecirc;n hạ ta c&oacute;! Ta muốn c&oacute; người đẹp xinh nhất, quyền lực ta lớn nhất, th&acirc;n phận ta t&ocirc;n qu&yacute; nhất! Cửu thi&ecirc;n thập địa, b&aacute;t hoang lục hợp, ta phải l&agrave; ch&iacute; cao v&ocirc; thượng!</p>', 'bookstory/Tối Cường Thăng Cấp.png', 'toi-cuong-thang-cap', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:11:59', '2024-03-02 04:11:59', NULL, 'Đang Cập Nhật', 0, 0),
(80, 'Tôi Là Thiên Ma Truyền Nhân', NULL, NULL, '<p>Jin Suho mất mẹ khi c&ograve;n nhỏ v&agrave; quyết định trở th&agrave;nh thợ săn để t&igrave;m c&aacute;ch trả th&ugrave; cho b&agrave;. Anh ấy đ&atilde; d&agrave;nh cả cuộc đời để r&egrave;n luyện bản th&acirc;n v&agrave; cuối c&ugrave;ng trở th&agrave;nh một thợ săn hạng B. Rồi một ng&agrave;y, Suho t&igrave;nh cờ gặp một người đ&agrave;n &ocirc;ng b&iacute; ẩn ở Cổng Đỏ. Người đ&agrave;n &ocirc;ng b&iacute; ẩn ấy tự giới thiệu m&igrave;nh l&agrave; Thi&ecirc;n ma v&agrave; tiết lộ với Jin Suho rằng cậu ch&iacute;nh l&agrave; truyền nh&acirc;n của anh ta v&agrave; anh ta cần cơ thể của Suho để đối ph&oacute; với đối thủ của m&igrave;nh, Huyết Quỷ.</p>', 'bookstory/Tôi Là Thiên Ma Truyền Nhân.png', 'toi-la-thien-ma-truyen-nhan', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:14:56', '2024-03-22 03:04:14', NULL, 'Đang Cập Nhật', 0, 10),
(81, 'Trọng Sinh Đô Thị Tu Tiên', NULL, NULL, NULL, 'bookstory/Trọng Sinh Đô Thị Tu Tiên.png', 'trong-sinh-do-thi-tu-tien', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:16:14', '2024-03-06 06:32:08', NULL, 'Đang Cập Nhật', 0, 2),
(82, 'Trọng Sinh Sau Tám Vạn Năm', NULL, NULL, '<p>Một kẻ cực mạnh tr&ocirc;i dạt trong hư kh&ocirc;ng v&agrave; trở lại 8 vạn năm trước để trả th&ugrave;</p>', 'bookstory/Trọng Sinh Sau Tám Vạn Năm.png', 'trong-sinh-sau-tam-van-nam', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:17:59', '2024-03-02 04:17:59', NULL, 'Đang Cập Nhật', 0, 0),
(83, 'Tu Tiên Trở Về Tại Vườn Trường', NULL, NULL, '<p>Bị &aacute;m to&aacute;n chết v&agrave; trọng sinh về hiện đại đ&uacute;ng l&uacute;c...</p>', 'bookstory/Tu Tiên Trở Về Tại Vườn Trường.png', 'tu-tien-tro-ve-tai-vuon-truong', NULL, NULL, 'ACTIVE', 1, '2024-03-02 04:19:03', '2024-03-06 06:37:30', NULL, 'Đang Cập Nhật', 0, 6),
(84, 'Tuyệt Thế Võ Thần', NULL, NULL, '<p>Cửu Ti&ecirc;u đại lục, t&ocirc;ng m&ocirc;n san s&aacute;t, v&otilde; đạo l&agrave;m đầu, người yếu tầm thường, bị người bắt nạt, cường giả giận dữ, m&aacute;u chảy th&agrave;nh s&ocirc;ng.V&otilde; đạo ho&agrave;ng giả, c&agrave;ng c&oacute; thể quan s&aacute;t thi&ecirc;n địa, ngạo cười non s&ocirc;ng, động th&igrave; lại ng&agrave;y kinh thạch ph&aacute;, phơi th&acirc;y trăm vạn.Một đời cường nh&acirc;n L&acirc;m Phong, nghịch thi&ecirc;n xuất thế, đến kinh thế truyền thừa, tu v&otilde; đạo, đạp Cửu Ti&ecirc;u, ph&aacute; thi&ecirc;n địa, ngạo thương khung!</p>', 'bookstory/Tuyệt Thế Võ Thần.png', 'tuyet-the-vo-than', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:19:51', '2024-03-02 04:19:51', NULL, 'Đang Cập Nhật', 0, 0),
(85, 'Võ Đạo Độc Tôn', NULL, NULL, NULL, 'bookstory/Võ Đạo Độc Tôn.png', 'vo-dao-doc-ton', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:20:53', '2024-03-02 04:20:53', NULL, 'Đang Cập Nhật', 0, 0),
(86, 'Võ Nghịch', NULL, NULL, NULL, 'bookstory/Võ Nghịch.png', 'vo-nghich', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:21:59', '2024-03-12 08:35:21', NULL, 'Đang Cập Nhật', 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(2, NULL, 1, 'Category 2', 'category-2', '2023-11-16 00:53:20', '2023-11-16 00:53:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `featured` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `title`, `seo_title`, `excerpt`, `body`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(7, '16+', NULL, NULL, '<p>Truyện hoặc nội dung chỉ d&agrave;nh cho độc giả tr&ecirc;n 16 tuổi, thường c&oacute; nội dung chứa c&aacute;c yếu tố trưởng th&agrave;nh hoặc hạn chế độ tuổi đọc.</p>', '16', NULL, NULL, 'ACTIVE', 0, '2024-01-09 18:32:00', '2024-01-17 15:23:02'),
(8, 'Anime', NULL, NULL, '<p>Đ&acirc;y l&agrave; loại h&igrave;nh giải tr&iacute; thị gi&aacute;c đa phương tiện xuất ph&aacute;t từ Nhật Bản, thường l&agrave; c&aacute;c bộ phim hoạt h&igrave;nh với đề t&agrave;i v&agrave; phong c&aacute;ch đặc trưng.</p>', 'anime', NULL, NULL, 'ACTIVE', 0, '2024-01-09 18:36:47', '2024-01-15 07:00:38'),
(9, 'Cổ Đại', NULL, NULL, '<p>Truyện c&oacute; bối cảnh ở qu&aacute; khứ, thường l&agrave; trong thời kỳ lịch sử cổ đại.</p>', 'co-dai', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:11:15', '2024-01-17 15:23:53'),
(10, 'Comic', NULL, NULL, '<p>T&aacute;c phẩm văn h&oacute;a h&igrave;nh ảnh, c&oacute; thể l&agrave; truyện tranh hoặc truyện tranh.</p>', 'comic', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:11:44', '2024-01-17 15:24:00'),
(11, 'Cooking', NULL, NULL, '<p>Truyện c&oacute; nội dung xoay quanh ẩm thực v&agrave; nấu ăn.</p>', 'cooking', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:12:00', '2024-01-17 15:24:13'),
(12, 'Doujinshi', NULL, NULL, '<p>T&aacute;c phẩm s&aacute;ng t&aacute;c độc lập được sản xuất bởi c&aacute;c fan, thường dựa tr&ecirc;n c&aacute;c t&aacute;c phẩm đ&atilde; tồn tại</p>', 'doujinshi', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:12:16', '2024-01-21 01:29:18'),
(13, 'Đam Mỹ', NULL, NULL, '<p>Thể loại truyện hướng đến kh&aacute;n giả đồng t&iacute;nh nam.</p>', 'dam-my', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:12:30', '2024-01-21 01:29:11'),
(14, 'Harem', NULL, NULL, '<p>C&acirc;u chuyện c&oacute; một nh&acirc;n vật nam ch&iacute;nh được bao quanh bởi nhiều nh&acirc;n vật nữ ch&iacute;nh c&oacute; t&igrave;nh cảm với anh ấy.</p>', 'harem', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:12:44', '2024-01-21 01:31:08'),
(15, 'Historical', NULL, NULL, '<p>Truyện c&oacute; bối cảnh trong lịch sử, c&oacute; thể l&agrave; lịch sử thực tế hoặc lịch sử được s&aacute;ng t&aacute;c.</p>', 'historical', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:12:56', '2024-01-21 01:31:13'),
(16, 'Horror', NULL, NULL, '<p>Truyện c&oacute; yếu tố kinh dị, đ&aacute;ng sợ.</p>', 'horror', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:13:09', '2024-01-21 01:31:29'),
(17, 'Josei', NULL, NULL, '<p>D&agrave;nh cho độc giả nữ trưởng th&agrave;nh, thường c&oacute; nội dung phức tạp v&agrave; đầy đủ cảm x&uacute;c.</p>', 'josei', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:13:22', '2024-01-21 01:31:36'),
(18, 'Live action', NULL, NULL, '<p>Truyện được chuyển thể th&agrave;nh c&aacute;c bộ phim trực tiếp với diễn vi&ecirc;n thật.</p>', 'live-action', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:13:35', '2024-01-21 01:32:03'),
(19, 'Manga', NULL, NULL, '<p>Truyện tranh Nhật Bản.</p>', 'manga', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:13:49', '2024-01-21 01:32:08'),
(20, 'Manhua', NULL, NULL, '<p>Truyện tranh Trung Quốc.</p>', 'manhua', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:14:06', '2024-01-21 01:32:14'),
(21, 'Manhwa', NULL, NULL, '<p>Truyện tranh H&agrave;n Quốc.</p>', 'manhwa', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:14:19', '2024-01-21 01:32:20'),
(22, 'Ngôn Tình', NULL, NULL, '<p>Truyện t&igrave;nh cảm xoay quanh c&aacute;c mối quan hệ t&igrave;nh cảm.</p>', 'ngon-tinh', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:14:32', '2024-01-21 01:32:51'),
(23, 'Sports', NULL, NULL, '<p>Truyện xoay quanh c&aacute;c hoạt động thể thao.</p>', 'sports', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:14:42', '2024-01-21 01:34:49'),
(24, 'Supernatural', NULL, NULL, '<p>Truyện c&oacute; yếu tố si&ecirc;u nhi&ecirc;n, si&ecirc;u h&igrave;nh.</p>', 'supernatural', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:14:56', '2024-01-21 01:34:52'),
(25, 'Tạp chí truyện tranh', NULL, NULL, '<p>C&aacute;c tạp ch&iacute; chuy&ecirc;n về truyện tranh.</p>', 'tap-chi-truyen-tranh', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:15:08', '2024-01-21 01:34:55'),
(26, 'Thiếu nhi', NULL, NULL, '<p>D&agrave;nh cho độc giả trẻ.</p>', 'thieu-nhi', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:15:22', '2024-01-21 01:34:58'),
(27, 'Tragedy', NULL, NULL, '<p>Truyện c&oacute; nội dung bi kịch, đau buồn.</p>', 'tragedy', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:15:37', '2024-01-21 01:35:01'),
(28, 'Trinh thám', NULL, NULL, '<p>Truyện c&oacute; yếu tố giải đố tội phạm.</p>', 'trinh-tham', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:15:49', '2024-01-21 01:35:04'),
(29, 'Truyện Màu', NULL, NULL, '<p>Truyện tranh được minh họa bằng m&agrave;u sắc.</p>', 'truyen-mau', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:16:01', '2024-01-21 01:35:06'),
(30, 'Truyện scan', NULL, NULL, '<p>Truyện được qu&eacute;t v&agrave; ph&aacute;t h&agrave;nh trực tuyến.</p>', 'truyen-scan', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:16:13', '2024-01-21 01:35:34'),
(31, 'Truyện siêu hay', NULL, NULL, '<p>Truyện được đ&aacute;nh gi&aacute; cao về chất lượng nội dung.</p>', 'truyen-sieu-hay', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:16:26', '2024-01-21 01:35:37'),
(32, 'Truyện tranh', NULL, NULL, '<p>C&acirc;u chuyện được kể qua h&igrave;nh ảnh, c&oacute; thể l&agrave; manga, manhua, manhwa, hoặc c&aacute;c định dạng kh&aacute;c.</p>', 'truyen-tranh', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:16:46', '2024-01-21 01:35:39'),
(33, 'Webtoon', NULL, NULL, '<p>Truyện tranh được đăng trực tuyến, thường theo định dạng dọc.</p>', 'webtoon', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:16:58', '2024-01-21 01:35:45'),
(34, 'Việt Nam', NULL, NULL, '<p>Truyện tranh của Việt Nam hoặc c&oacute; li&ecirc;n quan đến văn h&oacute;a Việt Nam.</p>', 'viet-nam', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:17:11', '2024-01-21 01:35:42'),
(35, 'Xuyên không', NULL, NULL, '<p>Nh&acirc;n vật ch&iacute;nh xuy&ecirc;n qua thời gian hoặc kh&ocirc;ng gian sang một thế giới kh&aacute;c.</p>', 'xuyen-khong', NULL, NULL, 'ACTIVE', 0, '2024-01-15 02:17:28', '2024-01-21 01:35:48'),
(36, 'Action', NULL, NULL, '<p>Truyện c&oacute; nhiều h&agrave;nh động, đối đầu, v&agrave; chiến đấu.</p>', 'action', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:07:51', '2024-01-17 15:23:10'),
(37, 'Adult', NULL, NULL, '<p>Nội dung chỉ d&agrave;nh cho độc giả trưởng th&agrave;nh, c&oacute; thể chứa c&aacute;c yếu tố n&oacute;ng bỏng, trưởng th&agrave;nh.</p>', 'adult', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:08:07', '2024-01-17 15:23:28'),
(38, 'Adventure', NULL, NULL, '<p>C&acirc;u chuyện theo d&otilde;i h&agrave;nh tr&igrave;nh phi&ecirc;u lưu của nh&acirc;n vật ch&iacute;nh.</p>', 'adventure', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:08:20', '2024-01-17 15:23:26'),
(39, 'Chuyển Sinh', NULL, NULL, '<p>Nh&acirc;n vật ch&iacute;nh chuyển sinh v&agrave;o một thế giới kh&aacute;c.</p>', 'chuyen-sinh', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:08:34', '2024-01-17 15:23:25'),
(40, 'Comedy', NULL, NULL, '<p>Truyện c&oacute; yếu tố h&agrave;i hước v&agrave; giải tr&iacute;.</p>', 'comedy', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:08:49', '2024-01-17 15:23:42'),
(41, 'Drama', NULL, NULL, '<p>Nội dung nặng về cảm x&uacute;c v&agrave; xung đột.</p>', 'drama', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:09:01', '2024-01-21 01:29:25'),
(42, 'Ecchi', NULL, NULL, '<p>Chứa c&aacute;c yếu tố n&oacute;ng bỏng, sexy m&agrave; kh&ocirc;ng qua mức cấm kỵ.</p>', 'ecchi', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:09:15', '2024-01-21 01:30:51'),
(43, 'Fantasy', NULL, NULL, '<p>C&oacute; yếu tố ph&eacute;p thuật, thế giới huyền b&iacute;.</p>', 'fantasy', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:09:29', '2024-01-21 01:30:56'),
(44, 'Gender Bender', NULL, NULL, '<p>Nh&acirc;n vật ch&iacute;nh hoặc c&aacute;c nh&acirc;n vật c&oacute; thể thay đổi giới t&iacute;nh.</p>', 'gender-bender', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:09:43', '2024-01-21 01:31:02'),
(45, 'Martial Arts', NULL, NULL, '<p>Truyện c&oacute; yếu tố v&otilde; thuật, v&otilde; sĩ.</p>', 'martial-arts', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:09:55', '2024-01-21 01:32:26'),
(46, 'Mature', NULL, NULL, '<p>Chứa nội dung trưởng th&agrave;nh, thường l&agrave; về t&igrave;nh dục, ng&ocirc;n ngữ mạnh mẽ.</p>', 'mature', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:10:07', '2024-01-21 01:32:32'),
(47, 'Mecha', NULL, NULL, '<p>C&oacute; yếu tố robot hoặc cơ giới khổng lồ.</p>', 'mecha', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:10:18', '2024-01-21 01:32:37'),
(48, 'Mystery', NULL, NULL, '<p>Truyện c&oacute; yếu tố b&iacute; ẩn, huyền b&iacute;, giải đố.</p>', 'mystery', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:10:29', '2024-01-21 01:32:43'),
(49, 'ntr', NULL, NULL, '<p>Nội dung li&ecirc;n quan đến việc mất m&aacute;t t&igrave;nh cảm hay lừa dối trong mối quan hệ t&igrave;nh cảm.</p>', 'ntr', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:10:41', '2024-01-21 01:32:57'),
(50, 'oneshot', NULL, NULL, '<p>Truyện ngắn chỉ c&oacute; một phần duy nhất.</p>', 'oneshot', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:10:54', '2024-01-21 01:33:29'),
(51, 'Psychological', NULL, NULL, '<p>Chứa yếu tố t&acirc;m l&yacute;, t&acirc;m thần, thường l&agrave; những c&acirc;u chuyện phức tạp.</p>', 'psychological', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:11:06', '2024-01-21 01:33:32'),
(52, 'Romance', NULL, NULL, '<p>Truyện t&igrave;nh cảm giữa c&aacute;c nh&acirc;n vật.</p>', 'romance', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:11:17', '2024-01-21 01:33:35'),
(53, 'School Life', NULL, NULL, '<p>Nội dung xoay quanh cuộc sống học đường.</p>', 'school-life', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:11:29', '2024-01-21 01:33:38'),
(54, 'Sci-fi', NULL, NULL, '<p>Truyện khoa học viễn tưởng, c&oacute; yếu tố c&ocirc;ng nghệ v&agrave; khoa học.</p>', 'sci-fi', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:11:42', '2024-01-21 01:33:42'),
(55, 'Seinen', NULL, NULL, '<p>D&agrave;nh cho độc giả nam trưởng th&agrave;nh.</p>', 'seinen', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:12:00', '2024-01-21 01:33:45'),
(56, 'Shoujo', NULL, NULL, '<p>D&agrave;nh cho độc giả nữ, thường c&oacute; nội dung xoay quanh t&igrave;nh cảm.</p>', 'shoujo', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:12:11', '2024-01-21 01:33:48'),
(57, 'Shoujo Ai', NULL, NULL, '<p>Thể loại t&igrave;nh cảm giữa c&aacute;c nh&acirc;n vật nữ.</p>', 'shoujo-ai', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:12:23', '2024-01-21 01:33:51'),
(58, 'Shounen', NULL, NULL, '<p>D&agrave;nh cho độc giả nam, thường c&oacute; nhiều h&agrave;nh động.</p>', 'shounen', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:12:33', '2024-01-21 01:33:53'),
(59, 'Shounen Ai', NULL, NULL, '<p>Thể loại t&igrave;nh cảm giữa c&aacute;c nh&acirc;n vật nam.</p>', 'shounen-ai', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:12:45', '2024-01-21 01:33:57'),
(60, 'Slice of Life', NULL, NULL, '<p>Nội dung phản &aacute;nh cuộc sống h&agrave;ng ng&agrave;y.</p>', 'slice-of-life', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:12:57', '2024-01-21 01:34:40'),
(61, 'smut', NULL, NULL, '<p>Chứa yếu tố t&igrave;nh dục mạnh mẽ.</p>', 'smut', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:13:09', '2024-01-21 01:34:43'),
(62, 'Soft Yuri', NULL, NULL, '<p>T&igrave;nh cảm giữa c&aacute;c nh&acirc;n vật nữ, nhẹ nh&agrave;ng v&agrave; kh&ocirc;ng qu&aacute; mạnh mẽ.</p>', 'soft-yuri', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:13:27', '2024-01-21 01:34:45'),
(63, 'yaoi', NULL, NULL, '<p>Thể loại t&igrave;nh cảm giữa c&aacute;c nh&acirc;n vật nam.</p>', 'yaoi', NULL, NULL, 'ACTIVE', 0, '2024-01-16 03:13:40', '2024-01-21 01:35:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chapter`
--

CREATE TABLE `chapter` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `media` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `featured` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bookstory_id` int DEFAULT NULL,
  `view` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chapter`
--

INSERT INTO `chapter` (`id`, `title`, `slug`, `title_name`, `seo_title`, `excerpt`, `body`, `media`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `bookstory_id`, `view`) VALUES
(1, 'chapter 1 - Võ Luyện Đỉnh Phong', 'chapter-1-vo-luyen-dinh-phong', 'chapter 1', NULL, NULL, NULL, '[\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 0.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 1.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 2.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 3.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 4.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 5.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 6.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 7.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 8.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 9.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 10.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 11.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 12.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 13.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 14.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 15.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 16.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 1/trang 17.jpeg\"]', NULL, NULL, 'ACTIVE', 0, '2024-01-11 06:35:00', '2024-03-14 03:23:30', 38, 15),
(13, 'chapter 2 - Võ Luyện Đỉnh Phong', 'chapter-2-vo-luyen-dinh-phong', 'chapter 2', NULL, NULL, NULL, '[\"chapter/Võ Luyện Đỉnh Phong/chapter 2/trang 0.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 2/trang 1.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 2/trang 2.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 2/trang 3.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 2/trang 4.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 2/trang 5.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 2/trang 6.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 2/trang 7.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 2/trang 8.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 2/trang 9.jpeg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 2/trang 10.jpeg\"]', NULL, NULL, 'ACTIVE', 0, '2024-01-22 06:42:30', '2024-03-13 10:17:08', 38, 15),
(14, 'chapter 3 - Võ Luyện Đỉnh Phong', 'chapter-3-vo-luyen-dinh-phong', 'chapter 3', NULL, NULL, NULL, '[\"chapter/Võ Luyện Đỉnh Phong/chapter 3/trang 0.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 3/trang 1.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 3/trang 2.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 3/trang 3.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 3/trang 4.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 3/trang 5.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 3/trang 6.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 3/trang 7.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 3/trang 8.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 3/trang 9.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-01-24 13:53:34', '2024-03-12 08:28:35', 38, 15),
(15, 'chapter 1 - Bách Luyện Thành Thần', 'chapter-1-bach-luyen-thanh-than', 'chapter 1', NULL, NULL, NULL, '[\"chapter/Bách Luyện Thành Thần/chapter 1/trang 0.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 1.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 2.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 3.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 4.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 5.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 6.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 7.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 8.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 9.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 10.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 11.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 12.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 13.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 14.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 15.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 16.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 17.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 18.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 19.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 20.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 21.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 1/trang 22.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-02-01 11:22:17', '2024-02-27 08:39:02', 48, 6),
(16, 'chapter 2 - Bách Luyện Thành Thần', 'chapter-2-bach-luyen-thanh-than', 'chapter 2', NULL, NULL, NULL, '[\"chapter/Bách Luyện Thành Thần/chapter 2/trang 0.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 2/trang 1.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 2/trang 2.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 2/trang 3.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 2/trang 4.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 2/trang 5.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 2/trang 6.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 2/trang 7.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 2/trang 8.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 2/trang 9.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 2/trang 10.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 2/trang 11.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 2/trang 12.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 2/trang 13.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 2/trang 14.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 2/trang 15.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 2/trang 16.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 2/trang 17.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-02-01 11:24:17', '2024-02-27 13:21:05', 48, 8),
(17, 'chapter 4 - Võ Luyện Đỉnh Phong', 'chapter-4-vo-luyen-dinh-phong', 'chapter 4', NULL, NULL, NULL, '[\"chapter/Võ Luyện Đỉnh Phong/chapter 4/trang 0.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 4/trang 1.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 4/trang 2.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 4/trang 3.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 4/trang 4.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 4/trang 5.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 4/trang 6.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 4/trang 7.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 4/trang 8.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 4/trang 9.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-02 03:06:25', '2024-03-12 08:28:12', 38, 4),
(18, 'chapter 5 - Võ Luyện Đỉnh Phong', 'chapter-5-vo-luyen-dinh-phong', 'chapter 5', NULL, NULL, NULL, '[\"chapter/Võ Luyện Đỉnh Phong/chapter 5/trang 0.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 5/trang 1.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 5/trang 2.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 5/trang 3.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 5/trang 4.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 5/trang 5.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 5/trang 6.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 5/trang 7.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 5/trang 8.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 5/trang 9.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 5/trang 10.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 5/trang 11.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-02 03:10:13', '2024-03-12 08:28:38', 38, 5),
(19, 'chapter 6 - Võ Luyện Đỉnh Phong', 'chapter-6-vo-luyen-dinh-phong', 'chapter 6', NULL, NULL, NULL, '[\"chapter/Võ Luyện Đỉnh Phong/chapter 6/trang 0.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 6/trang 1.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 6/trang 2.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 6/trang 3.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 6/trang 4.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 6/trang 5.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 6/trang 6.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 6/trang 7.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-02 03:11:11', '2024-03-12 08:28:31', 38, 5),
(20, 'chapter 7 - Võ Luyện Đỉnh Phong', 'chapter-7-vo-luyen-dinh-phong', 'chapter 7', NULL, NULL, NULL, '[\"chapter/Võ Luyện Đỉnh Phong/chapter 7/trang 0.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 7/trang 1.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 7/trang 2.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 7/trang 3.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 7/trang 4.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 7/trang 5.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 7/trang 6.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 7/trang 7.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 7/trang 8.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-02 03:13:23', '2024-03-02 03:27:18', 38, 2),
(22, 'chapter 1 - Tu Tiên Trở Về Tại Vườn Trường', 'chapter-1-tu-tien-tro-ve-tai-vuon-truong', 'chapter 1', NULL, NULL, NULL, '[\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 0.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 1.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 2.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 3.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 4.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 5.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 6.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 7.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 8.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 9.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 10.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 11.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 12.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 13.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 14.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 15.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 16.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 1/trang 17.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:24:38', '2024-03-06 06:35:02', 83, 2),
(23, 'chapter 2 - Tu Tiên Trở Về Tại Vườn Trường', 'chapter-2-tu-tien-tro-ve-tai-vuon-truong', 'chapter 2', NULL, NULL, NULL, '[\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 2/trang 0.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 2/trang 1.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 2/trang 2.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 2/trang 3.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 2/trang 4.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 2/trang 5.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 2/trang 6.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 2/trang 7.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 2/trang 8.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 2/trang 9.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 2/trang 10.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 2/trang 11.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 2/trang 12.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 2/trang 13.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 2/trang 14.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 2/trang 15.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:25:58', '2024-03-06 06:36:23', 83, 2),
(24, 'chapter 3 - Tu Tiên Trở Về Tại Vườn Trường', 'chapter-3-tu-tien-tro-ve-tai-vuon-truong', 'chapter 3', NULL, NULL, NULL, '[\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 0.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 1.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 2.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 3.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 4.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 5.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 6.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 7.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 8.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 9.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 10.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 11.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 12.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 13.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 14.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 15.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 16.jpg\",\"chapter/Tu Tiên Trở Về Tại Vườn Trường/chapter 3/trang 17.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:26:52', '2024-03-06 06:36:25', 83, 2),
(25, 'chapter 1 - Trọng Sinh Đô Thị Tu Tiên', 'chapter-1-trong-sinh-do-thi-tu-tien', 'chapter 1', NULL, NULL, NULL, '[\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 0.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 1.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 2.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 3.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 4.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 5.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 6.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 7.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 8.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 9.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 10.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 11.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 12.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 13.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 14.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 15.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 16.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 17.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 18.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 19.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 20.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 21.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 22.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 23.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 24.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 25.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 26.jpg\",\"chapter/Trọng Sinh Đô Thị Tu Tiên/chapter 1/trang 27.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:29:06', '2024-03-06 06:32:08', 81, 2),
(26, 'chapter 2 - Trọng Sinh Đô Thị Tu Tiên', 'chapter-2-trong-sinh-do-thi-tu-tien', 'chapter 2', NULL, NULL, NULL, '[]', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:30:04', '2024-03-02 04:30:04', 81, 0),
(27, 'chapter 3 - Trọng Sinh Đô Thị Tu Tiên', 'chapter-3-trong-sinh-do-thi-tu-tien', 'chapter 3', NULL, NULL, NULL, '[]', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:31:06', '2024-03-02 04:31:06', 81, 0),
(28, 'chapter 1 - Tiên Vương Trùng Sinh', 'chapter-1-tien-vuong-trung-sinh', 'chapter 1', NULL, NULL, NULL, '[\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 0.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 1.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 2.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 3.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 4.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 5.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 6.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 7.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 8.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 9.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 10.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 11.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 12.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 13.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 14.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 15.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 16.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 17.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 18.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 19.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 20.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 21.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 22.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 23.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 24.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 25.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 26.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 27.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 28.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 29.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 30.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 31.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 32.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 33.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 34.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 35.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 36.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 1/trang 37.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:33:36', '2024-03-10 04:04:16', 53, 2),
(29, 'chapter 2 - Tiên Vương Trùng Sinh', 'chapter-2-tien-vuong-trung-sinh', 'chapter 2', NULL, NULL, NULL, '[\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 0.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 1.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 2.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 3.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 4.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 5.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 6.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 7.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 8.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 9.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 10.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 11.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 12.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 13.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 14.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 15.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 16.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 17.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 18.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 19.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 20.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 21.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 22.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 23.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 24.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 25.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 26.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 27.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 28.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 29.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 30.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 31.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 32.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 2/trang 33.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:34:51', '2024-03-06 06:48:16', 53, 1),
(30, 'chapter 3 - Tiên Vương Trùng Sinh', 'chapter-3-tien-vuong-trung-sinh', 'chapter 3', NULL, NULL, NULL, '[\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 0.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 1.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 2.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 3.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 4.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 5.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 6.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 7.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 8.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 9.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 10.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 11.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 12.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 13.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 14.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 15.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 16.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 17.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 18.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 19.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 20.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 21.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 22.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 23.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 24.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 25.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 26.jpg\",\"chapter/Tiên Vương Trùng Sinh/chapter 3/trang 27.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-02 04:35:55', '2024-03-06 06:31:50', 53, 1),
(31, 'chapter 1 - Bạn Gái Zombie Của Tôi', 'chapter-1-ban-gai-zombie-cua-toi', 'chapter 1', NULL, NULL, NULL, '[\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 0.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 1.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 2.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 3.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 4.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 5.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 6.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 7.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 8.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 9.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 10.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 11.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 12.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 13.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 14.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 15.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 16.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 17.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 18.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 19.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 20.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 21.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 22.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 23.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 24.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 25.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 26.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 27.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 28.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 29.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 30.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 31.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 32.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 33.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 34.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 35.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 36.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 37.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 38.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 39.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 40.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 41.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 42.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 43.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 44.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 45.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 46.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 47.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 48.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 49.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 50.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 51.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 52.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 53.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 54.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 55.jpg\",\"chapter/Bạn Gái Zombie Của Tôi/chapter 1/trang 56.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-10 04:08:39', '2024-03-14 04:00:55', 56, 2),
(32, 'chapter 3 - Bách Luyện Thành Thần', 'chapter-3-bach-luyen-thanh-than', 'chapter 3', NULL, NULL, NULL, '[\"chapter/Bách Luyện Thành Thần/chapter 3/trang 0.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 1.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 2.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 3.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 4.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 5.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 6.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 7.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 8.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 9.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 10.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 11.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 12.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 13.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 14.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 15.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 16.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 17.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 18.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 19.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 20.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 21.jpg\",\"chapter/Bách Luyện Thành Thần/chapter 3/trang 22.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-11 13:49:47', '2024-03-11 13:49:47', 48, 0),
(33, 'chapter 8 - Võ Luyện Đỉnh Phong', 'chapter-8-vo-luyen-dinh-phong', 'chapter 8', NULL, NULL, NULL, '[\"chapter/Võ Luyện Đỉnh Phong/chapter 8/trang 0.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 8/trang 1.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 8/trang 2.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 8/trang 3.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 8/trang 4.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 8/trang 5.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 8/trang 6.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 8/trang 7.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-11 13:51:19', '2024-03-13 07:14:17', 38, 2),
(34, 'chapter 1 - Mạt Thế Vi Vương', 'chapter-1-mat-the-vi-vuong', 'chapter 1', NULL, NULL, NULL, '[\"chapter/Mạt Thế Vi Vương/chapter 1/trang 0.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 1.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 2.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 3.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 4.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 5.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 6.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 7.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 8.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 9.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 10.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 11.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 12.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 13.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 14.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 15.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 16.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 17.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 18.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 19.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 20.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 1/trang 21.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-11 13:53:17', '2024-03-11 13:53:17', 65, 0),
(35, 'chapter 2 - Mạt Thế Vi Vương', 'chapter-2-mat-the-vi-vuong', 'chapter 2', NULL, NULL, NULL, '[\"chapter/Mạt Thế Vi Vương/chapter 2/trang 0.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 1.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 2.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 3.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 4.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 5.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 6.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 7.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 8.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 9.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 10.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 11.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 12.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 13.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 14.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 15.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 16.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 17.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 18.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 19.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 20.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 21.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 22.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 23.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 24.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 25.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 26.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 27.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 28.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 29.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 30.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 2/trang 31.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-11 13:54:49', '2024-03-11 13:54:49', 65, 0),
(36, 'chapter 3 - Mạt Thế Vi Vương', 'chapter-3-mat-the-vi-vuong', 'chapter 3', NULL, NULL, NULL, '[\"chapter/Mạt Thế Vi Vương/chapter 3/trang 0.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 1.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 2.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 3.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 4.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 5.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 6.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 7.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 8.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 9.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 10.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 11.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 12.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 13.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 14.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 15.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 16.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 17.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 18.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 19.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 20.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 21.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 22.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 23.jpg\",\"chapter/Mạt Thế Vi Vương/chapter 3/trang 24.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-11 13:55:31', '2024-03-11 13:55:31', 65, 0),
(37, 'chapter 1 - Thả Vu Nữ Đó Ra', 'chapter-1-tha-vu-nu-do-ra', 'chapter 1', NULL, NULL, NULL, '[\"chapter/Thả Vu Nữ Đó Ra/chapter 1/trang 0.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 1/trang 1.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 1/trang 2.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 1/trang 3.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 1/trang 4.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 1/trang 5.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 1/trang 6.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 1/trang 7.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 1/trang 8.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 1/trang 9.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 1/trang 10.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 1/trang 11.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 1/trang 12.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 1/trang 13.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 1/trang 14.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 1/trang 15.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-11 13:56:27', '2024-03-12 10:30:42', 54, 7),
(38, 'chapter 2 - Thả Vu Nữ Đó Ra', 'chapter-2-tha-vu-nu-do-ra', 'chapter 2', NULL, NULL, NULL, '[\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 0.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 1.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 2.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 3.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 4.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 5.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 6.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 7.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 8.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 9.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 10.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 11.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 12.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 13.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 14.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 15.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 16.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 17.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 18.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 2/trang 19.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-11 13:57:08', '2024-03-11 13:57:08', 54, 0),
(39, 'chapter 3 - Thả Vu Nữ Đó Ra', 'chapter-3-tha-vu-nu-do-ra', 'chapter 3', NULL, NULL, NULL, '[\"chapter/Thả Vu Nữ Đó Ra/chapter 3/trang 0.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 3/trang 1.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 3/trang 2.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 3/trang 3.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 3/trang 4.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 3/trang 5.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 3/trang 6.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 3/trang 7.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 3/trang 8.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 3/trang 9.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 3/trang 10.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 3/trang 11.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 3/trang 12.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 3/trang 13.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 3/trang 14.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 3/trang 15.jpg\",\"chapter/Thả Vu Nữ Đó Ra/chapter 3/trang 16.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-11 13:57:40', '2024-03-12 10:31:20', 54, 1),
(40, 'chapter 0 - Nghịch Thiên Tà Thần', 'chapter-0-nghich-thien-ta-than', 'chapter 0', NULL, NULL, NULL, '[\"chapter/Nghịch Thiên Tà Thần/chapter 0/trang 0.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 0/trang 1.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 0/trang 2.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 0/trang 3.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 0/trang 4.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 0/trang 5.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 0/trang 6.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 0/trang 7.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 0/trang 8.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 0/trang 9.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 0/trang 10.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 0/trang 11.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 0/trang 12.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 0/trang 13.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 0/trang 14.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-11 13:58:53', '2024-03-11 15:08:07', 67, 5),
(41, 'chapter 1 - Nghịch Thiên Tà Thần', 'chapter-1-nghich-thien-ta-than', 'chapter 1', NULL, NULL, NULL, '[\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 0.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 1.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 2.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 3.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 4.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 5.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 6.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 7.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 8.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 9.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 10.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 11.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 12.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 13.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 14.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 15.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 16.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 17.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 18.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 19.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 20.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 21.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 22.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 23.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 24.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 25.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 26.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 27.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 28.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 29.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 30.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 31.jpg\",\"chapter/Nghịch Thiên Tà Thần/chapter 1/trang 32.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-11 13:59:45', '2024-03-11 13:59:45', 67, 0),
(42, 'chapter 1 - Thảm Họa Tử Linh Sư', 'chapter-1-tham-hoa-tu-linh-su', 'chapter 1', NULL, NULL, NULL, '[\"chapter/Thảm Họa Tử Linh Sư/chapter 1/trang 0.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 1/trang 1.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 1/trang 2.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 1/trang 3.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 1/trang 4.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 1/trang 5.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 1/trang 6.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 1/trang 7.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 1/trang 8.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 1/trang 9.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 1/trang 10.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 1/trang 11.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 1/trang 12.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 1/trang 13.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-11 15:13:13', '2024-03-11 15:16:30', 11, 1),
(43, 'chapter 2 - Thảm Họa Tử Linh Sư', 'chapter-2-tham-hoa-tu-linh-su', 'chapter 2', NULL, NULL, NULL, '[\"chapter/Thảm Họa Tử Linh Sư/chapter 2/trang 0.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 2/trang 1.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 2/trang 2.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 2/trang 3.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 2/trang 4.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 2/trang 5.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 2/trang 6.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 2/trang 7.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 2/trang 8.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 2/trang 9.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 2/trang 10.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 2/trang 11.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-11 15:13:40', '2024-03-11 15:16:35', 11, 1),
(44, 'chapter 3 - Thảm Họa Tử Linh Sư', 'chapter-3-tham-hoa-tu-linh-su', 'chapter 3', NULL, NULL, NULL, '[\"chapter/Thảm Họa Tử Linh Sư/chapter 3/trang 0.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 3/trang 1.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 3/trang 2.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 3/trang 3.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 3/trang 4.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 3/trang 5.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 3/trang 6.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 3/trang 7.jpg\",\"chapter/Thảm Họa Tử Linh Sư/chapter 3/trang 8.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-11 15:16:18', '2024-03-11 15:16:37', 11, 1),
(45, 'chapter 1 - Võ Nghịch', 'chapter-1-vo-nghich', 'chapter 1', NULL, NULL, NULL, '[\"chapter/Võ Nghịch/chapter 1/trang 0.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 1.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 2.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 3.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 4.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 5.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 6.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 7.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 8.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 9.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 10.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 11.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 12.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 13.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 14.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 15.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 16.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 17.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 18.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 19.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 20.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 21.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 22.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 23.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 24.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 25.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 26.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 27.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 28.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 29.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 30.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 31.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 32.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 33.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 34.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 35.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 36.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 37.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 38.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 39.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 40.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 41.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 42.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 43.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 44.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 45.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 46.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 47.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 48.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 49.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 50.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 51.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 52.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 53.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 54.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 55.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 56.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 57.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 58.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 59.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 60.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 61.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 62.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 63.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 64.jpg\",\"chapter/Võ Nghịch/chapter 1/trang 65.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-12 08:13:36', '2024-03-12 08:15:17', 86, 1),
(46, 'chapter 2 - Võ Nghịch', 'chapter-2-vo-nghich', 'chapter 2', NULL, NULL, NULL, '[\"chapter/Võ Nghịch/chapter 2/trang 0.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 1.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 2.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 3.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 4.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 5.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 6.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 7.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 8.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 9.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 10.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 11.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 12.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 13.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 14.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 15.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 16.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 17.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 18.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 19.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 20.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 21.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 22.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 23.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 24.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 25.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 26.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 27.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 28.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 29.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 30.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 31.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 32.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 33.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 34.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 35.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 36.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 37.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 38.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 39.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 40.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 41.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 42.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 43.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 44.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 45.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 46.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 47.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 48.jpg\",\"chapter/Võ Nghịch/chapter 2/trang 49.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-12 08:14:57', '2024-03-12 08:35:21', 86, 1),
(47, 'chapter 9 - Võ Luyện Đỉnh Phong', 'chapter-9-vo-luyen-dinh-phong', 'chapter 9', NULL, NULL, NULL, '[\"chapter/Võ Luyện Đỉnh Phong/chapter 9/trang 0.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 9/trang 1.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 9/trang 2.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 9/trang 3.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 9/trang 4.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 9/trang 5.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 9/trang 6.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 9/trang 7.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 9/trang 8.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 9/trang 9.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 9/trang 10.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 9/trang 11.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-12 08:26:59', '2024-03-22 01:11:11', 38, 5),
(48, 'chapter 10 - Võ Luyện Đỉnh Phong', 'chapter-10-vo-luyen-dinh-phong', 'chapter 10', NULL, NULL, NULL, '[\"chapter/Võ Luyện Đỉnh Phong/chapter 10/trang 0.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 10/trang 1.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 10/trang 2.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 10/trang 3.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 10/trang 4.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 10/trang 5.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 10/trang 6.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 10/trang 7.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 10/trang 8.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-12 08:27:27', '2024-03-22 01:59:16', 38, 42),
(49, 'chapter 11 - Võ Luyện Đỉnh Phong', 'chapter-11-vo-luyen-dinh-phong', 'chapter 11', NULL, NULL, NULL, '[\"chapter/Võ Luyện Đỉnh Phong/chapter 11/trang 0.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 11/trang 1.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 11/trang 2.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 11/trang 3.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 11/trang 4.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 11/trang 5.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 11/trang 6.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 11/trang 7.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 11/trang 8.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 11/trang 9.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 11/trang 10.jpg\",\"chapter/Võ Luyện Đỉnh Phong/chapter 11/trang 11.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-12 08:27:56', '2024-03-22 00:50:05', 38, 6),
(50, 'chapter 1 - Tôi Là Thiên Ma Truyền Nhân', 'chapter-1-toi-la-thien-ma-truyen-nhan', 'chapter 1', NULL, NULL, NULL, '[\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 1/trang 0.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 1/trang 1.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 1/trang 2.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 1/trang 3.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 1/trang 4.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 1/trang 5.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 1/trang 6.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 1/trang 7.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 1/trang 8.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 1/trang 9.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 1/trang 10.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 1/trang 11.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 1/trang 12.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-13 03:01:52', '2024-03-13 10:05:04', 80, 3);
INSERT INTO `chapter` (`id`, `title`, `slug`, `title_name`, `seo_title`, `excerpt`, `body`, `media`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `bookstory_id`, `view`) VALUES
(51, 'chapter 2 - Tôi Là Thiên Ma Truyền Nhân', 'chapter-2-toi-la-thien-ma-truyen-nhan', 'chapter 2', NULL, NULL, NULL, '[\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 0.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 1.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 2.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 3.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 4.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 5.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 6.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 7.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 8.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 9.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 10.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 11.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 12.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 13.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 14.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 15.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 16.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 17.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 18.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 19.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 20.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 21.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 22.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 23.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 24.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 25.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 26.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 27.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 28.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 29.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 30.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 31.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 32.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 33.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 34.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 35.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 36.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 37.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 38.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 39.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 40.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 41.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 42.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 43.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 44.jpg\",\"chapter/Tôi Là Thiên Ma Truyền Nhân/chapter 2/trang 45.jpg\"]', NULL, NULL, 'ACTIVE', 0, '2024-03-13 03:19:33', '2024-03-22 03:04:14', 80, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Tên', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Mật khẩu', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 6),
(6, 1, 'created_at', 'timestamp', 'Ngày tạo', 0, 0, 1, 0, 0, 0, '{}', 8),
(7, 1, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 1, 0, 0, 0, '{}', 9),
(8, 1, 'avatar', 'image', 'Ảnh đại diện', 0, 1, 1, 1, 1, 1, '{}', 5),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Chức vụ chính', 0, 0, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Chức vụ phụ', 0, 0, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 12),
(11, 1, 'settings', 'hidden', 'Cài đặt', 0, 0, 0, 0, 0, 0, '{}', 13),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Chức vụ', 0, 0, 1, 1, 1, 1, '{}', 10),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 0, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 4),
(48, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '{}', 12),
(79, 16, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(80, 16, 'title', 'text', 'Tên thể loại', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Ch\\u01b0a \\u0111i\\u1ec1n t\\u00ean th\\u1ec3 lo\\u1ea1i.\"}},\"description\":\"D\\u00f9ng \\u0111\\u1ec3 nh\\u1eadp t\\u00ean th\\u1ec3 lo\\u1ea1i.\",\"display\":{\"width\":\"4\"}}', 2),
(81, 16, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 10),
(82, 16, 'excerpt', 'text_area', 'Trích đoạn mô tả nhỏ của bài đăng này', 0, 0, 1, 1, 1, 1, '{\"description\":\"D\\u00f9ng \\u0111\\u1ec3 nh\\u1eadp m\\u00f4 t\\u1ea3 nh\\u1ecf c\\u1ee7a b\\u00e0i \\u0111\\u0103ng.\",\"display\":{\"width\":\"6\"}}', 6),
(83, 16, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{\"description\":\"D\\u00f9ng \\u0111\\u1ec3 nh\\u1eadp n\\u1ed9i dung.\",\"display\":{\"width\":\"6\"}}', 5),
(85, 16, 'slug', 'text', 'Slug thể loại', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:category,slug\",\"messages\":{\"unique\":\"\\u0110\\u00e3 c\\u00f3 slug n\\u00e0y r\\u1ed3i. H\\u00e3y \\u0111i\\u1ec1n slug kh\\u00e1c.\"}},\"description\":\"D\\u00f9ng \\u0111\\u1ec3 hi\\u1ec3n th\\u1ecb \\u0111\\u01b0\\u1eddng d\\u1eabn c\\u1ee7a th\\u1ec3 lo\\u1ea1i.\",\"display\":{\"width\":\"4\"}}', 3),
(86, 16, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 8),
(87, 16, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 9),
(88, 16, 'status', 'select_dropdown', 'Trạng thái', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"ACTIVE\":\"K\\u00edch ho\\u1ea1t\",\"INACTIVE\":\"Kh\\u00f4ng k\\u00edch ho\\u1ea1t\"},\"description\":\"D\\u00f9ng \\u0111\\u1ec3 chuy\\u1ec3n tr\\u1ea1ng th\\u00e1i gi\\u1eefa k\\u00edch ho\\u1ea1t v\\u00e0 kh\\u00f4ng k\\u00edch ho\\u1ea1t.\",\"display\":{\"width\":\"4\"}}', 4),
(89, 16, 'featured', 'checkbox', 'Nổi bật', 1, 0, 1, 1, 1, 1, '{\"description\":\"D\\u00f9ng \\u0111\\u1ec3 ch\\u1ecdn xem c\\u00f3 cho ph\\u00e9p hi\\u1ec3n th\\u1ecb \\u1edf d\\u1ea1ng n\\u1ed5i b\\u1eadt.\",\"display\":{\"width\":\"6\"},\"on\":\"C\\u00f3\",\"off\":\"Kh\\u00f4ng\",\"checked\":false}', 7),
(90, 16, 'created_at', 'timestamp', 'Ngày tạo', 0, 0, 1, 0, 0, 0, '{}', 11),
(91, 16, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 1, 0, 0, 0, '{}', 12),
(92, 17, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 17, 'title', 'text', 'Tên truyện', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Ch\\u01b0a \\u0111i\\u1ec1n t\\u00ean truy\\u1ec7n.\"}},\"description\":\"D\\u00f9ng \\u0111\\u1ec3 nh\\u1eadp t\\u00ean truy\\u1ec7n.\",\"display\":{\"width\":\"3\"}}', 2),
(94, 17, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 13),
(95, 17, 'excerpt', 'text_area', 'Trích đoạn mô tả nhỏ của bài đăng này', 0, 0, 1, 1, 1, 1, '{\"description\":\"D\\u00f9ng \\u0111\\u1ec3 nh\\u1eadp m\\u00f4 t\\u1ea3 nh\\u1ecf c\\u1ee7a b\\u00e0i \\u0111\\u0103ng.\",\"display\":{\"width\":\"6\"}}', 10),
(96, 17, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{\"description\":\"D\\u00f9ng \\u0111\\u1ec3 nh\\u1eadp n\\u1ed9i dung.\",\"display\":{\"width\":\"6\"}}', 8),
(97, 17, 'image', 'media_picker', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{\"max\":1,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"description\":\"D\\u00f9ng \\u0111\\u1ec3 nh\\u1eadp h\\u00ecnh \\u1ea3nh.\"}', 14),
(98, 17, 'slug', 'text', 'Slug truyện', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:bookstory,slug\",\"messages\":{\"unique\":\"\\u0110\\u00e3 c\\u00f3 slug n\\u00e0y r\\u1ed3i. H\\u00e3y \\u0111i\\u1ec1n slug kh\\u00e1c.\"}},\"description\":\"D\\u00f9ng \\u0111\\u1ec3 hi\\u1ec3n th\\u1ecb \\u0111\\u01b0\\u1eddng d\\u1eabn c\\u1ee7a truy\\u1ec7n.\",\"display\":{\"width\":\"3\"}}', 3),
(99, 17, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 11),
(100, 17, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 12),
(101, 17, 'status', 'select_dropdown', 'Trạng thái', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"ACTIVE\":\"K\\u00edch ho\\u1ea1t\",\"INACTIVE\":\"Kh\\u00f4ng k\\u00edch ho\\u1ea1t\"},\"description\":\"D\\u00f9ng \\u0111\\u1ec3 chuy\\u1ec3n tr\\u1ea1ng th\\u00e1i gi\\u1eefa k\\u00edch ho\\u1ea1t v\\u00e0 kh\\u00f4ng k\\u00edch ho\\u1ea1t.\",\"display\":{\"width\":\"3\"}}', 6),
(102, 17, 'featured', 'checkbox', 'Nổi bật', 0, 0, 1, 1, 1, 1, '{\"on\":\"C\\u00f3\",\"off\":\"Kh\\u00f4ng\",\"checked\":false,\"description\":\"D\\u00f9ng \\u0111\\u1ec3 ch\\u1ecdn xem c\\u00f3 cho ph\\u00e9p hi\\u1ec3n th\\u1ecb \\u1edf d\\u1ea1ng n\\u1ed5i b\\u1eadt.\",\"display\":{\"width\":\"6\"}}', 9),
(103, 17, 'created_at', 'timestamp', 'Ngày tạo', 0, 0, 1, 0, 0, 0, '{}', 15),
(104, 17, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 1, 0, 0, 0, '{}', 16),
(105, 17, 'category_id', 'number', 'Thể loại', 0, 0, 0, 0, 0, 1, '{\"sort\":{\"field\":\"title\",\"drection\":\"asc\"}}', 4),
(111, 17, 'bookstory_hasmany_pivote_truyen_category_relationship', 'relationship', 'Thể loại', 0, 1, 1, 1, 1, 1, '{\"description\":\"D\\u00f9ng \\u0111\\u1ec3 hi\\u1ec3n th\\u1ecb th\\u1ec3 lo\\u1ea1i theo truy\\u1ec7n.\",\"display\":{\"width\":\"3\"},\"sort\":{\"field\":\"title\",\"drection\":\"asc\"},\"model\":\"App\\\\Models\\\\Category\",\"table\":\"category\",\"type\":\"belongsToMany\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"pivote_bookstory_category\",\"pivot\":\"1\",\"taggable\":\"0\"}', 5),
(121, 20, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(122, 20, 'bookstory_id', 'text', 'Truyện', 0, 0, 1, 1, 1, 1, '{}', 2),
(123, 20, 'category_id', 'text', 'Thể loại', 0, 0, 1, 1, 1, 1, '{}', 4),
(124, 20, 'pivote_bookstory_category_hasone_bookstory_relationship', 'relationship', 'Truyện', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Bookstory\",\"table\":\"bookstory\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"bookstory_id\",\"label\":\"title\",\"pivot_table\":\"bookstory\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(125, 20, 'pivote_bookstory_category_hasone_category_relationship', 'relationship', 'Thể loại', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category\",\"table\":\"category\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"category_id\",\"label\":\"title\",\"pivot_table\":\"bookstory\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(144, 22, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(145, 22, 'title', 'text', 'Tên chapter', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Ch\\u01b0a \\u0111i\\u1ec1n t\\u00ean chapter.\"}},\"description\":\"D\\u00f9ng \\u0111\\u1ec3 nh\\u1eadp t\\u00ean chapter.\",\"display\":{\"width\":\"3\"}}', 2),
(146, 22, 'slug', 'text', 'Slug chapter', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:chapter,slug\",\"messages\":{\"unique\":\"\\u0110\\u00e3 c\\u00f3 slug n\\u00e0y r\\u1ed3i. H\\u00e3y \\u0111i\\u1ec1n slug kh\\u00e1c.\"}},\"description\":\"D\\u00f9ng \\u0111\\u1ec3 hi\\u1ec3n th\\u1ecb \\u0111\\u01b0\\u1eddng d\\u1eabn c\\u1ee7a chapter.\",\"display\":{\"width\":\"3\"}}', 4),
(147, 22, 'title_name', 'text', 'Tên chapter hiển thị', 1, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Ch\\u01b0a \\u0111i\\u1ec1n t\\u00ean chapter hi\\u1ec3n th\\u1ecb.\"}},\"description\":\"D\\u00f9ng \\u0111\\u1ec3 hi\\u1ec3n th\\u1ecb t\\u00ean chapter.\",\"display\":{\"width\":\"3\"}}', 3),
(148, 22, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 13),
(149, 22, 'excerpt', 'text_area', 'Trích đoạn mô tả nhỏ của bài đăng này', 0, 0, 1, 1, 1, 1, '{\"description\":\"D\\u00f9ng \\u0111\\u1ec3 nh\\u1eadp m\\u00f4 t\\u1ea3 nh\\u1ecf c\\u1ee7a b\\u00e0i \\u0111\\u0103ng.\",\"display\":{\"width\":\"6\"}}', 10),
(150, 22, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{\"description\":\"D\\u00f9ng \\u0111\\u1ec3 nh\\u1eadp n\\u1ed9i dung.\",\"display\":{\"width\":\"6\"}}', 7),
(152, 22, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 11),
(153, 22, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 12),
(154, 22, 'status', 'select_dropdown', 'Trạng thái', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"ACTIVE\":\"K\\u00edch ho\\u1ea1t\",\"INACTIVE\":\"Kh\\u00f4ng k\\u00edch ho\\u1ea1t\"},\"description\":\"D\\u00f9ng \\u0111\\u1ec3 chuy\\u1ec3n tr\\u1ea1ng th\\u00e1i gi\\u1eefa k\\u00edch ho\\u1ea1t v\\u00e0 kh\\u00f4ng k\\u00edch ho\\u1ea1t.\",\"display\":{\"width\":\"3\"}}', 9),
(155, 22, 'featured', 'checkbox', 'Nổi bật', 0, 0, 1, 1, 1, 1, '{\"on\":\"C\\u00f3\",\"off\":\"Kh\\u00f4ng\",\"checked\":false,\"description\":\"D\\u00f9ng \\u0111\\u1ec3 ch\\u1ecdn xem c\\u00f3 cho ph\\u00e9p hi\\u1ec3n th\\u1ecb \\u1edf d\\u1ea1ng n\\u1ed5i b\\u1eadt.\",\"display\":{\"width\":\"3\"}}', 8),
(156, 22, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 15),
(157, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 16),
(158, 22, 'bookstory_id', 'text', 'Tên truyện', 0, 1, 1, 1, 1, 1, '{}', 5),
(159, 22, 'chapter_belongsto_bookstory_relationship', 'relationship', 'Tên truyện', 0, 1, 1, 1, 1, 1, '{\"description\":\"D\\u00f9ng \\u0111\\u1ec3 hi\\u1ec3n th\\u1ecb truy\\u1ec7n theo chapter.\",\"display\":{\"width\":\"3\"},\"sort\":{\"field\":\"title\",\"direction\":\"asc\"},\"model\":\"App\\\\Models\\\\Bookstory\",\"table\":\"bookstory\",\"type\":\"belongsTo\",\"column\":\"bookstory_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"bookstory\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(160, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 7),
(161, 23, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(162, 23, 'name', 'text', 'Tên', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Ch\\u01b0a \\u0111i\\u1ec1n t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng.\"}},\"description\":\"D\\u00f9ng \\u0111\\u1ec3 hi\\u1ec3n th\\u1ecb t\\u00ean ng\\u01b0\\u1eddi d\\u00f9ng.\",\"display\":{\"width\":\"3\"}}', 2),
(163, 23, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"unique:publisher,email\",\"messages\":{\"unique\":\"\\u0110\\u00e3 c\\u00f3 \\u0111\\u1ecba ch\\u1ec9 email n\\u00e0y r\\u1ed3i. H\\u00e3y \\u0111i\\u1ec1n \\u0111\\u1ecba ch\\u1ec9 email kh\\u00e1c.\"}},\"description\":\"D\\u00f9ng \\u0111\\u1ec3 hi\\u1ec3n th\\u1ecb email ng\\u01b0\\u1eddi d\\u00f9ng.\",\"display\":{\"width\":\"3\"}}', 3),
(164, 23, 'avatar', 'media_picker', 'Ảnh đại diện', 0, 1, 1, 1, 1, 1, '{\"max\":1,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90}', 5),
(165, 23, 'password', 'password', 'Mật khẩu', 1, 0, 0, 1, 1, 0, '{\"description\":\"D\\u00f9ng \\u0111\\u1ec3 nh\\u1eadp m\\u1eadt kh\\u1ea9u.\",\"display\":{\"width\":\"3\"}}', 4),
(166, 23, 'created_at', 'timestamp', 'Ngày tạo', 0, 0, 1, 0, 0, 0, '{}', 7),
(167, 23, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 1, 0, 0, 0, '{}', 8),
(169, 22, 'media', 'media_picker', 'Hình ảnh', 0, 0, 1, 1, 1, 1, '{\"max\":1000,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"description\":\"D\\u00f9ng \\u0111\\u1ec3 nh\\u1eadp h\\u00ecnh \\u1ea3nh.\"}', 14),
(170, 17, 'statusproblem', 'select_dropdown', 'Statusproblem', 0, 1, 1, 1, 1, 1, '{\"default\":\"\\u0110ang C\\u1eadp Nh\\u1eadt\",\"options\":{\"\\u0110ang C\\u1eadp Nh\\u1eadt\":\"\\u0110ang C\\u1eadp Nh\\u1eadt\",\"\\u0110\\u00e3 Ho\\u00e0n Th\\u00e0nh\":\"\\u0110\\u00e3 Ho\\u00e0n Th\\u00e0nh\"},\"description\":\"D\\u00f9ng \\u0111\\u1ec3 xem tr\\u1ea1ng th\\u00e1i truy\\u1ec7n \\u0110ang c\\u1eadp nh\\u1eadt v\\u00e0 \\u0110\\u00e3 ho\\u00e0n th\\u00e0nh.\",\"display\":{\"width\":\"3\"}}', 7),
(171, 17, 'follow', 'text', 'Follow', 0, 0, 0, 0, 0, 0, '{}', 16),
(172, 23, 'body', 'rich_text_box', 'Giới thiệu', 0, 0, 1, 1, 1, 1, '{\"description\":\"D\\u00f9ng \\u0111\\u1ec3 nh\\u1eadp gi\\u1edbi thi\\u1ec7u.\"}', 6),
(173, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(174, 25, 'bookstory_id', 'text', 'Bookstory Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(175, 25, 'chapter_id', 'text', 'Chapter Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(176, 25, 'error_type', 'select_dropdown', 'Error Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Thi\\u1ebfu chapter\",\"1\":\"Up sai truy\\u1ec7n\",\"2\":\"L\\u1ed7i kh\\u00e1c\",\"3\":\"\\u1ea2nh l\\u1ed7i, kh\\u00f4ng th\\u1ea5y \\u1ea3nh\",\"4\":\"Chapter b\\u1ecb tr\\u00f9ng\",\"5\":\"Chapter ch\\u01b0a d\\u1ecbch\",\"6\":\"Up sai truy\\u1ec7n\"}}', 6),
(177, 25, 'body', 'text', 'Body', 1, 1, 1, 1, 1, 1, '{}', 7),
(178, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 8),
(179, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(180, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(181, 26, 'publisher_id', 'text', 'Publisher Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(182, 26, 'bookstory_id', 'text', 'Bookstory Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(183, 26, 'chapter_id', 'text', 'Chapter Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(184, 26, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 0, 0, 0, '{}', 8),
(185, 26, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 1, 0, 0, 0, '{}', 9),
(186, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(187, 27, 'bookstory_id', 'text', 'Bookstory Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(188, 27, 'view', 'text', 'Lượt xem', 0, 1, 1, 1, 1, 1, '{}', 4),
(189, 27, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 0, 0, 0, '{}', 5),
(190, 27, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 1, 0, 0, 0, '{}', 6),
(191, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(192, 28, 'publisher_id', 'text', 'Publisher Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(193, 28, 'bookstory_id', 'text', 'Bookstory Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(194, 28, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 0, 0, 0, '{}', 6),
(195, 28, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 0, 0, 0, 0, '{}', 7),
(196, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(197, 29, 'publisher_id', 'text', 'Publisher Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(198, 29, 'bookstory_id', 'text', 'Bookstory Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(199, 29, 'chapter_id', 'text', 'Chapter Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(200, 29, 'body', 'text', 'Nội dung', 0, 1, 1, 1, 1, 1, '{}', 8),
(201, 29, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 0, 0, 0, '{}', 9),
(202, 29, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 0, 0, 0, 0, '{}', 10),
(203, 29, 'pivot_table_comment_belongsto_bookstory_relationship', 'relationship', 'Tên truyện', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Bookstory\",\"table\":\"bookstory\",\"type\":\"belongsTo\",\"column\":\"bookstory_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"bookstory\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(204, 29, 'pivot_table_comment_belongsto_publisher_relationship', 'relationship', 'Tên người dùng', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Publisher\",\"table\":\"publisher\",\"type\":\"belongsTo\",\"column\":\"publisher_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"bookstory\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(205, 29, 'pivot_table_comment_belongsto_chapter_relationship', 'relationship', 'Tên chapter', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Chapter\",\"table\":\"chapter\",\"type\":\"belongsTo\",\"column\":\"chapter_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"bookstory\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(206, 27, 'pivot_table_view_belongsto_bookstory_relationship', 'relationship', 'Tên truyện', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Bookstory\",\"table\":\"bookstory\",\"type\":\"belongsTo\",\"column\":\"bookstory_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"bookstory\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(208, 28, 'pivot_table_follow_belongsto_publisher_relationship', 'relationship', 'Tên người dùng', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Publisher\",\"table\":\"publisher\",\"type\":\"belongsTo\",\"column\":\"publisher_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"bookstory\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(209, 28, 'pivot_table_follow_belongsto_bookstory_relationship', 'relationship', 'Tên truyện', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Bookstory\",\"table\":\"bookstory\",\"type\":\"belongsTo\",\"column\":\"bookstory_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"bookstory\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(210, 26, 'pivot_table_readhistory_belongsto_publisher_relationship', 'relationship', 'Tên người dùng', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Publisher\",\"table\":\"publisher\",\"type\":\"belongsTo\",\"column\":\"publisher_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"bookstory\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(211, 26, 'pivot_table_readhistory_belongsto_bookstory_relationship', 'relationship', 'Tên truyện', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Bookstory\",\"table\":\"bookstory\",\"type\":\"belongsTo\",\"column\":\"bookstory_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"bookstory\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(212, 26, 'pivot_table_readhistory_belongsto_chapter_relationship', 'relationship', 'Tên chapter', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Chapter\",\"table\":\"chapter\",\"type\":\"belongsTo\",\"column\":\"chapter_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"bookstory\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(213, 25, 'pivot_table_error_belongsto_bookstory_relationship', 'relationship', 'Tên truyện', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Bookstory\",\"table\":\"bookstory\",\"type\":\"belongsTo\",\"column\":\"bookstory_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"bookstory\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(214, 25, 'pivot_table_error_belongsto_chapter_relationship', 'relationship', 'Tên chapter', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Chapter\",\"table\":\"chapter\",\"type\":\"belongsTo\",\"column\":\"chapter_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"bookstory\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(215, 22, 'view', 'text', 'View', 1, 1, 1, 0, 0, 0, '{}', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'Tài khoản quản trị', 'Tài khoản quản trị', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-11-16 00:53:05', '2024-01-13 09:41:30'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(3, 'roles', 'roles', 'Chức vụ', 'Chức vụ', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-11-16 00:53:05', '2024-01-13 09:42:19'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-11-16 00:53:20', '2024-02-26 09:43:47'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-11-16 00:53:20', '2024-02-29 09:38:53'),
(16, 'category', 'category', 'thể loại', 'thể loại', 'voyager-categories', 'App\\Models\\Category', NULL, '\\App\\Http\\Controllers\\admin\\categoryController', NULL, 1, 0, '{\"order_column\":\"slug\",\"order_display_column\":\"slug\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-01-08 19:19:02', '2024-01-24 13:54:34'),
(17, 'bookstory', 'bookstory', 'Truyện', 'Truyện', 'voyager-book', 'App\\Models\\Bookstory', NULL, '\\App\\Http\\Controllers\\admin\\bookstoryController', NULL, 1, 0, '{\"order_column\":\"slug\",\"order_display_column\":\"slug\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-01-09 02:56:42', '2024-01-25 09:19:21'),
(20, 'pivote_bookstory_category', 'pivote-bookstory-category', 'Liên kết giữa truyện và thể loại', 'Liên kết giữa truyện và thể loại', 'voyager-heart', 'App\\Models\\Pivote_Bookstory_Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-01-10 07:56:49', '2024-01-10 08:00:26'),
(22, 'chapter', 'chapter', 'Chapter', 'Chapter', 'voyager-file-text', 'App\\Models\\Chapter', NULL, '\\App\\Http\\Controllers\\admin\\chapterController', NULL, 1, 0, '{\"order_column\":\"slug\",\"order_display_column\":\"slug\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-01-11 07:27:08', '2024-03-02 03:54:57'),
(23, 'publisher', 'publisher', 'Tài khoản người dùng', 'Tài khoản người dùng', 'voyager-people', 'App\\Models\\Publisher', NULL, '\\App\\Http\\Controllers\\admin\\publisherController', NULL, 1, 0, '{\"order_column\":\"email\",\"order_display_column\":\"email\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-01-13 09:31:02', '2024-03-13 03:16:37'),
(25, 'pivot_table_error', 'pivot-table-error', 'Thông tin về lỗi', 'Thông tin về lỗi', 'voyager-warning', 'App\\Models\\Pivot_table_error', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-02-27 09:58:37', '2024-02-27 13:19:19'),
(26, 'pivot_table_readhistory', 'pivot-table-readhistory', 'Thông tin về lịch sử đọc', 'Thông tin về lịch sử đọc', 'voyager-documentation', 'App\\Models\\Pivot_table_readhistory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-02-27 10:04:07', '2024-02-27 13:06:44'),
(27, 'pivot_table_view', 'pivot-table-view', 'Thông tin về lượt xem', 'Thông tin về lượt xem', 'voyager-eye', 'App\\Models\\Pivot_table_view', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-02-27 10:07:55', '2024-02-27 10:26:08'),
(28, 'pivot_table_follow', 'pivot-table-follow', 'Thông tin về lượt theo dõi', 'Thông tin về lượt theo dõi', 'voyager-bookmark', 'App\\Models\\Pivot_table_follow', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-02-27 10:09:18', '2024-02-27 13:06:13'),
(29, 'pivot_table_comment', 'pivot-table-comment', 'Thông tin về lượt bình luận', 'Thông tin về lượt bình luận', 'voyager-chat', 'App\\Models\\Pivot_table_comment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-02-27 10:10:08', '2024-02-27 13:04:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-11-16 00:53:05', '2023-11-16 00:53:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Bảng điều khiển', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2023-11-16 00:53:05', '2024-01-13 09:43:11', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2023-11-16 00:53:05', '2024-01-08 18:09:33', 'voyager.media.index', NULL),
(3, 1, 'Tài khoản quản trị', '', '_self', 'voyager-person', '#000000', NULL, 3, '2023-11-16 00:53:05', '2024-01-13 09:41:41', 'voyager.users.index', 'null'),
(4, 1, 'Chức vụ', '', '_self', 'voyager-lock', '#000000', NULL, 2, '2023-11-16 00:53:05', '2024-01-13 09:41:58', 'voyager.roles.index', 'null'),
(5, 1, 'Công cụ(Tools)', '', '_self', 'voyager-tools', '#000000', NULL, 7, '2023-11-16 00:53:05', '2024-02-27 10:10:36', NULL, ''),
(6, 1, 'Menu tùy chỉnh(Menu Builder)', '', '_self', 'voyager-list', '#000000', 5, 1, '2023-11-16 00:53:05', '2024-01-09 07:28:15', 'voyager.menus.index', 'null'),
(7, 1, 'Cơ sở dữ liệu(Database)', '', '_self', 'voyager-data', '#000000', 5, 2, '2023-11-16 00:53:05', '2024-01-09 07:28:54', 'voyager.database.index', 'null'),
(8, 1, 'La bàn(Compass)', '', '_self', 'voyager-compass', '#000000', 5, 3, '2023-11-16 00:53:05', '2024-01-09 07:29:10', 'voyager.compass.index', 'null'),
(9, 1, 'Bánh mì(BREAD)', '', '_self', 'voyager-bread', '#000000', 5, 4, '2023-11-16 00:53:05', '2024-01-09 07:29:26', 'voyager.bread.index', 'null'),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 19, 3, '2023-11-16 00:53:20', '2024-01-10 07:57:41', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 19, 1, '2023-11-16 00:53:20', '2024-01-10 07:57:41', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, 19, 2, '2023-11-16 00:53:20', '2024-01-10 07:57:41', 'voyager.pages.index', NULL),
(16, 1, 'Thể loại', '', '_self', 'voyager-categories', '#000000', 18, 2, '2024-01-08 19:19:02', '2024-01-13 09:31:15', 'voyager.category.index', 'null'),
(17, 1, 'Truyện', '', '_self', 'voyager-book', NULL, 18, 3, '2024-01-09 02:56:42', '2024-01-13 09:31:15', 'voyager.bookstory.index', NULL),
(18, 1, 'Tiện ích', '', '_self', 'voyager-window-list', '#000000', NULL, 5, '2024-01-09 07:23:45', '2024-01-09 07:24:41', NULL, ''),
(19, 1, 'Khác', '', '_self', 'voyager-archive', '#000000', NULL, 6, '2024-01-09 07:31:06', '2024-02-27 09:58:58', NULL, ''),
(22, 1, 'Liên kết giữa truyện và thể loại', '', '_self', 'voyager-heart', NULL, 18, 10, '2024-01-10 07:56:49', '2024-02-27 13:27:40', 'voyager.pivote-bookstory-category.index', NULL),
(24, 1, 'Chapter', '', '_self', 'voyager-file-text', NULL, 18, 4, '2024-01-11 07:27:08', '2024-01-13 09:31:15', 'voyager.chapter.index', NULL),
(25, 1, 'Tài khoản người dùng', '', '_self', 'voyager-people', '#000000', 18, 1, '2024-01-13 09:31:03', '2024-01-13 09:42:33', 'voyager.publisher.index', 'null'),
(26, 1, 'Thông tin về lỗi', '', '_self', 'voyager-exclamation', NULL, 18, 5, '2024-02-27 09:58:37', '2024-02-27 13:27:40', 'voyager.pivot-table-error.index', NULL),
(27, 1, 'Thông tin về lịch sử đọc', '', '_self', 'voyager-documentation', NULL, 18, 9, '2024-02-27 10:04:07', '2024-02-27 13:27:40', 'voyager.pivot-table-readhistory.index', NULL),
(28, 1, 'Thông tin về lượt xem', '', '_self', 'voyager-eye', NULL, 18, 7, '2024-02-27 10:07:55', '2024-02-27 13:27:40', 'voyager.pivot-table-view.index', NULL),
(29, 1, 'Thông tin về lượt theo dõi', '', '_self', 'voyager-bookmark', NULL, 18, 8, '2024-02-27 10:09:18', '2024-02-27 13:27:40', 'voyager.pivot-table-follow.index', NULL),
(30, 1, 'Thông tin về lượt bình luận', '', '_self', 'voyager-chat', NULL, 18, 6, '2024-02-27 10:10:08', '2024-02-27 13:27:40', 'voyager.pivot-table-comment.index', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages\\March2024\\BHC6KVkx74C7kquqg3DS.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2023-11-16 00:53:20', '2024-03-02 02:44:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(2, 'browse_bread', NULL, '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(3, 'browse_database', NULL, '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(4, 'browse_media', NULL, '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(5, 'browse_compass', NULL, '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(6, 'browse_menus', 'menus', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(7, 'read_menus', 'menus', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(8, 'edit_menus', 'menus', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(9, 'add_menus', 'menus', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(10, 'delete_menus', 'menus', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(11, 'browse_roles', 'roles', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(12, 'read_roles', 'roles', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(13, 'edit_roles', 'roles', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(14, 'add_roles', 'roles', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(15, 'delete_roles', 'roles', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(16, 'browse_users', 'users', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(17, 'read_users', 'users', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(18, 'edit_users', 'users', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(19, 'add_users', 'users', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(20, 'delete_users', 'users', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(21, 'browse_settings', 'settings', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(22, 'read_settings', 'settings', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(23, 'edit_settings', 'settings', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(24, 'add_settings', 'settings', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(25, 'delete_settings', 'settings', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(26, 'browse_categories', 'categories', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(27, 'read_categories', 'categories', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(28, 'edit_categories', 'categories', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(29, 'add_categories', 'categories', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(30, 'delete_categories', 'categories', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(31, 'browse_posts', 'posts', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(32, 'read_posts', 'posts', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(33, 'edit_posts', 'posts', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(34, 'add_posts', 'posts', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(35, 'delete_posts', 'posts', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(36, 'browse_pages', 'pages', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(37, 'read_pages', 'pages', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(38, 'edit_pages', 'pages', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(39, 'add_pages', 'pages', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(40, 'delete_pages', 'pages', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(51, 'browse_category', 'category', '2024-01-08 19:19:02', '2024-01-08 19:19:02'),
(52, 'read_category', 'category', '2024-01-08 19:19:02', '2024-01-08 19:19:02'),
(53, 'edit_category', 'category', '2024-01-08 19:19:02', '2024-01-08 19:19:02'),
(54, 'add_category', 'category', '2024-01-08 19:19:02', '2024-01-08 19:19:02'),
(55, 'delete_category', 'category', '2024-01-08 19:19:02', '2024-01-08 19:19:02'),
(56, 'browse_bookstory', 'bookstory', '2024-01-09 02:56:42', '2024-01-09 02:56:42'),
(57, 'read_bookstory', 'bookstory', '2024-01-09 02:56:42', '2024-01-09 02:56:42'),
(58, 'edit_bookstory', 'bookstory', '2024-01-09 02:56:42', '2024-01-09 02:56:42'),
(59, 'add_bookstory', 'bookstory', '2024-01-09 02:56:42', '2024-01-09 02:56:42'),
(60, 'delete_bookstory', 'bookstory', '2024-01-09 02:56:42', '2024-01-09 02:56:42'),
(71, 'browse_pivote_bookstory_category', 'pivote_bookstory_category', '2024-01-10 07:56:49', '2024-01-10 07:56:49'),
(72, 'read_pivote_bookstory_category', 'pivote_bookstory_category', '2024-01-10 07:56:49', '2024-01-10 07:56:49'),
(73, 'edit_pivote_bookstory_category', 'pivote_bookstory_category', '2024-01-10 07:56:49', '2024-01-10 07:56:49'),
(74, 'add_pivote_bookstory_category', 'pivote_bookstory_category', '2024-01-10 07:56:49', '2024-01-10 07:56:49'),
(75, 'delete_pivote_bookstory_category', 'pivote_bookstory_category', '2024-01-10 07:56:49', '2024-01-10 07:56:49'),
(81, 'browse_chapter', 'chapter', '2024-01-11 07:27:08', '2024-01-11 07:27:08'),
(82, 'read_chapter', 'chapter', '2024-01-11 07:27:08', '2024-01-11 07:27:08'),
(83, 'edit_chapter', 'chapter', '2024-01-11 07:27:08', '2024-01-11 07:27:08'),
(84, 'add_chapter', 'chapter', '2024-01-11 07:27:08', '2024-01-11 07:27:08'),
(85, 'delete_chapter', 'chapter', '2024-01-11 07:27:08', '2024-01-11 07:27:08'),
(86, 'browse_publisher', 'publisher', '2024-01-13 09:31:02', '2024-01-13 09:31:02'),
(87, 'read_publisher', 'publisher', '2024-01-13 09:31:02', '2024-01-13 09:31:02'),
(88, 'edit_publisher', 'publisher', '2024-01-13 09:31:03', '2024-01-13 09:31:03'),
(89, 'add_publisher', 'publisher', '2024-01-13 09:31:03', '2024-01-13 09:31:03'),
(90, 'delete_publisher', 'publisher', '2024-01-13 09:31:03', '2024-01-13 09:31:03'),
(91, 'browse_pivot_table_error', 'pivot_table_error', '2024-02-27 09:58:37', '2024-02-27 09:58:37'),
(92, 'read_pivot_table_error', 'pivot_table_error', '2024-02-27 09:58:37', '2024-02-27 09:58:37'),
(93, 'edit_pivot_table_error', 'pivot_table_error', '2024-02-27 09:58:37', '2024-02-27 09:58:37'),
(94, 'add_pivot_table_error', 'pivot_table_error', '2024-02-27 09:58:37', '2024-02-27 09:58:37'),
(95, 'delete_pivot_table_error', 'pivot_table_error', '2024-02-27 09:58:37', '2024-02-27 09:58:37'),
(96, 'browse_pivot_table_readhistory', 'pivot_table_readhistory', '2024-02-27 10:04:07', '2024-02-27 10:04:07'),
(97, 'read_pivot_table_readhistory', 'pivot_table_readhistory', '2024-02-27 10:04:07', '2024-02-27 10:04:07'),
(98, 'edit_pivot_table_readhistory', 'pivot_table_readhistory', '2024-02-27 10:04:07', '2024-02-27 10:04:07'),
(99, 'add_pivot_table_readhistory', 'pivot_table_readhistory', '2024-02-27 10:04:07', '2024-02-27 10:04:07'),
(100, 'delete_pivot_table_readhistory', 'pivot_table_readhistory', '2024-02-27 10:04:07', '2024-02-27 10:04:07'),
(101, 'browse_pivot_table_view', 'pivot_table_view', '2024-02-27 10:07:55', '2024-02-27 10:07:55'),
(102, 'read_pivot_table_view', 'pivot_table_view', '2024-02-27 10:07:55', '2024-02-27 10:07:55'),
(103, 'edit_pivot_table_view', 'pivot_table_view', '2024-02-27 10:07:55', '2024-02-27 10:07:55'),
(104, 'add_pivot_table_view', 'pivot_table_view', '2024-02-27 10:07:55', '2024-02-27 10:07:55'),
(105, 'delete_pivot_table_view', 'pivot_table_view', '2024-02-27 10:07:55', '2024-02-27 10:07:55'),
(106, 'browse_pivot_table_follow', 'pivot_table_follow', '2024-02-27 10:09:18', '2024-02-27 10:09:18'),
(107, 'read_pivot_table_follow', 'pivot_table_follow', '2024-02-27 10:09:18', '2024-02-27 10:09:18'),
(108, 'edit_pivot_table_follow', 'pivot_table_follow', '2024-02-27 10:09:18', '2024-02-27 10:09:18'),
(109, 'add_pivot_table_follow', 'pivot_table_follow', '2024-02-27 10:09:18', '2024-02-27 10:09:18'),
(110, 'delete_pivot_table_follow', 'pivot_table_follow', '2024-02-27 10:09:18', '2024-02-27 10:09:18'),
(111, 'browse_pivot_table_comment', 'pivot_table_comment', '2024-02-27 10:10:08', '2024-02-27 10:10:08'),
(112, 'read_pivot_table_comment', 'pivot_table_comment', '2024-02-27 10:10:08', '2024-02-27 10:10:08'),
(113, 'edit_pivot_table_comment', 'pivot_table_comment', '2024-02-27 10:10:08', '2024-02-27 10:10:08'),
(114, 'add_pivot_table_comment', 'pivot_table_comment', '2024-02-27 10:10:08', '2024-02-27 10:10:08'),
(115, 'delete_pivot_table_comment', 'pivot_table_comment', '2024-02-27 10:10:08', '2024-02-27 10:10:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pivote_bookstory_category`
--

CREATE TABLE `pivote_bookstory_category` (
  `id` int UNSIGNED NOT NULL,
  `bookstory_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pivote_bookstory_category`
--

INSERT INTO `pivote_bookstory_category` (`id`, `bookstory_id`, `category_id`) VALUES
(12, 11, 36),
(13, 11, 38),
(14, 11, 43),
(15, 11, 20),
(16, 11, 24),
(17, 11, 29),
(18, 11, 33),
(19, 29, 38),
(20, 29, 40),
(21, 29, 43),
(22, 29, 52),
(23, 29, 19),
(24, 30, 41),
(25, 30, 22),
(26, 30, 35),
(27, 31, 15),
(28, 31, 40),
(29, 31, 41),
(30, 31, 52),
(31, 31, 55),
(32, 31, 60),
(33, 32, 20),
(34, 32, 21),
(35, 32, 22),
(36, 32, 29),
(37, 32, 41),
(38, 32, 52),
(39, 33, 20),
(40, 33, 29),
(41, 33, 36),
(42, 33, 53),
(43, 34, 19),
(44, 34, 36),
(45, 34, 38),
(46, 34, 43),
(47, 35, 16),
(48, 35, 19),
(49, 35, 29),
(50, 35, 36),
(51, 35, 38),
(52, 35, 43),
(53, 36, 21),
(54, 36, 29),
(55, 36, 36),
(56, 37, 15),
(57, 37, 21),
(58, 37, 22),
(59, 37, 29),
(60, 37, 39),
(61, 37, 52),
(62, 38, 20),
(63, 38, 24),
(64, 38, 31),
(65, 38, 43),
(66, 38, 36),
(67, 38, 58),
(68, 39, 20),
(69, 39, 29),
(70, 39, 38),
(71, 39, 43),
(72, 39, 45),
(73, 39, 48),
(74, 40, 19),
(75, 40, 22),
(76, 40, 31),
(77, 40, 41),
(78, 40, 52),
(79, 41, 19),
(80, 41, 24),
(81, 41, 43),
(82, 41, 52),
(83, 41, 58),
(84, 41, 60),
(85, 42, 21),
(86, 42, 29),
(87, 42, 33),
(88, 42, 36),
(89, 42, 38),
(90, 42, 43),
(91, 43, 20),
(92, 43, 29),
(93, 43, 40),
(94, 44, 21),
(95, 44, 29),
(96, 44, 36),
(97, 44, 41),
(98, 45, 29),
(99, 45, 36),
(100, 45, 45),
(101, 45, 58),
(102, 46, 20),
(103, 46, 29),
(104, 46, 35),
(105, 46, 39),
(106, 46, 48),
(107, 47, 21),
(108, 47, 22),
(109, 47, 29),
(110, 47, 39),
(111, 48, 31),
(112, 48, 36),
(113, 48, 41),
(114, 48, 43),
(115, 49, 21),
(116, 49, 29),
(117, 49, 41),
(118, 50, 21),
(119, 50, 24),
(120, 50, 33),
(121, 50, 36),
(122, 50, 40),
(123, 50, 60),
(124, 51, 22),
(125, 51, 33),
(126, 51, 37),
(127, 51, 52),
(128, 52, 10),
(129, 52, 21),
(130, 52, 29),
(131, 52, 33),
(132, 52, 35),
(133, 52, 38),
(134, 52, 39),
(135, 52, 41),
(136, 53, 20),
(137, 53, 24),
(138, 53, 29),
(139, 53, 35),
(140, 53, 38),
(141, 53, 39),
(142, 53, 36),
(143, 54, 20),
(144, 54, 24),
(145, 54, 29),
(146, 54, 31),
(147, 54, 35),
(148, 54, 36),
(149, 54, 39),
(150, 54, 41),
(151, 54, 52),
(152, 55, 14),
(153, 55, 20),
(154, 55, 29),
(155, 55, 31),
(156, 55, 35),
(157, 55, 38),
(158, 55, 43),
(159, 55, 48),
(160, 56, 20),
(161, 56, 31),
(162, 56, 7),
(163, 56, 14),
(164, 56, 29),
(165, 56, 52),
(166, 56, 36),
(167, 56, 42),
(168, 57, 21),
(169, 57, 33),
(170, 57, 7),
(171, 57, 25),
(172, 57, 36),
(173, 57, 38),
(174, 57, 53),
(175, 57, 41),
(176, 58, 20),
(177, 58, 29),
(178, 58, 31),
(179, 58, 36),
(180, 58, 51),
(181, 59, 20),
(182, 59, 24),
(183, 59, 29),
(184, 59, 40),
(185, 60, 19),
(186, 60, 36),
(187, 60, 38),
(188, 60, 40),
(189, 60, 41),
(190, 60, 43),
(191, 60, 58),
(192, 61, 20),
(193, 61, 24),
(194, 61, 36),
(195, 61, 38),
(196, 61, 43),
(197, 62, 20),
(198, 62, 29),
(199, 62, 36),
(200, 62, 41),
(201, 63, 20),
(202, 63, 24),
(203, 63, 29),
(204, 63, 36),
(205, 63, 53),
(206, 64, 20),
(207, 64, 31),
(208, 64, 36),
(209, 64, 38),
(210, 64, 58),
(211, 65, 16),
(212, 65, 20),
(213, 65, 31),
(214, 65, 36),
(215, 66, 20),
(216, 66, 29),
(217, 66, 35),
(218, 66, 48),
(219, 67, 20),
(220, 67, 24),
(221, 67, 29),
(222, 67, 36),
(223, 67, 38),
(224, 67, 48),
(225, 67, 58),
(226, 68, 20),
(227, 68, 24),
(228, 68, 29),
(229, 68, 39),
(230, 68, 43),
(231, 69, 20),
(232, 69, 24),
(233, 69, 29),
(234, 69, 36),
(235, 69, 38),
(236, 69, 45),
(237, 69, 54),
(238, 70, 19),
(239, 70, 31),
(240, 70, 36),
(241, 70, 38),
(242, 70, 40),
(243, 70, 52),
(244, 70, 58),
(245, 71, 20),
(246, 71, 21),
(247, 71, 24),
(248, 71, 29),
(249, 71, 36),
(250, 71, 40),
(251, 71, 41),
(252, 72, 20),
(253, 72, 36),
(254, 72, 38),
(255, 73, 14),
(256, 73, 20),
(257, 73, 29),
(258, 73, 36),
(259, 73, 38),
(260, 73, 40),
(261, 74, 20),
(262, 74, 36),
(263, 74, 38),
(264, 75, 20),
(265, 75, 29),
(266, 75, 36),
(267, 75, 38),
(268, 75, 43),
(269, 76, 20),
(270, 76, 24),
(271, 76, 31),
(272, 76, 43),
(273, 76, 36),
(274, 76, 48),
(275, 76, 58),
(276, 77, 14),
(277, 77, 20),
(278, 77, 36),
(279, 77, 38),
(280, 78, 20),
(281, 78, 29),
(282, 78, 36),
(283, 78, 38),
(284, 78, 58),
(285, 79, 20),
(286, 79, 24),
(287, 79, 29),
(288, 79, 33),
(289, 79, 40),
(290, 79, 48),
(291, 80, 21),
(292, 80, 24),
(293, 80, 29),
(294, 80, 33),
(295, 80, 36),
(296, 80, 38),
(297, 80, 45),
(298, 81, 20),
(299, 81, 36),
(300, 81, 38),
(301, 81, 43),
(302, 82, 20),
(303, 82, 24),
(304, 82, 29),
(305, 82, 48),
(306, 83, 20),
(307, 83, 29),
(308, 83, 35),
(309, 83, 36),
(310, 84, 20),
(311, 84, 29),
(312, 84, 35),
(313, 84, 36),
(314, 84, 39),
(315, 84, 48),
(316, 85, 20),
(317, 85, 24),
(318, 85, 29),
(319, 85, 36),
(320, 85, 48),
(321, 86, 20),
(322, 86, 29),
(323, 86, 36),
(324, 86, 38);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pivot_table_comment`
--

CREATE TABLE `pivot_table_comment` (
  `id` int UNSIGNED NOT NULL,
  `publisher_id` int DEFAULT NULL,
  `bookstory_id` int DEFAULT NULL,
  `chapter_id` int DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pivot_table_comment`
--

INSERT INTO `pivot_table_comment` (`id`, `publisher_id`, `bookstory_id`, `chapter_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 4, 38, NULL, 'woaaaaaaaaaa', '2024-01-26 07:30:21', '2024-01-26 07:30:21'),
(2, 4, 38, 1, 'hay', '2024-01-26 07:59:30', '2024-01-26 07:59:30'),
(11, 4, 38, NULL, 'good!!!', '2024-01-26 08:43:11', '2024-01-26 08:43:11'),
(56, 6, 38, NULL, 'tuyệt', '2024-01-27 04:16:25', '2024-01-27 04:16:25'),
(59, 6, 38, 14, 'đỉnh', '2024-01-27 04:47:37', '2024-01-27 04:47:37'),
(60, 6, 39, NULL, 'hóng', '2024-01-27 04:51:33', '2024-01-27 04:51:33'),
(61, 6, 38, 14, 'main mạnh', '2024-01-27 04:52:02', '2024-01-27 04:52:02'),
(62, 6, 38, 14, 'check', '2024-01-27 05:22:59', '2024-01-27 05:22:59'),
(63, 6, 38, NULL, 'maybe', '2024-01-27 05:23:10', '2024-01-27 05:23:10'),
(64, 4, 38, 13, 'Quá hay', '2024-01-29 06:48:53', '2024-01-29 06:48:53'),
(65, 4, 38, 1, 'success', '2024-01-29 09:57:14', '2024-01-29 09:57:14'),
(66, 4, 39, NULL, 'đợi chờ là hạnh phúc', '2024-02-01 07:52:08', '2024-02-01 07:52:08'),
(67, 4, 38, 13, 'Quá đỉnh', '2024-02-01 07:53:12', '2024-02-01 07:53:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pivot_table_error`
--

CREATE TABLE `pivot_table_error` (
  `id` int UNSIGNED NOT NULL,
  `bookstory_id` int DEFAULT NULL,
  `chapter_id` int DEFAULT NULL,
  `error_type` int NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pivot_table_error`
--

INSERT INTO `pivot_table_error` (`id`, `bookstory_id`, `chapter_id`, `error_type`, `body`, `created_at`, `updated_at`) VALUES
(26, 48, 16, 3, 'test', '2024-02-27 13:12:51', '2024-02-27 13:12:51'),
(28, 48, 16, 2, 'tttt', '2024-02-27 13:19:43', '2024-02-27 13:19:43'),
(29, 48, NULL, 2, 'rrrr', '2024-02-27 13:20:08', '2024-02-27 13:20:08'),
(30, 44, NULL, 1, 'rrrr', '2024-03-02 01:30:11', '2024-03-02 01:30:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pivot_table_follow`
--

CREATE TABLE `pivot_table_follow` (
  `id` int UNSIGNED NOT NULL,
  `publisher_id` int DEFAULT NULL,
  `bookstory_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pivot_table_follow`
--

INSERT INTO `pivot_table_follow` (`id`, `publisher_id`, `bookstory_id`, `created_at`, `updated_at`) VALUES
(80, 3, 38, '2024-01-25 09:52:39', '2024-01-25 09:52:39'),
(81, 3, 36, '2024-01-25 09:52:44', '2024-01-25 09:52:44'),
(82, 3, 39, '2024-01-25 10:23:51', '2024-01-25 10:23:51'),
(86, 5, 38, '2024-01-26 02:41:18', '2024-01-26 02:41:18'),
(87, 5, 31, '2024-01-26 02:43:32', '2024-01-26 02:43:32'),
(88, 6, 38, '2024-01-26 03:37:00', '2024-01-26 03:37:00'),
(89, 6, 34, '2024-01-26 03:37:08', '2024-01-26 03:37:08'),
(90, 6, 40, '2024-01-26 03:37:13', '2024-01-26 03:37:13'),
(91, 6, 39, '2024-01-26 04:02:16', '2024-01-26 04:02:16'),
(92, 6, 33, '2024-01-26 04:02:28', '2024-01-26 04:02:28'),
(93, 4, 39, '2024-01-26 07:20:18', '2024-01-26 07:20:18'),
(94, 4, 38, '2024-01-26 07:20:37', '2024-01-26 07:20:37'),
(95, 4, 42, '2024-01-29 06:50:18', '2024-01-29 06:50:18'),
(96, 4, 41, '2024-01-29 06:50:23', '2024-01-29 06:50:23'),
(97, 4, 34, '2024-01-29 06:50:33', '2024-01-29 06:50:33'),
(98, 4, 36, '2024-01-29 06:50:38', '2024-01-29 06:50:38'),
(99, 4, 35, '2024-01-29 06:51:50', '2024-01-29 06:51:50'),
(100, 4, 29, '2024-01-30 04:02:18', '2024-01-30 04:02:18'),
(101, 4, 48, '2024-02-01 11:25:25', '2024-02-01 11:25:25'),
(102, 7, 38, '2024-02-02 11:09:04', '2024-02-02 11:09:04'),
(103, 4, 55, '2024-03-02 01:52:40', '2024-03-02 01:52:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pivot_table_readhistory`
--

CREATE TABLE `pivot_table_readhistory` (
  `id` int UNSIGNED NOT NULL,
  `publisher_id` int DEFAULT NULL,
  `bookstory_id` int DEFAULT NULL,
  `chapter_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pivot_table_readhistory`
--

INSERT INTO `pivot_table_readhistory` (`id`, `publisher_id`, `bookstory_id`, `chapter_id`, `created_at`, `updated_at`) VALUES
(1, 4, 38, 13, '2024-02-01 08:46:17', '2024-02-01 09:46:19'),
(2, 4, 48, 16, '2024-02-01 11:24:26', '2024-02-01 11:25:37'),
(3, 7, 38, 14, '2024-02-02 11:08:38', '2024-02-02 11:08:41'),
(4, 7, 48, 15, '2024-02-02 11:10:19', '2024-02-02 11:10:19'),
(5, 6, 38, 1, '2024-02-02 14:09:35', '2024-02-02 14:09:50'),
(6, 4, 53, 30, '2024-03-06 06:31:50', '2024-03-06 06:31:50'),
(7, 4, 81, 25, '2024-03-06 06:32:02', '2024-03-06 06:32:02'),
(8, 4, 80, 51, '2024-03-13 09:22:21', '2024-03-22 02:37:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pivot_table_view`
--

CREATE TABLE `pivot_table_view` (
  `id` int UNSIGNED NOT NULL,
  `bookstory_id` int DEFAULT NULL,
  `view` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pivot_table_view`
--

INSERT INTO `pivot_table_view` (`id`, `bookstory_id`, `view`, `created_at`, `updated_at`) VALUES
(1, 38, 21, '2024-02-01 08:46:17', '2024-02-01 09:46:19'),
(2, 48, 5, '2024-02-01 11:24:26', '2024-02-01 11:25:37'),
(3, 38, 5, '2024-02-02 11:08:38', '2024-02-02 14:09:50'),
(4, 48, 1, '2024-02-02 11:10:19', '2024-02-02 11:10:19'),
(5, 38, 1, '2024-02-26 06:45:47', '2024-02-26 06:45:47'),
(6, 48, 1, '2024-02-26 06:46:03', '2024-02-26 06:46:03'),
(7, 48, 7, '2024-02-27 08:39:02', '2024-02-27 13:21:05'),
(8, 38, 1, '2024-02-27 12:53:00', '2024-02-27 12:53:00'),
(9, 38, 1, '2024-02-29 06:41:50', '2024-02-29 06:41:50'),
(10, 38, 16, '2024-03-02 03:26:27', '2024-03-02 03:30:40'),
(11, 53, 3, '2024-03-06 06:31:50', '2024-03-06 06:48:16'),
(12, 81, 2, '2024-03-06 06:32:02', '2024-03-06 06:32:08'),
(13, 83, 6, '2024-03-06 06:32:48', '2024-03-06 06:36:25'),
(14, 53, 1, '2024-03-10 04:04:16', '2024-03-10 04:04:16'),
(15, 56, 1, '2024-03-10 04:08:47', '2024-03-10 04:08:47'),
(16, 67, 5, '2024-03-11 15:05:46', '2024-03-11 15:08:07'),
(17, 11, 3, '2024-03-11 15:16:30', '2024-03-11 15:16:38'),
(18, 86, 2, '2024-03-12 08:15:17', '2024-03-12 08:35:21'),
(19, 38, 22, '2024-03-12 08:28:07', '2024-03-12 08:35:48'),
(20, 54, 8, '2024-03-12 10:25:26', '2024-03-12 10:31:20'),
(21, 80, 4, '2024-03-13 03:02:05', '2024-03-13 10:05:04'),
(22, 38, 4, '2024-03-13 03:41:37', '2024-03-13 10:17:08'),
(23, 38, 2, '2024-03-14 03:20:25', '2024-03-14 03:23:30'),
(24, 56, 1, '2024-03-14 04:00:55', '2024-03-14 04:00:55'),
(25, 38, 43, '2024-03-22 00:46:53', '2024-03-22 01:59:16'),
(26, 80, 6, '2024-03-22 02:37:54', '2024-03-22 03:04:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post2.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-11-16 00:53:20', '2024-01-29 06:31:14'),
(2, 1, 2, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n<h2>We can use all kinds of format!</h2>\r\n<p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-11-16 00:53:20', '2024-01-16 01:56:18'),
(3, 1, 2, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-11-16 00:53:20', '2024-01-16 01:56:31'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-11-16 00:53:20', '2023-11-16 00:53:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `publisher`
--

CREATE TABLE `publisher` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `email`, `avatar`, `password`, `body`, `created_at`, `updated_at`) VALUES
(1, 'trung kien', 'kiennttna3@gmail.com', 'publisher/defaultlogo.png', '$2y$12$K3w12XjAKGHaFoKiA2G0J.T7xlrFsnyJs4ebLiCbjLdITq8aaqaXK', NULL, '2024-01-15 07:54:46', '2024-01-23 06:33:59'),
(2, 'khánh', 'khanh@gmail.com', 'publisher/defaultlogo.png', '$2y$12$K3w12XjAKGHaFoKiA2G0J.T7xlrFsnyJs4ebLiCbjLdITq8aaqaXK', NULL, '2024-01-16 02:26:39', '2024-01-23 06:27:00'),
(3, 'hoàng', 'hoang@gmail.com', 'publisher/defaultlogo.png', '$2y$12$K3w12XjAKGHaFoKiA2G0J.T7xlrFsnyJs4ebLiCbjLdITq8aaqaXK', NULL, '2024-01-23 03:47:56', '2024-01-23 06:53:04'),
(4, 'hoàng123', 'hoang1@gmail.com', 'publisher/1706867520.jpg', '$2y$12$K3w12XjAKGHaFoKiA2G0J.T7xlrFsnyJs4ebLiCbjLdITq8aaqaXK', 'hello', '2024-01-23 03:50:33', '2024-02-02 10:55:29'),
(5, 'hoàng', 'hoang2@gmail.com', 'publisher/defaultlogo.png', '$2y$12$K3w12XjAKGHaFoKiA2G0J.T7xlrFsnyJs4ebLiCbjLdITq8aaqaXK', NULL, '2024-01-23 06:34:59', '2024-01-23 06:34:59'),
(6, 'hoàng', 'hoang3@gmail.com', 'publisher/defaultlogo.png', '$2y$12$K3w12XjAKGHaFoKiA2G0J.T7xlrFsnyJs4ebLiCbjLdITq8aaqaXK', NULL, '2024-01-23 07:06:26', '2024-01-23 07:06:26'),
(7, 'khánh Trần', 'khanhtran@ictu.edu.vn', 'publisher/defaultlogo.png', '$2y$12$l1w256tgAkEBkq./aiyayeS80DYNZocgFaG2W.cj3cc9GiXUJMxvG', '<p>hello</p>', '2024-02-02 11:03:33', '2024-02-02 11:07:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-11-16 00:53:05', '2023-11-16 00:53:05'),
(2, 'user', 'Normal User', '2023-11-16 00:53:05', '2023-11-16 00:53:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2023-11-16 00:53:20', '2023-11-16 00:53:20'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2023-11-16 00:53:20', '2023-11-16 00:53:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$58zZExooosqvbXdKcjYjiucdztd564RYIW4FiRKEpmfhknFvifMGu', '8YQM1u6QjwbOTg4atea1DCYb6BlZtPOyc0ZodH8prCWEaACol6NuJk63yRUd', '{\"locale\":\"vi\"}', '2023-11-16 00:53:20', '2024-01-07 18:07:40'),
(2, 1, 'trung kiên', 'kiennttna3@gmail.com', 'users\\January2024\\mBf9x1JyzbwftX0nRCY7.jpg', NULL, '$2y$12$8XAxh/UzXLUaM/IUT4sPousRTxUfxRA3tGZ1wpf8ZxAKSCufNPjZW', NULL, '{\"locale\":\"vi\"}', '2024-01-09 03:01:40', '2024-01-09 03:01:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bookstory`
--
ALTER TABLE `bookstory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Chỉ mục cho bảng `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Chỉ mục cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `pivote_bookstory_category`
--
ALTER TABLE `pivote_bookstory_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pivot_table_comment`
--
ALTER TABLE `pivot_table_comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pivot_table_error`
--
ALTER TABLE `pivot_table_error`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pivot_table_follow`
--
ALTER TABLE `pivot_table_follow`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pivot_table_readhistory`
--
ALTER TABLE `pivot_table_readhistory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pivot_table_view`
--
ALTER TABLE `pivot_table_view`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Chỉ mục cho bảng `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bookstory`
--
ALTER TABLE `bookstory`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT cho bảng `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pivote_bookstory_category`
--
ALTER TABLE `pivote_bookstory_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT cho bảng `pivot_table_comment`
--
ALTER TABLE `pivot_table_comment`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `pivot_table_error`
--
ALTER TABLE `pivot_table_error`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `pivot_table_follow`
--
ALTER TABLE `pivot_table_follow`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT cho bảng `pivot_table_readhistory`
--
ALTER TABLE `pivot_table_readhistory`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `pivot_table_view`
--
ALTER TABLE `pivot_table_view`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
