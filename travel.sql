
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reads` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `excerpt`, `image`, `description`, `category_id`, `created_at`, `updated_at`, `reads`) VALUES
(1, 'Egypt history', 'egypt-history', 'Step back in time and explore the incredible history of Ancient Egypt.', 'blog/images/vSJn8Ip5tV1iepuQcLjqAXRfYfY2Wziz1WYYuIuD.jpg', '<p>tep back in time and explore the incredible history of Ancient Egypt.</p>', 1, '2024-09-04 16:43:59', '2024-09-07 07:49:15', 4),
(2, 'Top 10 Adventure Destinations', 'top-10-adventure-destinations', 'Discover the top 10 destinations for adrenaline seekers.', 'blog/images/OKfBtdOFxXt7hlPPSMHcP0wVUYfOzfRMadihtXiN.png', '<p>Explore thrilling adventures from skydiving in Dubai to trekking in Patagonia.</p>', 2, '2024-09-07 04:46:47', '2024-09-07 04:46:47', 0),
(3, 'Cultural Treasures Around the World', 'cultural-treasures-around-the-world', 'Dive into the cultural wonders across the globe.', 'blog/images/gQbOIEf7h5pEwbdUQs0ZRaDee2d7o1u32QstqF9A.png', '<p>From the ancient pyramids of Egypt to the vibrant festivals in India.From the ancient pyramids of Egypt to the vibrant festivals in India.From the ancient pyramids of Egypt to the vibrant festivals in India.</p>', 3, '2024-09-07 04:50:33', '2024-09-07 04:50:33', 0),
(4, 'Top 5 Relaxing Beach Destinations', 'top-5-relaxing-beach-destinations', 'Discover the world\\\'s most serene beaches where you can relax and unwind.', 'blog/images/mKl3XfTir3VhSzY0neC3FaqxhlC6moU1sWd41OJl.png', '<p>Escape to these breathtaking beaches around the world, where crystal clear waters and soft sands create the perfect setting for a relaxing vacation.</p>', 4, '2024-09-07 04:53:59', '2024-09-07 09:02:18', 1),
(5, 'Walk Through Ancient Rome', 'walk-through-ancient-rome', 'Take a journey through the heart of Ancient Rome and explore its iconic landmarks.', 'blog/images/YkruGSTFRVTlBYcM33HQqsvIxrVEk6N2m3O4DV6B.png', '<p>From the<strong> Colosseum </strong>to the Roman Forum, Ancient Rome offers a rich history that comes alive as you walk through its ancient streets.</p>', 5, '2024-09-07 04:55:24', '2024-09-07 09:02:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number_phone` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `travel_package_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `email`, `number_phone`, `date`, `travel_package_id`, `created_at`, `updated_at`) VALUES
(1, 'Benbashr sadsdsd', 'm@m.m', '322222', '2024-09-25', 1, '2024-09-04 16:55:07', '2024-09-04 16:55:07'),
(2, 'Benbashr sadsdsd', 'm@m.m', '322222', '2024-09-04', 1, '2024-09-05 09:17:34', '2024-09-05 09:17:34'),
(3, 'Ali', 'ali@md.m', '011221122', '2024-09-07', 6, '2024-09-07 09:01:14', '2024-09-07 09:01:14'),
(4, 'مستخدم واحد', 'user11@gmail.com', '0777777777', '2024-09-06', 5, '2024-09-07 09:01:50', '2024-09-07 09:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Bali', 'bali', '2024-09-04 16:43:32', '2024-09-04 16:43:32'),
(2, 'Adventure', 'adventure', '2024-09-07 04:41:11', '2024-09-07 04:41:11'),
(3, 'Cultural', 'cultural', '2024-09-07 04:41:23', '2024-09-07 04:41:23'),
(4, 'Relaxation', 'relaxation', '2024-09-07 04:41:43', '2024-09-07 04:41:43'),
(5, 'Historical', 'historical', '2024-09-07 04:41:55', '2024-09-07 04:41:55'),
(6, 'Vication', 'vication', '2024-09-07 04:42:05', '2024-09-07 04:42:05');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `travel_package_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `images`, `travel_package_id`, `created_at`, `updated_at`) VALUES
(1, 'Travel is very Fantastiucaa', 'travel_package/gallery/M3J6c3dnuMkAD1qM5Nt6XYAp5YmIonDAjShkE3ZI.jpg', 1, '2024-09-04 16:35:58', '2024-09-07 08:26:47'),
(2, 'Luxury', 'travel_package/gallery/5MZp01D1zI9NRhwd4P6I1y1qJqBqDWBjSzFKPDR5.jpg', 2, '2024-09-07 05:03:22', '2024-09-07 05:03:22'),
(3, 'Luxury1', 'travel_package/gallery/7jdBwB0dfb25nGMzGh4RNPyUzGOujopaNwSOH6rr.jpg', 2, '2024-09-07 05:04:26', '2024-09-07 05:04:26'),
(4, 'Mount Everest, Nepal', 'travel_package/gallery/ErBviOfRQyau6YwuehbRScszkKqOvur1eHhvVX28.png', 3, '2024-09-07 05:06:26', '2024-09-07 05:06:26'),
(5, 'Maldivoooo', 'travel_package/gallery/e8yz9Pw4rXKtP8zAUMWSQnlHb99arm25iP34caB5.jpg', 4, '2024-09-07 05:09:57', '2024-09-07 05:09:57'),
(6, 'Maldivoooo2', 'travel_package/gallery/uBGQTa2kin35P2N1XEzGWInY9U0PGMvgMg0MfwgD.png', 4, '2024-09-07 05:10:14', '2024-09-07 05:10:14'),
(7, 'Cairo', 'travel_package/gallery/9bcVoot959WsXsqdob5xcdwhN2jmZFivEe46Youv.jpg', 5, '2024-09-07 05:11:18', '2024-09-07 05:11:18'),
(8, 'Cairo, Egypt', 'travel_package/gallery/Fn9Ie6R9NCPrHMHpTdgy8nbPXLpL6MrnyCwhQauz.jpg', 5, '2024-09-07 05:11:31', '2024-09-07 05:11:31'),
(9, 'Rome', 'travel_package/gallery/ndEIurMblbNbidFQXLxpFu619FFCKBTSf1S3peSU.jpg', 6, '2024-09-07 05:13:44', '2024-09-07 05:13:44'),
(10, 'Santorini, Greece', 'travel_package/gallery/Nt4ak4cnTUZS3ufrIG8BVkVhFCdPO2TSjAZoi9jE.jpg', 7, '2024-09-07 05:15:19', '2024-09-07 05:15:19'),
(11, 'ssssssssss', 'travel_package/gallery/PKgQeXhPhoJ4ZS3mUZQjmI5fvKJk2aBBrdJkiM8m.jpg', 8, '2024-09-07 05:31:32', '2024-09-07 05:31:32'),
(12, 'sss', 'travel_package/gallery/bYZvveJMqnyw0cWECXyDxmlS77tYDdDPMMQ9nsVU.jpg', 1, '2024-09-07 08:54:40', '2024-09-07 08:54:40'),
(13, 'sss', 'travel_package/gallery/tWja1i0nPmHUaGQdM2878xAH57khGaoEIByuhUoR.jpg', 1, '2024-09-07 08:54:42', '2024-09-07 08:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_02_28_050111_create_categories_table', 1),
(7, '2023_02_28_065501_create_travel_packages_table', 1),
(8, '2023_02_28_065908_create_blogs_table', 1),
(9, '2023_02_28_070324_create_bookings_table', 1),
(10, '2023_03_01_020708_create_galleries_table', 1),
(11, '2023_03_01_151237_add_reads_to_blogs_table', 1),
(12, '2024_09_05_065230_add_contact_table', 2),
(13, '2024_09_05_155413_create_travel_inspirations_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travel_inspirations`
--

CREATE TABLE `travel_inspirations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_inspirations`
--

INSERT INTO `travel_inspirations` (`id`, `title`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Travel Blogs', 'https://www.nomadicmatt.com', NULL, NULL),
(2, 'Instagram Travel', 'https://www.instagram.com/explore/tags/travel/', NULL, NULL),
(3, 'Travel Forums', 'https://www.reddit.com/r/travel/', NULL, NULL),
(4, 'Pinterest Ideas', 'https://www.pinterest.com/search/pins/?q=travel', NULL, NULL),
(5, 'Travel Shows', 'https://www.netflix.com/search?q=travel%20shows', NULL, NULL),
(6, 'Travel Websites', 'https://www.lonelyplanet.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `type`, `slug`, `location`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'q2qq', 'sanaa', 'Sana\'a', 300, '<p>This is place is good</p>', '2024-09-04 16:34:56', '2024-09-04 16:34:56'),
(2, 'Luxury', 'paris-france', 'Paris, France', 2500, '<p>A luxury vacation package to Paris, including 5-star hotel stays and exclusive tours.</p>', '2024-09-07 05:00:36', '2024-09-07 05:00:36'),
(3, 'Adventure', 'mount-everest-nepal', 'Mount Everest, Nepal', 3500, '<p>An adventurous trekking experience to the base camp of Mount Everest.</p>', '2024-09-07 05:05:50', '2024-09-07 05:05:50'),
(4, 'Maldives-relaxation Retreat', 'maldives', 'Maldives', 2500, '<p>Experience ultimate relaxation in the tropical paradise of the Maldives. Stay in overwater bungalows and enjoy serene beaches and clear blue waters.</p>', '2024-09-07 05:08:58', '2024-09-07 05:08:58'),
(5, 'Historical', 'cairo-egypt', 'Cairo, Egypt', 2200, '<p>Explore the wonders of Ancient Egypt with a guided tour of the Pyramids, the Sphinx, and the Egyptian Museum. Dive into history with an expert Egyptologist.</p>', '2024-09-07 05:11:03', '2024-09-07 05:11:03'),
(6, 'Historical', 'rome', 'Rome', 2000, '<p>Walk through the streets of Ancient Rome and visit iconic landmarks such as the Colosseum, Roman Forum, and Palatine Hill. A must-visit for history lovers!</p>', '2024-09-07 05:12:39', '2024-09-07 05:12:39'),
(7, 'Luxury', 'santorini-greece', 'Santorini, Greece', 2000, '<p>Relax in the lap of luxury on the beautiful island of Santorini. This package includes private yacht tours, a stay in a cliffside villa, and gourmet dining.</p>', '2024-09-07 05:14:38', '2024-09-07 05:14:38'),
(8, 'dssss', 'santorini-greecesdds', 'Santorini, Greecesdds', 2000, '<p>ssssssssssssssssssssssssssssss</p>', '2024-09-07 05:31:11', '2024-09-07 05:31:11');

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
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'Moataz Mohammed', 'admin@admin.com', NULL, '$2y$10$g.iIzijeNcXVvuB2tpEnJeQO/ZBVkoKqvqesDZ5R0Dp864R9yNbB6', NULL, 1, '2024-09-04 13:08:55', '2024-09-07 10:01:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_category_id_foreign` (`category_id`),
  ADD KEY `blogs_reads_index` (`reads`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_travel_package_id_foreign` (`travel_package_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_travel_package_id_foreign` (`travel_package_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `travel_inspirations`
--
ALTER TABLE `travel_inspirations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `travel_packages_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travel_inspirations`
--
ALTER TABLE `travel_inspirations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_travel_package_id_foreign` FOREIGN KEY (`travel_package_id`) REFERENCES `travel_packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_travel_package_id_foreign` FOREIGN KEY (`travel_package_id`) REFERENCES `travel_packages` (`id`) ON DELETE CASCADE;
COMMIT;

