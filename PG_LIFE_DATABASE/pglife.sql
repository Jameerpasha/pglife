-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 03:27 PM
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
-- Database: `pglife`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `type`, `icon`) VALUES
(1, 'Wifi', 'Common Area', 'wifi'),
(2, 'Power Backup', 'Building', 'powerbackup'),
(3, 'Fire Extinguisher', 'Building', 'fireext'),
(4, 'TV', 'Common Area', 'tv'),
(5, 'Bed with Mattress', 'Bedroom', 'bed'),
(6, 'Parking', 'Building', 'parking'),
(7, 'Water Purifier', 'Common Area', 'rowater'),
(8, 'Dining', 'Common Area', 'dining'),
(9, 'Air Conditioner', 'Bedroom', 'ac'),
(10, 'Washing Machine', 'Common Area', 'washingmachine'),
(11, 'Lift', 'Building', 'lift'),
(12, 'CCTV', 'Building', 'cctv'),
(13, 'Geyser', 'Washroom', 'geyser');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(1, 'Delhi'),
(2, 'Mumbai'),
(3, 'Bengaluru'),
(4, 'Hyderabad');

-- --------------------------------------------------------

--
-- Table structure for table `interested_users_properties`
--

CREATE TABLE `interested_users_properties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interested_users_properties`
--

