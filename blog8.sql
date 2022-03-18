-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 02, 2022 lúc 01:34 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blog8`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Thiết bị khác', 'thiet-bi-khac', '2022-01-11 01:01:48', '2022-01-17 22:27:14'),
(2, 'Lap top', 'lap-top', '2022-01-11 01:01:48', '2022-01-17 02:49:52'),
(3, 'Camera', 'camera', '2022-01-11 01:01:48', '2022-01-17 02:50:15'),
(4, 'Điện thoại', 'dien-thoai', '2022-01-11 01:01:48', '2022-01-17 02:47:59'),
(5, 'Đồng hồ', 'dong-ho', '2022-01-11 01:01:48', '2022-01-17 02:50:28'),
(7, 'Loa', 'loa', '2022-01-11 01:01:48', '2022-01-17 02:51:24'),
(8, 'Tai nghe', 'tai-nghe', '2022-01-11 01:01:48', '2022-01-17 02:51:42'),
(14, 'Ti vi', 'ti-vi', '2022-01-17 04:54:54', '2022-01-17 04:54:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn Chiến', 'user@gmail.com', '0354716528', 'Nice', '2022-01-17 01:26:52', '2022-01-17 01:26:52'),
(2, 'Nguyễn Văn Chiến', 'admin@gmail.com', '0354716528', 'Good shop', '2022-02-25 19:16:52', '2022-02-25 19:16:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `discounts`
--

INSERT INTO `discounts` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expiry_date`) VALUES
(1, 'OFF20', 'percent', '20.00', '100.00', '2022-01-18 05:43:48', NULL, '2022-01-18 05:44:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_12_23_023623_create_categories_table', 1),
(7, '2021_12_23_023642_create_products_table', 1),
(8, '2021_12_23_041517_create_discounts_table', 1),
(9, '2021_12_25_075730_add_exprity_date_to_discounts_table', 1),
(10, '2021_12_26_035255_create_orders_table', 1),
(11, '2021_12_26_035355_create_shippings_table', 1),
(12, '2021_12_26_035447_create_trancisions_table', 1),
(13, '2021_12_26_040150_create_order_items_table', 1),
(14, '2021_12_27_042043_create_sessions_table', 1),
(15, '2022_01_01_142445_create_contacts_table', 1),
(16, '2022_01_01_151353_create_reviews_table', 1),
(17, '2022_01_01_152627_add_status_to_order_item', 1),
(19, '2022_01_12_073612_create_subcategories_table', 2),
(20, '2022_01_16_040805_create_proflies_table', 3),
(21, '2022_01_16_074411_add_subcategori_to_product', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `fisrtname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','deliverd','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `fisrtname`, `lastname`, `phone`, `email`, `line1`, `line2`, `city`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`) VALUES
(8, 2, '470.00', '0.00', '98.70', '568.70', 'chien', 'nguyen', '0354716528', 'user@gmail.com', '111111', '1232131413', 'Hà Nội', 'VN', '10000', 'ordered', 0, '2022-01-17 02:16:40', '2022-01-17 02:16:40'),
(9, 2, '474.00', '0.00', '99.54', '573.54', 'chien', 'nguyen', '0354716528', 'user@gmail.com', '111111', '1232131413', 'Hà Nội', 'VN', '10000', 'ordered', 0, '2022-01-17 22:14:00', '2022-01-17 22:14:00'),
(12, 2, '474.00', '0.00', '99.54', '573.54', 'chien', 'nguyen', '0354716528', 'user@gmail.com', '111111', '1232131413', 'Hà Nội', 'VN', '10000', 'ordered', 0, '2022-01-17 22:53:38', '2022-01-17 22:53:38'),
(13, 2, '455.00', '0.00', '95.55', '550.55', 'chien', 'nguyen', '0354716528', 'user@gmail.com', '111111', '1232131413', 'Hà Nội', 'VN', '10000', 'ordered', 0, '2022-01-17 22:56:47', '2022-01-17 22:56:47'),
(14, 1, '474.00', '0.00', '99.54', '573.54', 'chien van', 'nguyen', '01234567', 'admin@gmail.com', '111111', '22222', 'Hà Nội', 'VN', '10000', 'ordered', 0, '2022-02-25 19:18:20', '2022-02-25 19:18:20'),
(15, 2, '474.00', '0.00', '99.54', '573.54', 'chien', 'nguyen', '0354716528', 'admin@gmail.com', '111111', '1232131413', 'Hà Nội', 'VN', '10000', 'ordered', 0, '2022-02-28 03:46:07', '2022-02-28 03:46:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `rstatus`, `created_at`, `updated_at`) VALUES
(2, 5, 9, '474.00', 1, 1, '2022-01-17 22:14:00', '2022-01-17 22:14:35'),
(5, 5, 12, '474.00', 1, 1, '2022-01-17 22:53:38', '2022-01-17 22:55:17'),
(6, 11, 13, '455.00', 1, 1, '2022-01-17 22:56:47', '2022-01-17 22:57:18'),
(7, 5, 14, '474.00', 1, 0, '2022-02-25 19:18:20', '2022-02-25 19:18:20'),
(8, 5, 15, '474.00', 1, 0, '2022-02-28 03:46:07', '2022-02-28 03:46:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(10,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quatity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `featured`, `quatity`, `image`, `list_image`, `category_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(5, 'Tay cầm chơi game IPEGA pg-9129 ', 'tay-cam-choi-game-ipega-pg-9129', 'Giới thiệu Tay cầm chơi game IPEGA pg-9129 không dây kết nối Bluetooth cho iOS Androi -dc4159\nTay cầm chơi game IPEGA pg-9129 không dây kết nối Bluetooth cho iOS Androi\nChức năng tùy chỉnh / Phím điều khiển linh hoạt / Phím nhạy cảm', 'Mô tả\nNhững đặc điểm chính:\n• Sản phẩm áp dụng chương trình Bluetooth 4.0, hỗ trợ kết nối trực tiếp thiết bị iOS và phát trực tiếp\n• Kết nối Bluetooth hỗ trợ TV thông minh / hộp set-top / máy tính PC\n• Với nút tăng tốc turbo, bạn có thể đặt 8 nút hành động\n• Bạn có thể tải xuống APP độc quyền từ hướng dẫn sử dụng để đặt nút tùy chỉnh, sản phẩm được trang bị giá đỡ kính thiên văn chuyên dụng cho điện thoại di động\n• Chiều dài kéo dài tối đa là 86mm', '474.00', '102.00', 0, 118, 'digital_18.jpg', NULL, 1, '2022-01-11 01:01:48', '2022-01-17 22:28:56', NULL),
(6, 'Android Tivi Sony 4K 55 inch KD-55X80J ', 'android-tivi-sony-4k-55-inch-kd-55x80j', 'Viền màn hình mỏng ấn tượng, phong cách hiện đại sang trọng\nTivi LED Sony KD-55X80J được thiết kế dạng màn hình phẳng hiện đại, viền màn hình cực mỏng nếu nhìn từ xa bạn sẽ cảm thấy gần như là không viền tạo cảm giác chân thực khi xem. ', 'Repudiandae reprehenderit sint esse animi. Libero at consequatur consectetur aut numquam tenetur distinctio. Sint asperiores quaerat et assumenda. Omnis pariatur ex tempore saepe ullam distinctio dignissimos. Veniam quas qui odio omnis illo sed odit. Aut inventore neque sit ducimus maxime nulla. Qui quos amet impedit ipsum dolores est omnis quasi.', '445.00', '240.00', 0, 133, 'digital_9.jpg', NULL, 14, '2022-01-11 01:01:48', '2022-01-17 04:56:10', NULL),
(8, 'Điện thoại Samsung Galaxy A32', 'dien-thoai-samsung-galaxy-a32', 'Cấu hình Điện thoại Samsung Galaxy A32\n\nMàn hình:\n\nSuper AMOLED6.4\"Full HD+\nHệ điều hành:\n\nAndroid 11\nCamera sau:\n\nChính 64 MP & Phụ 8 MP, 5MP, 5MP\nCamera trước:\n\n20 MP', 'Thiết kế mới lạ, sang trọng nhưng không kém phần hấp dẫn\nSamsung Galaxy A32 có ngôn ngữ thiết kế cao cấp, sang trọng mặt lưng nổi bật cụm 4 camera cực chất không quá hào nhoáng nhưng vẫn đủ để giúp người dùng nổi bật giữa đám đông.', '155.00', '202.00', 0, 158, 'digital_1.jpg', NULL, 4, '2022-01-11 01:01:48', '2022-01-17 22:28:11', NULL),
(9, 'Điện thoại Oppo Q10', 'dien-thoai-oppo-q10', 'Incidunt porro suscipit ea quod quibusdam modi. Autem unde officiis odit doloribus libero. Laboriosam earum impedit ad qui numquam provident ullam dolorem. Voluptas iure labore saepe.', 'Impedit sunt quia ex est omnis temporibus qui quia. Aliquid natus eligendi sit id quo alias voluptatem ut. Consequatur deserunt nesciunt minus rem possimus dignissimos. Temporibus magnam blanditiis nihil reprehenderit. Necessitatibus et sunt est. Dolores excepturi laudantium qui eaque ea animi dolores. Blanditiis id reiciendis molestiae mollitia aliquam. Autem asperiores harum distinctio qui. Suscipit vero inventore omnis sed voluptatem recusandae ab.', '67.00', '130.00', 0, 137, 'digital_2.jpg', NULL, 4, '2022-01-11 01:01:48', '2022-01-17 04:57:12', NULL),
(10, 'Camera Full HD AX90', 'camera-full-hd-ax90', 'Iure exercitationem magni modi in. Nihil commodi quam dicta. Rem qui voluptas ipsa error itaque et. Vero sunt qui aspernatur enim amet.', 'Alias repudiandae ab qui sit a id architecto. Qui ipsum ipsa molestias ipsam deserunt explicabo iste. Quia qui nobis numquam sunt. Sunt ut quidem ut magni voluptas maiores. Aliquam occaecati non et nesciunt debitis officia ducimus. Quasi rerum ex deserunt eum et tempora saepe enim. Non suscipit blanditiis eum blanditiis. Deleniti aut modi placeat animi ratione nostrum fugiat.', '109.00', '78.00', 0, 170, 'digital_22.jpg', NULL, 3, '2022-01-11 01:01:48', '2022-01-17 04:58:15', NULL),
(11, 'Đồng hồ bàn Smart ha21b', 'dong-ho-ban-smart-ha21b', 'Quisquam odit exercitationem quo consequatur. Hic velit optio alias consequuntur velit et dolores doloribus. Eos nesciunt magni et nobis mollitia.', 'Ad deleniti officiis et iste quia. Ut cum et commodi quia aliquid ea. Rem modi corporis autem quia facilis et officiis dolores. Reprehenderit delectus et fugit facilis tempora aliquid. Quod quas neque assumenda perferendis voluptates ipsum enim. Reprehenderit rerum aut quo quibusdam magnam qui. Voluptatem doloribus laborum ut molestiae aut. Sed accusamus provident alias impedit beatae. Labore beatae eos labore mollitia nisi ab. Incidunt voluptatem quis omnis blanditiis sint.', '455.00', '127.00', 0, 145, 'digital_16.jpg', NULL, 5, '2022-01-11 01:01:48', '2022-01-17 05:02:44', NULL),
(12, 'Sam Sung Galaxy Note10 +', 'sam-sung-galaxy-note10', 'Ut molestias quisquam blanditiis sed ipsa qui. Et cupiditate voluptatibus reiciendis non sapiente recusandae temporibus. Esse delectus nam nam tempora quam natus voluptatum.', 'Non in quaerat consequuntur temporibus sed. Doloremque rerum eius repudiandae nihil nihil. Ratione iure enim fugit sed. Eos magnam qui velit quia eius. Quo doloribus quia doloremque blanditiis possimus. Quis nostrum modi est optio et quia deserunt praesentium. Molestias placeat recusandae dolorem.', '18.00', '157.00', 0, 187, 'digital_5.jpg', NULL, 4, '2022-01-11 01:01:48', '2022-01-17 05:03:18', NULL),
(14, 'Kính 3D', 'kinh-3d', 'Deserunt qui voluptas ullam sed adipisci. Nisi accusamus aut est ut. Voluptatem non accusantium dolores quibusdam. Enim temporibus deserunt veniam aliquam est eveniet sed culpa.', 'Ut accusamus quo non a eum quaerat. Vel nemo ea nisi sequi facere laudantium. Esse et dolorem repellendus. Eos et saepe hic sapiente. Et molestias maxime qui. Quis recusandae dolorem qui aut inventore. Consequatur odio labore et laboriosam facere commodi veritatis esse. Eligendi molestiae rerum dolores sed. Soluta dolores ipsam sint sit eum voluptas aut molestiae. Quo natus recusandae suscipit.', '212.00', '463.00', 0, 132, 'digital_12.jpg', NULL, 8, '2022-01-11 01:01:48', '2022-01-17 22:30:01', NULL),
(15, 'Ti vi Toshiba 4K X62008', 'ti-vi-toshiba-4k-x62008', 'Occaecati qui est ex. Eaque officiis ducimus modi sit ex. Minus facere doloribus repellendus enim doloremque fugiat.', 'Non facere magni rem odit nihil accusamus fugit. Nemo tempora accusamus et expedita modi ut. Nesciunt rerum dicta reprehenderit repudiandae est doloribus modi. Fuga nobis praesentium in iure suscipit qui. Quibusdam dignissimos fugit unde et et voluptatem quae. Unde rerum eos voluptatem qui omnis. Ipsum alias neque tempore unde. Omnis praesentium omnis maiores dignissimos in. Temporibus animi aliquid debitis ipsa asperiores voluptatibus.', '196.00', '391.00', 0, 100, 'digital_19.jpg', NULL, 14, '2022-01-11 01:01:48', '2022-01-17 05:03:57', NULL),
(16, 'Lap top ASUS xa5200 Full HD+', 'lap-top-asus-xa5200-full-hd', 'Aut et consequatur similique laborum dolores ut. Distinctio beatae exercitationem cumque repellendus. Est rerum explicabo consequatur doloribus. Fuga sint accusamus quaerat qui.', 'Ullam voluptatibus facere quam delectus exercitationem ratione. Quae voluptatem voluptas id tenetur. Ut odit quis enim. Eveniet praesentium qui dolores blanditiis. Accusantium quia nam veniam quia. Et quis maiores consequatur vitae dolorem. Odio dolor minima quo occaecati fugiat. Et in et asperiores accusantium amet voluptate id. Fugiat earum dolorum ea nulla inventore. Et doloremque quod voluptatum reiciendis sapiente. Rerum consequatur numquam mollitia distinctio temporibus et.', '452.00', '389.00', 0, 125, 'digital_4.jpg', NULL, 2, '2022-01-11 01:01:48', '2022-01-17 05:01:58', NULL),
(17, 'Loa Bluetooh HZ120', 'loa-bluetooh-hz120', 'Incidunt quaerat minima soluta id. Repudiandae velit porro quo dicta sed.', 'Tenetur aut error dolor deserunt voluptate pariatur ut non. Asperiores illum sint minima. Est excepturi dolores pariatur repudiandae. Quia ut ut unde aut. Nemo nulla consectetur ducimus dolorem placeat quae. Non dolore aliquid laborum numquam enim. Quasi quae accusamus id labore nemo. Sint nihil qui vero id sapiente voluptatem quis consequatur. Corrupti placeat recusandae voluptas deleniti sequi minima. Non sed quisquam quisquam est et vel. Quasi molestias autem recusandae impedit adipisci.', '29.00', '177.00', 0, 155, 'digital_17.jpg', NULL, 7, '2022-01-11 01:01:48', '2022-01-17 05:01:27', NULL),
(18, 'Tai nghe không dây AXX2', 'tai-nghe-khong-day-axx2', 'Magnam quisquam non quidem exercitationem et omnis. Repellendus quod enim maiores dicta ipsa necessitatibus. Similique in animi itaque consectetur est. Enim suscipit impedit quibusdam eligendi.', 'Fugiat unde quia et. Perspiciatis officia quos id fugiat officiis. Voluptas quaerat quidem dolorem est dicta qui fugiat omnis. Aut autem tempore hic neque porro animi ducimus. Dolores ipsum repellendus et. Reiciendis debitis alias voluptate. Veritatis aut sit ea voluptatem earum iste. Odit voluptas voluptate voluptate explicabo delectus aspernatur est. Aut quia pariatur voluptates repellendus sed saepe voluptatem. Pariatur et quasi repellendus ipsam et et. Magni accusamus amet rem sunt iure.', '70.00', '34.00', 0, 126, 'digital_13.jpg', NULL, 8, '2022-01-11 01:01:48', '2022-01-17 05:00:09', NULL),
(19, 'Camera Full HD proHAC', 'camera-full-hd-prohac', 'Distinctio est hic et cupiditate nesciunt rem occaecati. Non adipisci earum quas. Recusandae quibusdam tempore assumenda adipisci voluptatum ipsum. Veritatis ea quo aut accusantium laboriosam.', 'Aut ad reiciendis sed tempore saepe. Maiores sed expedita totam eum cumque. Vitae voluptatem laborum et voluptatem et earum. Praesentium blanditiis vel aut illum aut ipsam at adipisci. Saepe dignissimos facere libero expedita nesciunt aspernatur. At cum similique et quos fuga. Qui cupiditate totam omnis soluta sed. Laborum ut voluptatem nihil voluptates rerum odit culpa. Sint quae culpa eum. Dicta quaerat tempora recusandae non occaecati labore.', '40.00', '302.00', 0, 200, 'digital_7.jpg', NULL, 3, '2022-01-11 01:01:48', '2022-01-17 04:59:35', NULL),
(20, 'Lap top Dell 9HXA 200', 'lap-top-dell-9hxa-200', 'Libero dolores amet harum molestiae. Molestiae blanditiis non minus eaque similique est. Numquam dolore ea eius. Accusamus animi itaque quidem ut.', 'Occaecati nihil voluptas ratione accusamus accusamus. Earum dolor dolores iusto. Quis ea ea assumenda est et qui omnis quibusdam. Architecto aut et iure quo. Voluptates repudiandae blanditiis sunt est impedit. Sed iusto et illum corporis. Fugit qui quia at fuga qui. Ut qui voluptatem eos sit eum. Consectetur atque est suscipit dolores. Hic animi laudantium qui aut exercitationem aliquid.', '493.00', '179.00', 0, 118, 'digital_14.jpg', NULL, 2, '2022-01-11 01:01:48', '2022-01-17 04:59:04', NULL),
(23, 'Ti vi Bravia 4k', 'ti-vi-bravia-4k', 'Nice', 'nice', '100.00', '99.00', 0, 1, '1642477036.jpg', ',16424770360.jpg,16424770361.jpg', 14, '2022-01-17 20:37:16', '2022-01-17 20:37:16', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `proflies`
--

CREATE TABLE `proflies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `proflies`
--

INSERT INTO `proflies` (`id`, `user_id`, `phone`, `email`, `line1`, `city`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 2, '0232322', 'q@gmail.com', '1111', 'HN', 'VN', '10000', '2022-01-16 04:41:23', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_items_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_items_id`, `created_at`, `updated_at`) VALUES
(3, 4, 'Good Product', 2, '2022-01-17 22:14:25', '2022-01-17 22:14:25'),
(4, 4, 'Good Product', 2, '2022-01-17 22:14:27', '2022-01-17 22:14:27'),
(5, 4, 'Good Product', 2, '2022-01-17 22:14:30', '2022-01-17 22:14:30'),
(6, 4, 'Good Product', 2, '2022-01-17 22:14:33', '2022-01-17 22:14:33'),
(7, 4, 'Good Product', 2, '2022-01-17 22:14:34', '2022-01-17 22:14:34'),
(8, 4, 'Good Product', 2, '2022-01-17 22:14:35', '2022-01-17 22:14:35'),
(10, 3, 'Good Product', 5, '2022-01-17 22:55:17', '2022-01-17 22:55:17'),
(11, 2, 'Good', 6, '2022-01-17 22:57:18', '2022-01-17 22:57:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3EK51369zBU6U1WNSN9GOZFulrVwx8Ra6VYMbYZz', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMVFqZUg4bUxRTjBVV2hTcWlERGszNmhXNzVMZ05hckVBVmt2Q1dNNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjU6InV0eXBlIjtzOjM6IlVTUiI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRTM3VaYzQ4d3ZZdk16Y1E2d1QvMTIuMDlNdGtRMmhOeENCVDQ1Ym5rSlNIZGFvUVdrOS5QbSI7fQ==', 1646047191);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `fisrtname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trancisions`
--

CREATE TABLE `trancisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('code','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('chưa giải quyết','chấp thuận','từ chối','hoàn tiền') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'chưa giải quyết',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `trancisions`
--

INSERT INTO `trancisions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'code', 'chưa giải quyết', '2022-01-17 01:36:01', '2022-01-17 01:36:01'),
(2, 2, 2, 'code', 'chưa giải quyết', '2022-01-17 01:38:19', '2022-01-17 01:38:19'),
(3, 2, 3, 'code', 'chưa giải quyết', '2022-01-17 01:44:07', '2022-01-17 01:44:07'),
(4, 2, 4, 'code', 'chưa giải quyết', '2022-01-17 01:49:29', '2022-01-17 01:49:29'),
(5, 2, 5, 'code', 'chưa giải quyết', '2022-01-17 01:50:50', '2022-01-17 01:50:50'),
(6, 2, 6, 'code', 'chưa giải quyết', '2022-01-17 01:57:12', '2022-01-17 01:57:12'),
(7, 2, 7, 'code', 'chưa giải quyết', '2022-01-17 02:07:29', '2022-01-17 02:07:29'),
(8, 2, 8, 'code', 'chưa giải quyết', '2022-01-17 02:16:40', '2022-01-17 02:16:40'),
(9, 2, 9, 'code', 'chưa giải quyết', '2022-01-17 22:14:00', '2022-01-17 22:14:00'),
(10, 1, 10, 'code', 'chưa giải quyết', '2022-01-17 22:16:23', '2022-01-17 22:16:23'),
(11, 2, 11, 'code', 'chưa giải quyết', '2022-01-17 22:22:02', '2022-01-17 22:22:02'),
(12, 2, 12, 'code', 'chưa giải quyết', '2022-01-17 22:53:38', '2022-01-17 22:53:38'),
(13, 2, 13, 'code', 'chưa giải quyết', '2022-01-17 22:56:47', '2022-01-17 22:56:47'),
(14, 1, 14, 'code', 'chưa giải quyết', '2022-02-25 19:18:20', '2022-02-25 19:18:20'),
(15, 2, 15, 'code', 'chưa giải quyết', '2022-02-28 03:46:07', '2022-02-28 03:46:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for user and cumstomer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'chiench', 'admin@gmail.com', NULL, '$2y$10$wWjb8yN/HjhSCD8x25wYau.yFf086etUz1mvc59POZlfOSzBX387W', NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-01-11 01:52:47', '2022-01-11 01:52:47'),
(2, 'user', 'user@gmail.com', NULL, '$2y$10$S3uZc48wvYvMzcQ6wT/12.09MtkQ2hNxCBT45bnkJSHdaoQWk9.Pm', NULL, NULL, NULL, NULL, NULL, 'USR', '2022-01-11 01:53:24', '2022-01-11 01:53:24');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discounts_code_unique` (`code`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Chỉ mục cho bảng `proflies`
--
ALTER TABLE `proflies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proflies_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_items_id_foreign` (`order_items_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `trancisions`
--
ALTER TABLE `trancisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trancisions_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `proflies`
--
ALTER TABLE `proflies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `trancisions`
--
ALTER TABLE `trancisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `proflies`
--
ALTER TABLE `proflies`
  ADD CONSTRAINT `proflies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_items_id_foreign` FOREIGN KEY (`order_items_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `trancisions`
--
ALTER TABLE `trancisions`
  ADD CONSTRAINT `trancisions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
