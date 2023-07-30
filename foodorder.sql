SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




--
-- Database: `akash`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('SHAHARIAZ AKASH', 'shahariazakash@gmail.com', '01777030407', 'sa', 'aaaa'),
('LIMA', 'lima47@gmail.com', '01538384191', 'sa', 'aaaa');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('mithu', 'Monowar Mithu', 'mithu123r@gmail.com', '01519603840', 'North Western University, SRK HOSTEL ROOM NUMBER-59,', 'mithu1122'),
('meherab', 'Meherab Hossain', 'meherab856@gmail.com', '01780082848', 'Mongla', 'meherab121'),
('eva', 'Eva', 'eva@gmail.com', '01791199058', 'Rupsha', '11221'),
('nahid', 'Nahid', 'nahid@gmail.com', '01444030501', 'Fultola', 'nahid'),
('zihad00', 'Zihad', 'Zihad1111@gmail.com', '01752141632', 'Bagherhat', 'zihad435');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(001, 'Juicy Masala Paneer Kathi Roll', 100, 'Juicy Masala Paneer Kathi Roll loaded with Masala Paneer chunks, onion & Mayo.', 1, 'images/Masala_Paneer_Kathi_Roll.jpg', 'ENABLE'),
(002, 'Meurig Fish', 120, 'Try Meurig - A whole Pomfret fish grilled with tangy marination & served with grilled onions and tomatoes.', 2, 'images/3124155.jpg', 'ENABLE'),
(003, 'Chocolate Hazelnut Truffle', 110, 'Lose all senses over this very delicious chocolate hazelnut truffle.', 3, 'images\109778.jpg', 'ENABLE'),
(004, 'Happy Happy Choco Chip Shake', 90, 'Happy Happy Choco Chip Shake - a perfect party sweet treat.', 1, 'images/Happy_Happy_Choco_Chip_Shake.jpg', 'ENABLE'),
(005, 'Spring Rolls', 85, 'Delicious Spring Rolls by Dragon Hut, Delhi. Order now!!!', 2, 'images/Spring_Rolls.jpg', 'ENABLE'),
(006, 'Baahubali Thali', 250, 'Baahubali Thali is accompanied by Kattapa Biriyani, Devasena Paratha, Bhalladeva Patiala Lassi', 3, 'images/Baahubali_Thali.jpg', 'ENABLE'),
(007, 'Coffee', 60, 'concentrated coffee made by forcing pressurized water through finely ground coffee beans.', 2, 'images/coffee.jpg', 'ENABLE'),
(008, 'Tea', 30, 'The simple elixir of tea is of our natural world.', 2, 'images/Royal-Milk-Tea-3.jpg', 'ENABLE'),
(009, 'Samosa', 40, 'Cocktail Crispy Samosa..', 2, 'images/samosa.jpg', 'ENABLE'),
(010, 'Paneer Pakora', 79, 'it gives whole new dimension even to the most boring or dull vegetable', 2, 'images/paneer pakora.jpg', 'ENABLE'),
(011, 'Puff', 50, 'Vegetable Puff, a snack with crisp-n-flaky outer layer and mixed vegetables stuffing', 2, 'images/puff.jpg', 'ENABLE'),
(012, 'Pizza', 350, 'Good and Tasty ', 2, 'images/pizza-3007395__480.jpg', 'ENABLE'),
(013, 'Pizza', 200, 'Pure Vegetable and Tasty.', 2, 'images/Pizza.jpg', 'ENABLE'),
(014, 'French Fries', 75, 'Pure Veg and Tasty.', 2, 'images/how-to-make-homemade-french-fries-2215971-hero-01-02f62a016f3e4aa4b41d0c27539885c3.jpg', 'ENABLE'),
(015, 'Pakora', 100, 'TASTY', 2, 'images/Pakora.jpg', 'ENABLE'),
(016, 'Burger', 100, 'BBQ Chicken Cheese Burger.', 1, 'images/photo-1571091655789-405eb7a3a3a8.jpeg', 'ENABLE'),
(017, 'Momo', 90, 'Chicken chili Momo.', 2, 'images/momo.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('shahariaz', 'Shahariaz Anwar', 'shahariaz@gmail.com', '01777030407', 'Satkhira', 'shahariaz'),
('lima', 'Fatema Tuj Johra LIma', 'lima73@gmail.com', '01538384191', 'khulna', 'lima47'),
('fatema', 'Fatema', 'fatema73@gmail.com', '01538384191', 'khulna', 'fatema47'),
('johra', 'Johra LIma', 'johra3@gmail.com', '01538384191', 'khulna', 'johra'),
('akash', 'Akash', 'akash02@gmail.com', '01766090109', 'kjulna', 'akash02');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 001, 'Juicy Masala Paneer Kathi Roll', 100, 1, '2023-01-03', 'mithu', 1),
(2, 004, 'Happy Happy Choco Chip Shake', 90, 2, '2023-01-03', 'mithu', 1),
(3, 004, 'Happy Happy Choco Chip Shake', 90, 2, '2023-01-03', 'mithu', 1),
(4, 003, 'Chocolate Hazelnut Truffle', 110, 1, '2023-01-05', 'meherab', 3),
(5, 002, 'Meurig Fish', 120, 1, '2023-01-05', 'meherab', 2),
(6, 008, 'Tea', 30, 7, '2023-01-07', 'eva', 4),
(7, 006, 'Baahubali Thali', 250, 1, '2023-01-07', 'eva', 3),
(8,009, 'Samosa', 40, 1, '2023-01-08', 'mithu', 2);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Nikhil\'s Restaurant', 'nikhil@restaurant.com', '01756010231', 'khulna', 'akash'),
(2, 'Roshan\'s Restaurant', 'roshan@restaurant.com', '01421294516', 'khulna', 'johra'),
(3, 'lima\'s Restaurant', 'aditi@restaurant.com', '01538384191', 'rupsha', 'lima'),
(4, 'Food Exploria', 'ckj40856@gmail.com', '01612030456', 'C:\\xampp\\htdocs\\FoodExploria-master\\images/coffee.', 'fatema'),
(6, 'Le Cafe', 'lecafepondi234@gmail.com', '9443369040', 'Pondicherry,rock beach Near,Le cafe', 'shahariaz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