INSERT INTO `interested_users_properties` (`id`, `user_id`, `property_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 5),
(4, 2, 1),
(5, 2, 5),
(6, 3, 1),
(7, 3, 2),
(8, 3, 5),
(9, 4, 2),
(10, 4, 3),
(11, 4, 4),
(17, 5, 3),
(18, 5, 4),
(20, 5, 2),
(21, 5, 1),
(22, 8, 1),
(23, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `gender` enum('male','female','unisex') NOT NULL,
  `rent` int(11) NOT NULL,
  `rating_clean` float(2,1) NOT NULL,
  `rating_food` float(2,1) NOT NULL,
  `rating_safety` float(2,1) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `city_id`, `name`, `address`, `description`, `gender`, `rent`, `rating_clean`, `rating_food`, `rating_safety`, `image`) VALUES
(1, 1, 'Sajid\'s Paying Guest', 'Pahar Ganj, New Delhi, Delhi 110055', 'Located in New Delhi (pahar ganj), Our PG provides accommodation with free WiFi and free private parking.\r\n', 'male', 5000, 4.3, 3.4, 4.8, ''),
(2, 1, 'NK PG Home for Boys & Girls', 'Tooti Chowk, Paharganj, New Delhi, Delhi 110055', 'PG with good facilities in low budget. This PG is near to metro station. PG with large rooms, high ceilings and massive beds. The room and common areas are modern, well-maintained, and very clean.', 'unisex', 6000, 2.9, 3.4, 3.8, ''),
(3, 2, 'Manish Paying Guest', '44, Juhu Scheme, Juhu, Mumbai, Maharashtra 400058', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. 2, 3 and 4 sharing rooms available.', 'female', 9500, 3.9, 3.8, 4.9, ''),
(4, 2, 'PG for Girls Borivali West', 'Plot no.258/D4, Gorai no.2, Borivali West, Mumbai, Maharashtra 400092', 'PG with good facilities, amenities and parking area. Remember, all it needs is one crazy story to convert a roomie into a friend. Our PG is nearby Metro station; 4.0 Kms from Dwarka Sector- 21.', 'female', 8000, 4.2, 4.1, 4.5, ''),
(5, 2, 'Ganpati Paying Guest', 'Police Beat, Sainath Complex, Besides, SV Rd, Daulat Nagar, Borivali East, Mumbai - 400066', 'Ganpati PG offers guests the refined luxury of heritage combined with effortlessly efficient service and local expertise to create a moment to remember.', 'male', 5500, 4.2, 3.9, 4.6, ''),
(6, 3, 'Sri Vaari PG For Gents', 'New Wipro sez, Ambedkar Nagar, Kodathi, Bengaluru, Karnataka 560087', 'We provide good accommodation. Free Wi-Fi throughout the property as well as free private parking for guests who drive. The property is nearby New Wipro sez, Ambedkar Nagar, Kodathi, Bengaluru. Every room is equipped with cupboards, flat-screen TV and a private bathroom. 2, 3 and 4 sharing available.', 'unisex', 7000, 4.3, 3.4, 4.8, ''),
(7, 3, 'Sri Venkateshwara PG For Ladies', 'New Wipro sez, Ambedkar Nagar, Sarjapur - Marathahalli Road, Kodathi, Bengaluru, Karnataka 560087', 'Good Environment, Comfortable rooms with daily maintenance', 'female', 6500, 2.9, 3.4, 3.8, ''),
(8, 4, 'Luxury PG Accommodation', 'Hyderabad Telangana 500081', 'Let the adventures begin at Luxury PG Accommodation. PG with good amenities in low budget. Complimentary breakfast is available every morning. Each room features cable television and a minimalist design with warm wooden furnishings.', 'male', 6500, 3.9, 3.8, 4.9, ''),
(9, 4, 'Amigos PG', 'Hyderabad Telangana 500081', 'PG with good food and maintenance', 'female', 7500, 4.2, 4.1, 4.5, ''),
(10, 4, 'Ganpati Co-living', 'Hyderabad Telangana 500081', 'Good place to stay, very spacious room service with two wheeler parking available', 'unisex', 8500, 4.2, 3.9, 4.6, '');

-- --------------------------------------------------------

--
-- Table structure for table `properties_amenities`
--

CREATE TABLE `properties_amenities` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `amenity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties_amenities`
--

INSERT INTO `properties_amenities` (`id`, `property_id`, `amenity_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 4),
(4, 1, 5),
(5, 1, 7),
(6, 1, 8),
(7, 1, 9),
(8, 1, 10),
(9, 1, 11),
(10, 1, 13),
(11, 2, 1),
(12, 2, 2),
(13, 2, 3),
(14, 2, 4),
(15, 2, 5),
(16, 2, 7),
(17, 2, 8),
(18, 2, 9),
(19, 2, 10),
(20, 2, 11),
(21, 2, 13),
(22, 3, 1),
(23, 3, 2),
(24, 3, 3),
(25, 3, 4),
(26, 3, 5),
(27, 3, 7),
(28, 3, 8),
(29, 3, 10),
(30, 3, 11),
(31, 3, 12),
(32, 3, 13),
(33, 4, 1),
(34, 4, 3),
(35, 4, 4),
(36, 4, 5),
(37, 4, 7),
(38, 4, 8),
(39, 4, 10),
(40, 4, 11),
(41, 4, 12),
(42, 4, 13),
(43, 5, 1),
(44, 5, 3),
(45, 5, 4),
(46, 5, 5),
(47, 5, 7),
(48, 5, 8),
(49, 5, 10),
(50, 5, 11),
(51, 5, 12),
(52, 5, 13),
(53, 6, 1),
(54, 6, 2),
(55, 6, 4),
(56, 6, 5),
(57, 6, 7),
(58, 6, 8),
(59, 6, 9),
(60, 6, 10),
(61, 6, 11),
(62, 6, 13),
(63, 7, 1),
(64, 7, 2),
(65, 7, 3),
(66, 7, 4),
(67, 7, 5),
(68, 7, 7),
(69, 7, 8),
(70, 7, 9),
(71, 7, 10),
(72, 7, 11),
(73, 7, 13),
(74, 8, 1),
(75, 8, 2),
(76, 8, 3),
(77, 8, 4),
(78, 8, 5),
(79, 8, 7),
(80, 8, 8),
(81, 8, 10),
(82, 8, 11),
(83, 8, 12),
(84, 8, 13),
(85, 9, 1),
(86, 9, 3),
(87, 9, 4),
(88, 9, 5),
(89, 9, 7),
(90, 9, 8),
(91, 9, 10),
(92, 9, 11),
(93, 9, 12),
(94, 9, 13),
(95, 10, 1),
(96, 10, 3),
(97, 10, 4),
(98, 10, 5),
(99, 10, 7),
(100, 10, 8),
(101, 10, 10),
(102, 10, 11),
(103, 10, 12),
(104, 10, 13);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `user_img` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `property_id`, `user_name`, `content`, `user_img`) VALUES
(1, 1, 'Ashutosh Gowariker', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services.', 'http://vsc.edu.in/wp-content/uploads/2016/08/team-22.jpg'),
(2, 1, 'Karan Johar', 'An amazing PG with good quality food and hygienic environment. One of the easily accessible PG in the city.', 'https://cdn.statusqueen.com/dpimages/thumbnail/Boy_Stylish__Dp_Image-2277.jpg'),
(3, 2, 'Zoya Akhtar', 'I am a student, so I\'ve chosen this hostel they gave great hospitality to me, food was so good, and they maintained healthy relationship.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYU9zT1ird1zveZkMXAld1BG28oRX1inE8oqfjsn2GFgrDR5WYtvEcoSs581F4NunfP9Q&usqp=CAU'),
(4, 2, 'Farhan Akhtar', 'Had a comfortable stay.👍', 'https://sohohindi.in/wp-content/uploads/2022/09/30-boy-dp-sohohindi.in_-300x300.jpg'),
(5, 2, 'Anurag Kashyap', 'Property was very cozy and welcoming. Location was perfect. PG had all basics needed for the weekend. Overall great experience! 😀', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPFqtPezMJKFQkynxCMZWc1EaB9D43GnlqAw&usqp=CAU'),
(6, 3, 'Mira Nair', 'Stores are nearby. Owner provided discounts code for groceries at Safeway. Rooms are clean and well equipped. Excellent place.', 'https://img.freepik.com/premium-photo/young-beautiful-asian-college-student-girls-holding-books-pose-camera-front-school-building-learning-friendship-teens-close-friend-concept_102814-2930.jpg?w=2000'),
(7, 3, 'Akshaya A', 'Feel like home, everything\'s perfect, very clean with all commodities. I enjoyed my stay a lot.', 'https://static.toiimg.com/thumb/width-400,resizemode-4,msid-82298576/82298576.jpg'),
(8, 4, 'Inaya', 'If you’re tired of searching for a PG, come and stay here. You’ll really like it.', 'https://1fid.com/wp-content/uploads/2022/10/hijab-dp-18-1024x1022.jpg'),
(9, 5, 'Rajkumar Hirani', 'Loved everything here. Location is great.👌', 'https://i0.wp.com/sguru.org/wp-content/uploads/2017/06/935020_166055106889171_1490229830_n.jpg?resize=403%2C403&ssl=1'),
(10, 5, 'Sanjay Leela Bhansali', 'The staff was extremely supportive, welcoming and friendly. The room was clean and had all amenities.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsxwLwDsm0PPAAG2rHcV4YI8L7lb5xCGRhvQ&usqp=CAU'),
(11, 6, 'Rocky Singh', 'It is a quiet place. No unnecessary disturbance. Clean & Safe place. Friendly staff. PG is nearby Metro Station. Outside food allowed. Room cleaning service - Twice in a week.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8uD1ItS0tQp_g9JygJIhD7Q0vrsucvY8SPpMHn_cEdwKYElQi6tY2VUwq_1HGiXi_l6s&usqp=CAU'),
(12, 6, 'Asif', 'The place was extremely nice and well kept. Had a comfortable stay.', 'https://www.dpforwhatsapp.in/img/boy-dp/1.webp'),
(13, 6, 'Adnaan', 'The place was extremely nice and well kept.  Beds were clean, which is definitely something I look for when staying in any PG. In addition to the cleanliness, the room was well styled and felt like a luxury hotel. Will definitely be staying here again.', 'https://i.pinimg.com/736x/71/d4/5f/71d45ff516666e96f177f497ded0751a.jpg'),
(14, 7, 'Aakifah', 'Very nice apartment building. I\'ve stayed here for 8 months. It used to be an Embassy Suites hotel before the Pandemic. Very good location. Very close to restaurants, shopping, and public transportation.', 'https://i0.wp.com/nicedpz.com/storage/2022/03/d9a7b1e6fb3701182fd070a0e78268f2.jpg?resize=720%2C720&ssl=1'),
(15, 7, 'Zaira Wasim', 'Good environment. The Terrace is decorated well, the view from terrace takes my breath away. My friends were impressed with the amenities offered by this PG.', 'https://www.unigreet.com/wp-content/uploads/2023/01/Islamic-girl-dp-for-Whatsapp-Download.jpg'),
(16, 9, 'Anushka Nair', 'Huge apartment with high security. Good parking area. The rooms are very spacious with high ceilings and comfortable massive bed. well maintained and well furnished rooms.', 'https://i.pinimg.com/736x/27/55/11/2755113e919387feadcf41a668561f91.jpg'),
(17, 9, 'Meghna', 'Really enjoyed the stay. The location of the PG is outstanding and numerous sights can be reached on foot. The staff were also very good and supportive.', 'https://i.pinimg.com/736x/fd/bb/7c/fdbb7cbaf09fc67622e2a21dcf3d032a.jpg'),
(18, 8, 'Saleem', 'The place was extremely nice and well kept. Well maintenance, which is definitely something I look for when staying in any PG. In addition, the rooms were clean. The room was well styled. Dekhne se Luxury PG nahi Luxury Hotel lagra tha.😅😍', 'https://www.digitalkhabar.in/wp-content/uploads/whatsapp-dp-images-for-single-boy.jpg'),
(19, 10, 'Imran', 'I traveled here with my partner to revisit the city we met in. We absolutely loved it. Extremely clean upon arrival.', 'https://funylife.in/wp-content/uploads/2022/11/20221118_172834-1024x1024.jpg'),
(20, 10, 'Amyra', 'I traveled here with my partner to revisit the city we met in. We absolutely loved it. Extremely clean upon arrival.', 'https://freehindiwishes.com/wp-content/uploads/2020/10/Stylish-Muslim-Girl-Dp-For-Fb-Profile-7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `college_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `full_name`, `phone`, `gender`, `college_name`) VALUES
(1, 'anuj.kalbalia@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Anuj Kalbalia', '9535100112', 'male', 'NITD'),
(2, 'shadab@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Shadab Alam', '9876543210', 'male', 'NITJ'),
(3, 'aditya@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Aditya Sood', '9876543210', 'male', 'Chandigarh University'),
(4, 'radhika@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Radhika Bhatia', '9876543210', 'female', 'Delhi University'),
(5, 'jameer@gmail.com', '525bca883d5c639ed8d63ef5df5a6d1847ca1e75', 'jameer', '9876543210', 'male', 'BITS'),
(6, 'jameer1@gmail.com', '525bca883d5c639ed8d63ef5df5a6d1847ca1e75', 'jameerr', '9876543210', 'male', 'BITS'),
(7, 'mohammad@gmail.com', '8acb5905a4d849efe9825c688f85ca41cccee201', 'mohammad', '1234567890', 'male', 'BITS'),
(8, 'jameerpasha1@gmail.com', 'abf4fa3974995aef0068aee897c1251bf9f4e9fc', 'JAM', '1234567890', 'male', 'BIT'),
(9, 'mj@gmail.com', 'e938e54c1e9581100cf3490aacd3e3cdc1825121', 'mj', '1122334455', 'male', 'CJIT'),
(10, 'mjk@gmail.com', 'ee47b2e38f52cb1f7a6391d8a0bb898d57aac8ce', 'mj', '1122334455', 'male', 'CJIT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`),
  ADD KEY `amenity_id` (`amenity_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  ADD CONSTRAINT `interested_users_properties_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `interested_users_properties_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  ADD CONSTRAINT `properties_amenities_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`),
  ADD CONSTRAINT `properties_amenities_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`);

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
