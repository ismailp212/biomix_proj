-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 07:08 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `argan_therapies`
--

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `actual_price` decimal(10,2) DEFAULT NULL,
  `old_price` decimal(10,2) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `name`, `description`, `actual_price`, `old_price`, `photo`, `created_at`, `updated_at`) VALUES
(37, 'Hisoym Farms', 'Miel cru + délicatement filtré', '199.00', '299.00', 'collcetions_images/OkkvUnPY9g6a63B6im8pDDA3lgGN2WMrbWrVPl1M.webp', NULL, NULL),
(38, 'ajana argans', 'Huile extraite de l\'arganier naturel', '499.00', '599.00', 'collcetions_images/YLSZakD6tlX3325KeGsoV6igBTjIs3o7Km5sysLo.jpg', NULL, NULL),
(39, 'ALOUE VERA', 'ALOUE VERA Crème', '199.00', '249.00', 'collcetions_images/ImfW4GQM2NutvSPTlSUeZ9cV1Jh6flDM2CI9xBF7.webp', NULL, NULL),
(40, 'Groupe du désert', 'une enssemble du désert', '399.00', '449.00', 'collcetions_images/5jhkV7e50ECZf4plilRrNU1rbUPPamE7OCTR3nv1.jpg', NULL, NULL),
(41, 'chia seeds', 'Graines de chia', '249.00', '399.00', 'collcetions_images/ojm78BWdwbfl4rfS5CLhJ8HDbJ3rcNjOcObzLN7U.webp', NULL, NULL),
(42, 'miel pure', '5 type differents du miel', '799.00', '849.00', 'collcetions_images/PGmk2Cf8SDJ3XZgyyqxsEHd2xJn5kAa0pgrIJUXe.jpg', NULL, NULL),
(43, 'baraka', '2 type du Huile de noix de coco', '399.00', '449.00', 'collcetions_images/xaTLLPHJHXntdDSuisSm5YRHX0gqqTPn4DItNWtF.webp', NULL, NULL),
(44, 'blueverry miel', '4 type du miel', '749.00', '999.00', 'collcetions_images/rbGt0wvjN1PONBBWcr6sMVyd1dnAPwXXMzWUUscE.webp', NULL, NULL),
(45, 'body butter', '5 types du beur du cops', '249.00', '449.00', 'collcetions_images/OJ2XDXOiYHvIijTmiHRilT6bQXYRiKGIhIEdE6If.webp', NULL, NULL),
(46, 'argan collection', 'la meilleur pack d\' argane', '649.00', '799.00', 'collcetions_images/ufjRTARShBwkijNsDfIWeUKUM0c3fBuIMR9dsrvx.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_phone`) VALUES
(456, 'John Doe', '1234567890'),
(567, 'Jane Doe', '0987654321'),
(678, 'Bob Smith', '5555555555'),
(1349, 'zo3bol', '0766833902'),
(1660, 'reda bezzar', '77272727727'),
(1721, 'test', '8888'),
(1827, 'zo3bol', '0766833902'),
(2208, 'walid', '878960760'),
(3333, 'karim', '4394959690'),
(3919, 'jwi7d', '0677783932'),
(4119, 'achraf', '677228833'),
(5183, 'adil', '1929394059'),
(6042, 'mohamed', '0677228833'),
(6212, 'test', '33333333'),
(7909, 'moi', '99999999'),
(8970, 'mohamed', '766110718'),
(9730, 'OUbzza', '0677783931');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(23, '2023_04_26_230253_create_user_table', 1),
(24, '2023_04_26_231659_create_customers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nouveau_produit`
--

CREATE TABLE `nouveau_produit` (
  `id_prod` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `old_price` float NOT NULL,
  `actual_price` float NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nouveau_produit`
--

INSERT INTO `nouveau_produit` (`id_prod`, `titre`, `description`, `category`, `old_price`, `actual_price`, `image`) VALUES
(17, 'gfytfy', 'gf rdvsyvs rd', 'Miel', 667, 99, 'images/bG3cUCaVILiFffiQjyw6kkxc7efGRJypD0DWw9xw.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `seller` varchar(255) NOT NULL,
  `paid` varchar(255) NOT NULL,
  `order_date` date NOT NULL,
  `price` double(8,2) NOT NULL,
  `Qantity` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `customer_id`, `customer_phone`, `customer_name`, `seller`, `paid`, `order_date`, `price`, `Qantity`, `updated_at`) VALUES
(123, 'Product 1', 456, '1234567890', 'John Doe', 'Seller 1', 'Paid', '2023-04-29', 9.99, 3, '2023-05-03 14:47:18'),
(345, 'Product 3', 678, '5555555555', 'Bob Smith', 'Seller 3', 'NotPaid', '2023-04-27', 29.99, 0, '2023-05-03 14:46:25'),
(2981, 'zaarat honey', 5183, '1929394059', 'adil', 'mahdi', 'Paid', '2023-04-29', 500.00, 0, NULL),
(6145, 'smn', 2208, '878960760', 'walid', 'NASSIMA', 'NotPaid', '2023-06-05', 89.99, 12, NULL),
(7833, 'Lkhbbiza', 1349, '0766833902', 'zo3bol', 'NASSIMA', 'Paid', '2023-06-08', 49.99, 45, NULL),
(9461, 'orange honey', 3333, '4394959690', 'karim', 'mahdi', 'NotPaid', '2023-04-29', 500.00, 0, NULL),
(9966, 'Lkhbbiza', 9730, '0677783931', 'OUbzza', 'fati', 'Paid', '2023-05-31', 15.99, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_type` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `seller` varchar(255) NOT NULL,
  `paid` varchar(255) NOT NULL,
  `order_date` date NOT NULL,
  `price` float NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_type`, `customer_id`, `customer_phone`, `customer_name`, `seller`, `paid`, `order_date`, `price`, `updated_at`) VALUES
(5969, 'Complete(service)', 6042, '0677228833', 'mohamed', 'HMIDOX', 'Paid', '2023-05-15', 99222, '2023-06-09 16:06:15'),
(9538, 'Complete(service)', 1827, '0766833902', 'zo3bol', 'NASSIMA', 'NotPaid', '2023-05-24', 49.99, '2023-05-30 19:46:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nouveau_produit`
--
ALTER TABLE `nouveau_produit`
  ADD PRIMARY KEY (`id_prod`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9731;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `nouveau_produit`
--
ALTER TABLE `nouveau_produit`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9967;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9539;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
