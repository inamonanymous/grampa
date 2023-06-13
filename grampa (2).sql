-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 13, 2023 at 11:52 AM
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
-- Database: `grampa`
--

-- --------------------------------------------------------

--
-- Table structure for table `books_csv`
--

CREATE TABLE `books_csv` (
  `id` int(11) NOT NULL,
  `isbn` bigint(13) DEFAULT NULL,
  `title` varchar(37) DEFAULT NULL,
  `author` varchar(28) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `books_csv`
--

INSERT INTO `books_csv` (`id`, `isbn`, `title`, `author`) VALUES
(9, 9780060589358, 'The Chronicles of Narnia', ' by C.S. Lewis'),
(10, 9780679723165, 'The Bell Jar', ' by Sylvia Plath'),
(12, 9780140449146, 'Don Quixote', ' by Miguel de Cervantes'),
(13, 9780679734505, 'The Stranger', ' by Albert Camus'),
(14, 9780061120084, 'The Road', ' by Cormac McCarthy'),
(15, 9781594480003, 'The Secret History', ' by Donna Tartt'),
(16, 9780812988406, 'Station Eleven', ' by Emily St. John Mandel'),
(17, 9780062315007, 'All the Light We Cannot See', ' by Anthony Doerr'),
(18, 9780451524935, 'Wuthering Heights', ' by Emily Bronte'),
(19, 9780062066088, 'The Hunger Games', ' by Suzanne Collins'),
(20, 9780345342966, 'The Hitchhiker\'s Guide to the Galaxy', ' by Douglas Adams'),
(21, 9780307477477, 'The Girl with the Dragon Tattoo', ' by Stieg Larsson'),
(22, 9780345803031, 'A Game of Thrones', ' by George R.R. Martin'),
(23, 9780553212471, 'The Count of Monte Cristo', ' by Alexandre Dumas'),
(24, 9780099518471, 'The Picture of Dorian Gray', ' by Oscar Wilde'),
(25, 9780140449337, 'Les Mis‚rables', ' by Victor Hugo'),
(26, 9780141439846, 'Jane Eyre', ' by Charlotte Bronte'),
(27, 9780385514239, 'The Da Vinci Code', ' by Dan Brown'),
(28, 9780670020553, 'The Help', ' by Kathryn Stockett'),
(29, 9780062099475, 'The Fault in Our Stars', ' by John Green'),
(30, 9780802120732, 'Americanah', ' by Chimamanda Ngozi Adichie'),
(31, 9780307278739, 'Life of Pi', ' by Yann Martel'),
(32, 9780060850524, 'The Lovely Bones', ' by Alice Sebold'),
(33, 9780385474542, 'The Giver', ' by Lois Lowry'),
(34, 9780062498533, 'The Handmaid\'s Tale', ' by Margaret Atwood'),
(35, 9780345498053, 'Water for Elephants', ' by Sara Gruen'),
(36, 9780062316097, 'Gone Girl', ' by Gillian Flynn'),
(37, 9780679760801, 'The God of Small Things', ' by Arund'),
(38, 9780679720201, 'The Color Purple', ' by Alice Walker'),
(39, 9780061122415, 'The Memory Keeper\'s Daughter', ' by Kim Edwards'),
(40, 9780385513911, 'The Road to Character', ' by David Brooks'),
(41, 9780385349934, 'The Nightingale', ' by Kristin Hannah'),
(42, 9780062565222, 'Hillbilly Elegy by', ' J.D. Vance'),
(43, 9780679763970, 'Midnight\'s Children', ' by Salman Rushdie'),
(44, 9780316015844, 'The Tipping Point', ' by Malcolm Gladwell'),
(45, 9780671003759, 'A Walk to Remember', ' by Nicholas Sparks'),
(46, 9780062219695, 'Me Before You', ' by Jojo Moyes'),
(47, 9781476738024, 'Wild by Cheryl', ' Strayed'),
(48, 9780316769174, 'The Stand', ' by Stephen King'),
(49, 9781451627257, 'Unbroken', ' by Laura Hillenbrand'),
(50, 9780316017930, 'Blink', ' by Malcolm Gladwell'),
(51, 9780446675536, 'The Poisonwood Bible', ' by Barbara Kingsolver'),
(52, 9780553588487, 'Angels and Demons', ' by Dan Brown'),
(53, 9780385740810, 'The Book Thief', ' by Markus Zusak'),
(54, 9780141028411, 'Atonement', ' by Ian McEwan'),
(55, 9780140283334, 'Heart of Darkness', ' by Joseph Conrad'),
(56, 9780345479684, 'A Feast for Crows', ' by George R.R. Martin'),
(57, 9780804171281, 'The Goldfinch', ' by Donna Tartt'),
(58, 9780345806568, 'The Name of the Wind', ' by Patrick Rothfuss'),
(59, 9780671683905, 'The Firm', ' by John Grisham'),
(60, 9780544002340, 'The Hobbit', ' by J.R.R. Tolkien'),
(61, 9780525478812, 'The Night Circus', ' by Erin Morgenstern'),
(62, 9780679456237, 'Memoirs of a Geisha', ' by Arthur Golden'),
(63, 9780061990478, 'The Immortal Life of Henrietta Lacks', ' by Rebecca Skloot'),
(64, 9780385732556, 'Thirteen Reasons Why', ' by Jay Asher'),
(65, 9781451648535, 'Killing Lincoln', ' by Bill O\'Reilly'),
(66, 9780812992918, 'The Orphan Master\'s Son', ' by Adam Johnson'),
(67, 9780449005613, 'The Red Tent', ' by Anita Diamant'),
(68, 9780802120329, 'Between the World and Me', ' by Ta-Nehisi Coates'),
(69, 9780399562462, 'Lincoln in the Bardo', ' by George Saunders'),
(70, 9780307947727, 'The Art of Fielding', ' by Chad Harbach'),
(71, 9781451645855, 'The Help', ' by Kathryn Stockett'),
(72, 9780812985122, 'The Nightingale', ' by Kristin Hannah'),
(73, 9780062049814, 'The Immortalists', ' by Chloe Benjamin'),
(74, 9780385689229, 'The Rosie Project', ' by Graeme Simsion'),
(75, 9780345806537, 'The Wise Man\'s Fear', ' by Patrick Rothfuss'),
(76, 9780812986723, 'The Bone Clocks', ' by David Mitchell'),
(77, 9780553573407, 'Bridget Jones\'s Diary', ' by Helen Fielding'),
(78, 9780307277671, 'The Namesake', ' by Jhumpa Lahiri'),
(79, 9781594206031, 'The Sympathizer', ' by Viet Thanh Nguyen'),
(80, 9780385542362, 'The Underground Railroad', ' by Colson Whitehead'),
(81, 9780735211292, 'The Nest', ' by Cynthia D\'Aprix Sweeney'),
(82, 9780062476371, 'The Girls', ' by Emma Cline'),
(83, 9780062234971, 'The Fault in Our Stars', ' by John Green'),
(84, 9780307743176, 'The Girl on the Train', ' by Paula Hawkins'),
(85, 9780385539256, 'A Little Life', ' by Hanya Yanagihara'),
(86, 9781250131029, 'A Gentleman in Moscow', ' by Amor Towles'),
(87, 9780735219113, 'The Immortalists', ' by Chloe Benjamin'),
(88, 9780525436058, 'The Handmaid\'s Tale', ' by Margaret Atwood'),
(89, 9780385353788, 'All the Light We Cannot See', ' by Anthony Doerr'),
(90, 9781250061629, 'The Nightingale', ' by Kristin Hannah'),
(91, 9780525429654, 'The Martian', ' by Andy Weir'),
(92, 9780385341006, 'Gone Girl', ' by Gillian Flynn'),
(93, 9780345540568, 'The Girl Who Kicked the Hornet\'s Nest', ' by Stieg Larsson'),
(94, 9780802146091, 'The Luminaries', ' by Eleanor Catton'),
(95, 9781501167717, 'Little Fires Everywhere', ' by Celeste Ng');

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`id`, `name`, `email`, `username`, `pass`) VALUES
(1, 'hannah', 'hansgramps@gmail.com', 'hans0909', '11111111');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `studentid` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`studentid`, `fullname`, `email`, `username`, `pass`) VALUES
(127, 'aguilar', 'stephenonline25@gmail.com', 'panot123', '12345678'),
(131, 'testtest', 'testtest', 'testtest', 'testtest'),
(133, 'Grampa, Princess Hannah', 'hans09@gmail.com', 'hannah0909', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books_csv`
--
ALTER TABLE `books_csv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`studentid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books_csv`
--
ALTER TABLE `books_csv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `librarian`
--
ALTER TABLE `librarian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `studentid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
