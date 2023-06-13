-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 13, 2023 at 10:06 PM
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
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `admin_pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `admin_name`, `admin_pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `books_csv`
--

CREATE TABLE `books_csv` (
  `id` int(11) NOT NULL,
  `book_isbn` varchar(15) DEFAULT NULL,
  `book_name` varchar(37) DEFAULT NULL,
  `author` varchar(28) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `books_csv`
--

INSERT INTO `books_csv` (`id`, `book_isbn`, `book_name`, `author`) VALUES
(2, '9780060935467', 'The Alchemist', ' by Paulo Coelho'),
(3, '9780743273565', 'The Great Gatsby', ' by F. Scott Fitzgerald'),
(4, '9780345418265', '1984', ' by George Orwell'),
(5, '9780547928227', 'The Lord of the Rings', ' by J.R.R. Tolkien'),
(6, '9780679783275', 'Pride and Prejudice', ' by Jane Austen'),
(7, '9780143105420', 'One Hundred Years of Solitude', ' by Gabriel Garcia Marquez'),
(8, '9780374528379', 'The Catcher in the Rye', ' by J.D. Salinger'),
(9, '0912091209191', 'testing', 'testing'),
(10, '9780679723165', 'The Bell Jar', ' by Sylvia Plath'),
(11, '9781400031702', 'The Kite Runner', ' by Khaled Hosseini'),
(12, '9780140449146', 'Don Quixote', ' by Miguel de Cervantes'),
(13, '9780679734505', 'The Stranger', ' by Albert Camus'),
(14, '1111111111111', 'testig', 'testing'),
(15, '9781594480003', 'The Secret History', ' by Donna Tartt'),
(16, '9780812988406', 'Station Eleven', ' by Emily St. John Mandel'),
(17, '9780062315007', 'All the Light We Cannot See', ' by Anthony Doerr'),
(18, '9780451524935', 'Wuthering Heights', ' by Emily Bronte'),
(19, '9780062066088', 'The Hunger Games', ' by Suzanne Collins'),
(20, '9780345342966', 'The Hitchhiker\'s Guide to the Galaxy', ' by Douglas Adams'),
(21, '9780307477477', 'The Girl with the Dragon Tattoo', ' by Stieg Larsson'),
(22, '9780345803031', 'A Game of Thrones', ' by George R.R. Martin'),
(23, '9780553212471', 'The Count of Monte Cristo', ' by Alexandre Dumas'),
(24, '9780099518471', 'The Picture of Dorian Gray', ' by Oscar Wilde'),
(25, '9780140449337', 'Les Mis‚rables', ' by Victor Hugo'),
(26, '9780141439846', 'Jane Eyre', ' by Charlotte Bronte'),
(27, '9780385514239', 'The Da Vinci Code', ' by Dan Brown'),
(28, '9780670020553', 'The Help', ' by Kathryn Stockett'),
(29, '9780062099475', 'The Fault in Our Stars', ' by John Green'),
(30, '9780802120732', 'Americanah', ' by Chimamanda Ngozi Adichie'),
(31, '9780307278739', 'Life of Pi', ' by Yann Martel'),
(32, '9780060850524', 'The Lovely Bones', ' by Alice Sebold'),
(33, '9780385474542', 'The Giver', ' by Lois Lowry'),
(34, '9780062498533', 'The Handmaid\'s Tale', ' by Margaret Atwood'),
(35, '9780345498053', 'Water for Elephants', ' by Sara Gruen'),
(36, '9780062316097', 'Gone Girl', ' by Gillian Flynn'),
(37, '9780679760801', 'The God of Small Things', ' by Arund'),
(38, '9780679720201', 'The Color Purple', ' by Alice Walker'),
(39, '9780061122415', 'The Memory Keeper\'s Daughter', ' by Kim Edwards'),
(40, '9780385513911', 'The Road to Character', ' by David Brooks'),
(41, '9780385349934', 'The Nightingale', ' by Kristin Hannah'),
(42, '9780062565222', 'Hillbilly Elegy by', ' J.D. Vance'),
(43, '9780679763970', 'Midnight\'s Children', ' by Salman Rushdie'),
(44, '9780316015844', 'The Tipping Point', ' by Malcolm Gladwell'),
(45, '9780671003759', 'A Walk to Remember', ' by Nicholas Sparks'),
(46, '9780062219695', 'Me Before You', ' by Jojo Moyes'),
(47, '9781476738024', 'Wild by Cheryl', ' Strayed'),
(48, '9780316769174', 'The Stand', ' by Stephen King'),
(49, '9781451627257', 'Unbroken', ' by Laura Hillenbrand'),
(50, '9780316017930', 'Blink', ' by Malcolm Gladwell'),
(51, '9780446675536', 'The Poisonwood Bible', ' by Barbara Kingsolver'),
(52, '9780553588487', 'Angels and Demons', ' by Dan Brown'),
(53, '9780385740810', 'The Book Thief', ' by Markus Zusak'),
(54, '9780141028411', 'Atonement', ' by Ian McEwan'),
(55, '9780140283334', 'Heart of Darkness', ' by Joseph Conrad'),
(56, '9780345479684', 'A Feast for Crows', ' by George R.R. Martin'),
(57, '9780804171281', 'The Goldfinch', ' by Donna Tartt'),
(58, '9780345806568', 'The Name of the Wind', ' by Patrick Rothfuss'),
(59, '9780671683905', 'The Firm', ' by John Grisham'),
(60, '9780544002340', 'The Hobbit', ' by J.R.R. Tolkien'),
(61, '9780525478812', 'The Night Circus', ' by Erin Morgenstern'),
(62, '9780679456237', 'Memoirs of a Geisha', ' by Arthur Golden'),
(63, '9780061990478', 'The Immortal Life of Henrietta Lacks', ' by Rebecca Skloot'),
(64, '9780385732556', 'Thirteen Reasons Why', ' by Jay Asher'),
(65, '9781451648535', 'Killing Lincoln', ' by Bill O\'Reilly'),
(66, '9780812992918', 'The Orphan Master\'s Son', ' by Adam Johnson'),
(67, '9780449005613', 'The Red Tent', ' by Anita Diamant'),
(68, '9780802120329', 'Between the World and Me', ' by Ta-Nehisi Coates'),
(69, '9780399562462', 'Lincoln in the Bardo', ' by George Saunders'),
(70, '9780307947727', 'The Art of Fielding', ' by Chad Harbach'),
(71, '9781451645855', 'The Help', ' by Kathryn Stockett'),
(72, '9780812985122', 'The Nightingale', ' by Kristin Hannah'),
(73, '9780062049814', 'The Immortalists', ' by Chloe Benjamin'),
(74, '9780385689229', 'The Rosie Project', ' by Graeme Simsion'),
(75, '9780345806537', 'The Wise Man\'s Fear', ' by Patrick Rothfuss'),
(76, '9780812986723', 'The Bone Clocks', ' by David Mitchell'),
(77, '9780553573407', 'Bridget Jones\'s Diary', ' by Helen Fielding'),
(78, '9780307277671', 'The Namesake', ' by Jhumpa Lahiri'),
(79, '9781594206031', 'The Sympathizer', ' by Viet Thanh Nguyen'),
(80, '9780385542362', 'The Underground Railroad', ' by Colson Whitehead'),
(81, '9780735211292', 'The Nest', ' by Cynthia D\'Aprix Sweeney'),
(82, '9780062476371', 'The Girls', ' by Emma Cline'),
(83, '9780062234971', 'The Fault in Our Stars', ' by John Green'),
(84, '9780307743176', 'The Girl on the Train', ' by Paula Hawkins'),
(85, '9780385539256', 'A Little Life', ' by Hanya Yanagihara'),
(86, '9781250131029', 'A Gentleman in Moscow', ' by Amor Towles'),
(87, '9780735219113', 'The Immortalists', ' by Chloe Benjamin'),
(88, '9780525436058', 'The Handmaid\'s Tale', ' by Margaret Atwood'),
(89, '9780385353788', 'All the Light We Cannot See', ' by Anthony Doerr'),
(90, '9781250061629', 'The Nightingale', ' by Kristin Hannah'),
(91, '9780525429654', 'The Martian', ' by Andy Weir'),
(92, '9780385341006', 'Gone Girl', ' by Gillian Flynn'),
(93, '9780345540568', 'The Girl Who Kicked the Hornet\'s Nest', ' by Stieg Larsson'),
(94, '9780802146091', 'The Luminaries', ' by Eleanor Catton'),
(95, '9781501167717', 'Little Fires Everywhere', ' by Celeste Ng'),
(96, '9780525510547', 'The Dutch House', ' by Ann Patchett'),
(99, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `book_store`
--

CREATE TABLE `book_store` (
  `id` int(11) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `book_isbn` varchar(25) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_store`
--

INSERT INTO `book_store` (`id`, `book_name`, `book_isbn`, `category`) VALUES
(1, '2qwe', 'qwe', 'qwe'),
(12, 'qwerrt', '1234567897897', 'qqqqqq');

-- --------------------------------------------------------

--
-- Table structure for table `issue_table`
--

CREATE TABLE `issue_table` (
  `id` int(11) NOT NULL,
  `person_name` varchar(45) NOT NULL,
  `book_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issue_table`
--

INSERT INTO `issue_table` (`id`, `person_name`, `book_name`) VALUES
(1, 'panot', '2qwe'),
(2, 'asdd', 'Station Eleven'),
(3, 'Panot', 'The Count of Monte Cristo'),
(4, 'hans', 'To Kill a Mockingbird'),
(5, 'hans', 'The Hobbit');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(11) NOT NULL,
  `member_name` varchar(45) NOT NULL,
  `member_pass` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `member_name`, `member_pass`) VALUES
(4, 'member', 'member'),
(5, 'chin', 'password'),
(6, 'sha', 'password'),
(7, 'princess', 'password'),
(9, 'panotpogi429', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `id` int(11) NOT NULL,
  `person_name` varchar(45) NOT NULL,
  `book_name` varchar(45) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`id`, `person_name`, `book_name`, `date`) VALUES
(1, 'Aguilar', '2qwe', '2023-06-08'),
(2, 'chin', 'The Great Gatsby', '0000-00-00'),
(3, 'sha', 'The Catcher in the Rye', '2023-06-09'),
(4, 'princess', 'All the Light We Cannot See', '2023-06-09'),
(5, 'hans', 'The Goldfinch', '2023-09-09'),
(6, 'chin', 'The Count of Monte Cristo', '2023-06-09'),
(7, 'chin', 'Station Eleven', '2023-06-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_csv`
--
ALTER TABLE `books_csv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_store`
--
ALTER TABLE `book_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_table`
--
ALTER TABLE `issue_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `member_name` (`member_name`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books_csv`
--
ALTER TABLE `books_csv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `book_store`
--
ALTER TABLE `book_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `issue_table`
--
ALTER TABLE `issue_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
