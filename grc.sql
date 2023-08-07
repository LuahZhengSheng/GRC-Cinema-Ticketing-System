-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2023-05-07 21:00:03
-- 服务器版本： 10.4.27-MariaDB
-- PHP 版本： 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `grc`
--

-- --------------------------------------------------------

--
-- 表的结构 `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(16) NOT NULL,
  `user_id` int(100) NOT NULL,
  `adultTicket_qty` int(100) NOT NULL,
  `childTicket_qty` int(100) NOT NULL,
  `total_price` double(7,2) NOT NULL,
  `processing_fee` double(4,2) NOT NULL,
  `booking_date` date NOT NULL,
  `booking_time` time NOT NULL,
  `booking_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `booking`
--

INSERT INTO `booking` (`booking_id`, `user_id`, `adultTicket_qty`, `childTicket_qty`, `total_price`, `processing_fee`, `booking_date`, `booking_time`, `booking_status`) VALUES
(4, 2, 2, 0, 38.00, 0.50, '2023-05-07', '20:24:24', 'Completed'),
(5, 2, 2, 0, 38.00, 0.50, '2023-05-07', '21:03:05', 'Completed'),
(6, 2, 1, 1, 32.00, 0.50, '2023-05-07', '21:11:35', 'Completed'),
(7, 2, 0, 2, 26.00, 0.50, '2023-05-07', '21:12:46', 'Completed'),
(8, 2, 2, 0, 38.00, 0.50, '2023-05-07', '21:27:20', 'Cancelled'),
(9, 2, 1, 1, 32.00, 0.50, '2023-05-07', '21:28:36', 'Cancelled'),
(10, 2, 2, 0, 38.00, 0.50, '2023-05-07', '21:31:51', 'Cancelled'),
(11, 2, 1, 1, 32.00, 0.50, '2023-05-07', '21:32:34', 'Completed'),
(12, 2, 3, 0, 57.00, 0.50, '2023-05-07', '21:34:34', 'Completed'),
(13, 3, 2, 0, 38.00, 0.50, '2023-05-07', '21:50:23', 'Cancelled'),
(14, 3, 2, 0, 38.00, 0.50, '2023-05-07', '21:50:35', 'Cancelled'),
(15, 3, 2, 0, 38.00, 0.50, '2023-05-07', '21:52:35', 'Cancelled'),
(16, 3, 2, 0, 38.00, 0.50, '2023-05-07', '21:53:07', 'Completed'),
(17, 3, 1, 1, 32.00, 0.50, '2023-05-07', '22:07:54', 'Cancelled');

-- --------------------------------------------------------

--
-- 表的结构 `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` varchar(300) NOT NULL,
  `replies` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(1, 'hi|hello|hey|hy|greetings|hiya|yo|what\'s up|good morning|good afternoon|good evening|aloha|bonjour|hola', 'Hello there!'),
(2, 'your name|know you|call you|who you', 'My name is chatbot.'),
(3, 'where are you from', 'I\'m from GRC Cinema.'),
(4, 'bye|by|good bye|good by|see you later|take care|have a nice day|see you soon|catch you later|sayonara', 'Ok bye. See you soon!');

-- --------------------------------------------------------

--
-- 表的结构 `cinema`
--

CREATE TABLE `cinema` (
  `cinema_id` char(7) NOT NULL,
  `cinema_name` varchar(30) NOT NULL,
  `cinema_address` varchar(80) NOT NULL,
  `cinema_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `cinema`
--

INSERT INTO `cinema` (`cinema_id`, `cinema_name`, `cinema_address`, `cinema_phone`) VALUES
('JHJB001', 'GRC Johor Bahru', '108, Jalan Wong Fook, Bandar Johor, 80000 Johor Bahru, Johor', '08-98765432'),
('JHJB002', 'GRC Penang', '108, Jalan Wong Fook, Bandar Penang, 80000 Penang\r\n', '08-98965432');

-- --------------------------------------------------------

--
-- 表的结构 `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(20) NOT NULL,
  `user_id` int(12) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `cust_phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `customer`
--

INSERT INTO `customer` (`cust_id`, `user_id`, `cust_name`, `cust_phone`) VALUES
(1, 2, 'TANG LIT XUAN', '601498415645'),
(2, 2, 'TANG LIT XUAN', '601498415645'),
(3, 2, 'TANG LIT XUAN', '601498415645'),
(4, 2, 'jungle cruise', '601498415645'),
(5, 2, 'tang', '601498415645'),
(6, 2, 'TANG LIT XUAN', '601498415645'),
(7, 3, 'tang', '601498415645');

-- --------------------------------------------------------

--
-- 表的结构 `faq`
--

CREATE TABLE `faq` (
  `quest` text NOT NULL,
  `ans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `faq`
--

INSERT INTO `faq` (`quest`, `ans`) VALUES
('How do I buy movie tickets?', 'You can purchase movie tickets on the cinema website or at the venue.'),
('Are accessibility facilities available?', 'Yes, we provide barrier-free facilities to ensure that all customers can enjoy a comfortable movie-going experience.'),
('How do I choose my seat?', 'You can choose your preferred seat in the seat selection screen. We will reserve seats for you according to your choice.'),
('Are there any special offers?', 'Yes, we will offer various promotions from time to time, you can follow our latest promotions on the official website.'),
(' Is there any refund service?', 'Once the movie tickets are sold, there is no refund service. However, if you need to cancel your reservation, we will provide you with a refund service on a case-by-case basis.');

-- --------------------------------------------------------

--
-- 表的结构 `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(255) NOT NULL,
  `post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`, `post`) VALUES
(1, 'Action', 0),
(2, 'Adventure', 0),
(3, 'Animation', 0),
(4, 'Comedy', 0),
(5, 'Crime', 0),
(6, 'Drama', 0),
(7, 'Documentary', 0),
(8, 'Family', 0);

-- --------------------------------------------------------

--
-- 表的结构 `hall`
--

CREATE TABLE `hall` (
  `hall_id` int(11) NOT NULL,
  `cinema_id` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `hall`
--

INSERT INTO `hall` (`hall_id`, `cinema_id`) VALUES
(1, 'JHJB001'),
(2, 'JHJB001'),
(3, 'JHJB001'),
(4, 'JHJB001'),
(5, 'JHJB001');

-- --------------------------------------------------------

--
-- 表的结构 `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(12) NOT NULL,
  `payment_id` int(12) NOT NULL,
  `total_cost` double(7,2) NOT NULL,
  `amount_paid` double(7,2) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `payment_id`, `total_cost`, `amount_paid`, `invoice_date`, `invoice_time`) VALUES
(1, 1, 38.50, 38.50, '2023-05-07', '21:01:14'),
(2, 2, 38.50, 38.50, '2023-05-07', '21:09:28'),
(3, 3, 32.50, 32.50, '2023-05-07', '21:11:58'),
(4, 4, 26.50, 26.50, '2023-05-07', '21:13:04'),
(5, 5, 32.50, 32.50, '2023-05-07', '21:33:04'),
(6, 6, 57.50, 57.50, '2023-05-07', '21:35:01'),
(7, 7, 38.50, 38.50, '2023-05-07', '21:53:37');

-- --------------------------------------------------------

--
-- 表的结构 `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `mv_name` varchar(255) NOT NULL,
  `link1` varchar(255) NOT NULL,
  `link2` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `release_date` date NOT NULL,
  `duration` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `writter` varchar(255) NOT NULL,
  `starring` varchar(255) NOT NULL,
  `music` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `meta_description` varchar(500) NOT NULL,
  `childTicket_Price` double(5,2) NOT NULL,
  `adultTicket_Price` double(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `movie`
--

INSERT INTO `movie` (`id`, `genre_id`, `mv_name`, `link1`, `link2`, `img`, `release_date`, `duration`, `lang`, `director`, `writter`, `starring`, `music`, `country`, `meta_description`, `childTicket_Price`, `adultTicket_Price`) VALUES
(1, 3, 'Suzume', 'https://www.youtube.com/watch?v=F7nQ0VUAOXg', 'https://www.youtube.com/watch?v=Ch8NJ7UNBW4', 'Suzume.png', '2023-03-09', '122 minutes', 'Japanese', 'Makoto Shinkai', 'Makoto Shinkai', 'Nanoka Hara, Hokuto Matsumura', 'Radwimps, Kazuma Jinnouchi', 'Japan', 'Seventeen-year-old Suzume discovers a mysterious door in the mountains, and soon other doors begin appearing across Japan. As the doors open, they release disasters and destruction, and it’s up to Suzume to close them again.', 13.00, 19.00),
(2, 3, 'Your Name', 'https://www.youtube.com/watch?v=k4xGqY5IDBE', 'https://www.youtube.com/watch?v=3KR8_igDs1Y', 'Your_Name.png', '2023-03-22', '107 minutes', 'Japanese', 'Makoto Shinkai', 'Makoto Shinkai', 'Ryunosuke Kamiki, Mone Kamishiraishi', 'Radwimps', 'Japan', 'Two teenagers share a profound, magical connection upon discovering they are swapping bodies. Things manage to become even more complicated when the boy and girl decide to meet in person.', 13.00, 19.00),
(3, 3, 'Spirited Away', 'https://www.youtube.com/watch?v=CHCUkXUPkFM', 'https://www.youtube.com/watch?v=ByXuk9QqQkk&t=55s', 'Spirited_Away.png', '2023-06-13', '125 minutes', 'Japanese', 'Hayao Miyazaki', 'Hayao Miyazaki', 'Rumi Hiiragi, Miyu Irino', 'Joe Hisaishi', 'Japan', 'In this animated feature by noted Japanese director Hayao Miyazaki, 10-year-old Chihiro (Rumi Hiiragi) and her parents (Takashi Naitô, Yasuko Sawaguchi) stumble upon a seemingly abandoned amusement park. After her mother and father are turned into giant pigs, Chihiro meets the mysterious Haku (Miyu Irino), who explains that the park is a resort for supernatural beings who need a break from their time spent in the earthly realm, and that she must work there to free herself and her parents.', 13.00, 19.00),
(4, 3, 'Violet Evergarder', 'https://www.youtube.com/watch?v=OvvP8V9U72s', 'https://www.youtube.com/watch?v=7c_6p8tbaZU', 'Violet_Evergarden.png', '2023-04-22', '140 minutes', 'Japanese', 'Taichi Ishidate', 'Reiko Yoshida', 'Yui Ishikawa, Daisuke Namikawa', 'Evan Call', 'Japan', 'After the aftermath of a war, a young girl who was used as a tool for war learns to properly live. With the scars of burns, she goes back to her past to discover her true feelings towards the Major.', 13.00, 19.00),
(6, 3, 'Demon Slayer', 'https://www.youtube.com/watch?v=a9tq0aS5Zu8', 'https://www.youtube.com/watch?v=PUeB0qbisq0', 'Demon_Slayer.png', '2023-02-03', '110 minutes', 'Japanese', 'Haruo Sotozaki', 'Ufotable', 'Natsuki Hanae, Akari Kitō', 'Yuki Kajiura, Go Shiina', 'Japan', 'As Tanjiro Kamado, Zenitsu Agatsuma, and Inosuke Hashibira assist the Sound Hashira Tengen Uzui against the sibling demons Gyutaro and Daki, holders of Upper Six of the Twelve Kizuki, they realize that the only way to kill the siblings is to behead them simultaneously.', 13.00, 19.00),
(7, 6, 'Venom', 'https://www.youtube.com/watch?v=-ezfi6FQ8Ds', 'https://www.youtube.com/watch?v=-FmWuCgJmxo', 'Venom.png', '2021-09-14', '97 minutes', 'English', 'Andy Serkis', 'Tom Hardy, Kelly Marcel', 'Tom Hardy, Michelle Williams', 'Marco Beltrami', 'United States', 'Eddie Brock attempts to reignite his career by interviewing serial killer Cletus Kasady, who becomes the host of the symbiote Carnage and escapes prison after a failed execution.', 13.00, 19.00),
(8, 3, 'Weathering with You', 'https://www.youtube.com/watch?v=xIOK-D-_zcA', 'https://www.youtube.com/watch?v=59iD8WKyHyA', 'Weathering_with_You.png', '2023-03-17', '112 minutes', 'Japanese', 'Makoto Shinkai', 'Makoto Shinkai', 'Kotaro Daigo, Nana Mori', 'Radwimps', 'Japan', 'Set during a period of exceptionally rainy weather, high-school boy Hodaka Morishima runs away from his troubled rural home to Tokyo and befriends an orphan girl who can manipulate the weather.', 13.00, 19.00),
(9, 3, 'The Tunnel To Summer', 'https://www.youtube.com/watch?v=Izh-45jS3DE', 'https://www.youtube.com/watch?v=1MVHQIz7YuU', 'Summer_August.png', '2023-02-27', '83 minutes', 'Japanese', 'Tomohisa Taguchi', 'Tomohisa Taguchi', 'Marie Iitoyo, Oji Suzuka', 'Harumi Fuuki', 'Japan', 'One summer morning before school, Kaoru hears an unsettling rumor—of a mysterious tunnel that can grant any wish to those who enter it, but ages them dramatically in exchange. At first, he writes it off as nothing more than an urban legend, but that very night, he happens upon the selfsame passage: the Urashima Tunnel.', 13.00, 19.00),
(10, 3, 'Anthem of the Heart', 'https://www.youtube.com/watch?v=mllee2j-l-c', 'https://www.youtube.com/watch?v=EnbgMjdguxI', 'Anthem_of_the_Heart.png', '2023-04-01', '119 minutes', 'Japanese', 'Tatsuyuki Nagai', 'Tatsuyuki Nagai', 'Inori Minase, Kōki Uchiyama', 'Mito, Masaru Yokoyama', 'Japan', 'A girl who carries the guilt of breaking up her family with carelessly uttered words when she was young is suddenly cursed by a mysterious Egg Fairy so that she can never hurt anybody with her words again.', 13.00, 19.00),
(11, 3, 'A Silent Voice', 'N/A', 'N/A', 'A_Silent_Voice.png', '2024-10-26', '130 minutes', 'Japanese', 'Naoko Yamada', 'Yoshitoki Ōima', 'Miyu Irino, Saori Hayami', 'Kensuke Ushio', 'Japan', 'When a grade school student with impaired hearing is bullied mercilessly, she transfers to another school. Years later, one of her former tormentors sets out to make amends.', 13.00, 19.00),
(12, 3, 'A Whisker Away', 'N/A', 'N/A', 'A_Whisker_Away.png', '2024-06-14', '104 minutes', 'Japanese', 'Junichi Sato, Tomotaka Shibayama', 'Mari Okada', 'Mirai Shida, Natsuki Hanae', 'Mina Kubota', 'Japan', 'The line between human and animal starts to blur after a girl transforms herself into a cat.', 13.00, 19.00),
(13, 4, 'Kill Boksoon', 'N/A', 'N/A', 'Kill_Boksoon.png', '2024-06-10', '137 minutes', 'Korean', 'Byun Sung-hyun', 'Byun Sung-hyun', 'Jeon Do-yeon, Sol Kyung-gu', 'Lee Jin-hee, Kim Hong-jip', 'South Korea', 'At work, she\'s a renowned assassin. At home, she\'s a single mum to a teenage girl. Killing is easy. It\'s parenting that\'s the hard part.', 13.00, 19.00),
(14, 8, 'Murder Mystery 2', 'N/A', 'N/A', 'Murder_Mystery2.png', '2024-06-30', '89 minutes', 'English', 'Jeremy Garelick', 'James Vanderbilt', 'Adam Sandler, Jennifer Aniston', 'Rupert Gregson-Williams', 'United States', 'Now private detectives launching their own agency, Nick and Audrey Spitz land at the centre of an international investigation when a friend is abducted.', 13.00, 19.00),
(15, 2, 'Luther: The Fallen Sun', 'N/A', 'N/A', 'Luther.png', '2024-07-10', '129 minutes', 'English', 'Jamie Payne', 'Neil Cross', 'Idris Elba, Cynthia Erivo', 'Lorne Balfe', 'United Kingdom, United States', 'A serial killer terrorizes London while disgraced detective John Luther sits behind bars. Haunted by his failure to capture the cyber psychopath who now taunts him, Luther decides to break out of prison to finish the job by any means necessary.', 13.00, 19.00),
(16, 2, 'The Batman', 'N/A', 'N/A', 'The_Batman.png', '2024-07-04', '176 minutes', 'English', 'Matt Reeves', 'Matt Reeves, Peter Craig', 'Robert Pattinson, Zoë Kravitz', 'Michael Giacchino', 'United States', 'Batman ventures into Gotham City\'s underworld when a sadistic killer leaves behind a trail of cryptic clues. As the evidence begins to lead closer to home and the scale of the perpetrator\'s plans become clear, he must forge new relationships, unmask the culprit and bring justice to the abuse of power and corruption that has long plagued the metropolis.', 13.00, 19.00),
(17, 2, 'The Matrix Resurrections', 'N/A', 'N/A', 'The_Matrix_Resurrections.png', '2024-06-30', '148 minutes', 'English', 'Lana Wachowski', 'Lana Wachowski, David Mitchell', 'Keanu Reeves, Carrie-Anne Moss', 'Johnny Klimek, Tom Tykwer', 'United States', 'To find out if his reality is a physical or mental construct, Mr. Anderson, aka Neo, will have to choose to follow the white rabbit once more. If he\'s learned anything, it\'s that choice, while an illusion, is still the only way out of -- or into -- the Matrix. Neo already knows what he has to do, but what he doesn\'t yet know is that the Matrix is stronger, more secure and far more dangerous than ever before.', 13.00, 19.00),
(18, 4, 'Ride On', 'N/A', 'N/A', 'Ride_On.png', '2024-06-21', '126 minutes', 'Chinese', 'Larry Yang', 'Larry Yang', 'Jackie Chan, Liu Haocun', 'Jonathan Lee', 'China', 'Washed-up stuntman Luo can barely make ends meet let alone take care of his beloved stunt horse, Red Hare. Luo reluctantly seeks help from his estranged daughter and her lawyer boyfriend when notified that the horse may be auctioned off to cover his debts. Unexpectedly, Luo and Red Hare become an overnight media sensation when their real-life fight with debt collectors goes viral. And Luo gets a second chance to choose between his stunt career and his family.', 13.00, 19.00);

-- --------------------------------------------------------

--
-- 表的结构 `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(12) NOT NULL,
  `booking_id` int(16) NOT NULL,
  `cust_id` int(20) NOT NULL,
  `payment_method` varchar(30) NOT NULL,
  `payment_amount` double(7,2) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `payment`
--

INSERT INTO `payment` (`payment_id`, `booking_id`, `cust_id`, `payment_method`, `payment_amount`, `payment_date`, `payment_time`) VALUES
(1, 4, 1, 'Paypal', 38.50, '2023-05-07', '21:01:14'),
(2, 5, 2, 'Paypal', 38.50, '2023-05-07', '21:09:27'),
(3, 6, 3, 'Paypal', 32.50, '2023-05-07', '21:11:58'),
(4, 7, 4, 'Paypal', 26.50, '2023-05-07', '21:13:04'),
(5, 11, 5, 'Debit / Credit Card', 32.50, '2023-05-07', '21:33:04'),
(6, 12, 6, 'Paypal', 57.50, '2023-05-07', '21:35:01'),
(7, 16, 7, 'Debit / Credit Card', 38.50, '2023-05-07', '21:53:37');

-- --------------------------------------------------------

--
-- 表的结构 `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `rating` int(1) NOT NULL,
  `review` varchar(255) DEFAULT NULL,
  `rating_date` date NOT NULL,
  `rating_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `rating`
--

INSERT INTO `rating` (`rating_id`, `user_id`, `movie_id`, `rating`, `review`, `rating_date`, `rating_time`) VALUES
(127, 2, 7, 4, '', '2023-05-06', '21:09:05'),
(132, 5, 2, 5, 'cfhcfh', '2023-05-07', '21:46:03'),
(133, 2, 2, 4, '494984', '2023-05-07', '21:47:15'),
(137, 2, 1, 5, 'jiwejuwewef', '2023-05-07', '21:49:13'),
(138, 2, 4, 5, '', '2023-05-07', '21:49:23');

-- --------------------------------------------------------

--
-- 表的结构 `seat`
--

CREATE TABLE `seat` (
  `seat_id` varchar(11) NOT NULL,
  `hall_id` int(11) DEFAULT NULL,
  `seatRow` int(11) DEFAULT NULL,
  `seatCol` int(11) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `seat`
--

INSERT INTO `seat` (`seat_id`, `hall_id`, `seatRow`, `seatCol`, `status`) VALUES
('1A01', 1, 1, 1, 'AVAILABLE'),
('1A02', 1, 1, 2, 'AVAILABLE'),
('1A03', 1, 1, 3, 'AVAILABLE'),
('1A04', 1, 1, 4, 'AVAILABLE'),
('1A05', 1, 1, 5, 'AVAILABLE'),
('1A06', 1, 1, 6, 'AVAILABLE'),
('1A07', 1, 1, 7, 'AVAILABLE'),
('1A08', 1, 1, 8, 'AVAILABLE'),
('1A09', 1, 1, 9, 'AVAILABLE'),
('1A10', 1, 1, 10, 'AVAILABLE'),
('1A11', 1, 1, 11, 'AVAILABLE'),
('1A12', 1, 1, 12, 'AVAILABLE'),
('1A13', 1, 1, 13, 'AVAILABLE'),
('1A14', 1, 1, 14, 'AVAILABLE'),
('1A15', 1, 1, 15, 'AVAILABLE'),
('1A16', 1, 1, 16, 'AVAILABLE'),
('1A17', 1, 1, 17, 'AVAILABLE'),
('1A18', 1, 1, 18, 'AVAILABLE'),
('1B01', 1, 2, 1, 'AVAILABLE'),
('1B02', 1, 2, 2, 'AVAILABLE'),
('1B03', 1, 2, 3, 'AVAILABLE'),
('1B04', 1, 2, 4, 'AVAILABLE'),
('1B05', 1, 2, 5, 'AVAILABLE'),
('1B06', 1, 2, 6, 'AVAILABLE'),
('1B07', 1, 2, 7, 'AVAILABLE'),
('1B08', 1, 2, 8, 'AVAILABLE'),
('1B09', 1, 2, 9, 'AVAILABLE'),
('1B10', 1, 2, 10, 'AVAILABLE'),
('1B11', 1, 2, 11, 'AVAILABLE'),
('1B12', 1, 2, 12, 'AVAILABLE'),
('1B13', 1, 2, 13, 'AVAILABLE'),
('1B14', 1, 2, 14, 'AVAILABLE'),
('1B15', 1, 2, 15, 'AVAILABLE'),
('1B16', 1, 2, 16, 'AVAILABLE'),
('1B17', 1, 2, 17, 'AVAILABLE'),
('1B18', 1, 2, 18, 'AVAILABLE'),
('1C01', 1, 3, 1, 'AVAILABLE'),
('1C02', 1, 3, 2, 'AVAILABLE'),
('1C03', 1, 3, 3, 'AVAILABLE'),
('1C04', 1, 3, 4, 'AVAILABLE'),
('1C05', 1, 3, 5, 'AVAILABLE'),
('1C06', 1, 3, 6, 'AVAILABLE'),
('1C07', 1, 3, 7, 'AVAILABLE'),
('1C08', 1, 3, 8, 'AVAILABLE'),
('1C09', 1, 3, 9, 'AVAILABLE'),
('1C10', 1, 3, 10, 'AVAILABLE'),
('1C11', 1, 3, 11, 'AVAILABLE'),
('1C12', 1, 3, 12, 'AVAILABLE'),
('1C13', 1, 3, 13, 'AVAILABLE'),
('1C14', 1, 3, 14, 'AVAILABLE'),
('1C15', 1, 3, 15, 'AVAILABLE'),
('1C16', 1, 3, 16, 'AVAILABLE'),
('1C17', 1, 3, 17, 'AVAILABLE'),
('1C18', 1, 3, 18, 'AVAILABLE'),
('1D01', 1, 4, 1, 'AVAILABLE'),
('1D02', 1, 4, 2, 'AVAILABLE'),
('1D03', 1, 4, 3, 'AVAILABLE'),
('1D04', 1, 4, 4, 'AVAILABLE'),
('1D05', 1, 4, 5, 'AVAILABLE'),
('1D06', 1, 4, 6, 'AVAILABLE'),
('1D07', 1, 4, 7, 'AVAILABLE'),
('1D08', 1, 4, 8, 'AVAILABLE'),
('1D09', 1, 4, 9, 'AVAILABLE'),
('1D10', 1, 4, 10, 'AVAILABLE'),
('1D11', 1, 4, 11, 'AVAILABLE'),
('1D12', 1, 4, 12, 'AVAILABLE'),
('1D13', 1, 4, 13, 'AVAILABLE'),
('1D14', 1, 4, 14, 'AVAILABLE'),
('1D15', 1, 4, 15, 'AVAILABLE'),
('1D16', 1, 4, 16, 'AVAILABLE'),
('1D17', 1, 4, 17, 'AVAILABLE'),
('1D18', 1, 4, 18, 'AVAILABLE'),
('1E01', 1, 5, 1, 'AVAILABLE'),
('1E02', 1, 5, 2, 'AVAILABLE'),
('1E03', 1, 5, 3, 'AVAILABLE'),
('1E04', 1, 5, 4, 'AVAILABLE'),
('1E05', 1, 5, 5, 'AVAILABLE'),
('1E06', 1, 5, 6, 'AVAILABLE'),
('1E07', 1, 5, 7, 'AVAILABLE'),
('1E08', 1, 5, 8, 'AVAILABLE'),
('1E09', 1, 5, 9, 'AVAILABLE'),
('1E10', 1, 5, 10, 'AVAILABLE'),
('1E11', 1, 5, 11, 'AVAILABLE'),
('1E12', 1, 5, 12, 'AVAILABLE'),
('1E13', 1, 5, 13, 'AVAILABLE'),
('1E14', 1, 5, 14, 'AVAILABLE'),
('1E15', 1, 5, 15, 'AVAILABLE'),
('1E16', 1, 5, 16, 'AVAILABLE'),
('1E17', 1, 5, 17, 'AVAILABLE'),
('1E18', 1, 5, 18, 'AVAILABLE'),
('1F01', 1, 6, 1, 'AVAILABLE'),
('1F02', 1, 6, 2, 'AVAILABLE'),
('1F03', 1, 6, 3, 'AVAILABLE'),
('1F04', 1, 6, 4, 'AVAILABLE'),
('1F05', 1, 6, 5, 'AVAILABLE'),
('1F06', 1, 6, 6, 'AVAILABLE'),
('1F07', 1, 6, 7, 'AVAILABLE'),
('1F08', 1, 6, 8, 'AVAILABLE'),
('1F09', 1, 6, 9, 'AVAILABLE'),
('1F10', 1, 6, 10, 'AVAILABLE'),
('1F11', 1, 6, 11, 'AVAILABLE'),
('1F12', 1, 6, 12, 'AVAILABLE'),
('1F13', 1, 6, 13, 'AVAILABLE'),
('1F14', 1, 6, 14, 'AVAILABLE'),
('1F15', 1, 6, 15, 'AVAILABLE'),
('1F16', 1, 6, 16, 'AVAILABLE'),
('1F17', 1, 6, 17, 'AVAILABLE'),
('1F18', 1, 6, 18, 'AVAILABLE'),
('1G01', 1, 7, 1, 'AVAILABLE'),
('1G02', 1, 7, 2, 'AVAILABLE'),
('1G03', 1, 7, 3, 'AVAILABLE'),
('1G04', 1, 7, 4, 'AVAILABLE'),
('1G05', 1, 7, 5, 'UNAVAILABLE'),
('1G06', 1, 7, 6, 'UNAVAILABLE'),
('1G07', 1, 7, 7, 'UNAVAILABLE'),
('1G08', 1, 7, 8, 'UNAVAILABLE'),
('1G09', 1, 7, 9, 'UNAVAILABLE'),
('1G10', 1, 7, 10, 'UNAVAILABLE'),
('1G11', 1, 7, 11, 'UNAVAILABLE'),
('1G12', 1, 7, 12, 'UNAVAILABLE'),
('1G13', 1, 7, 13, 'UNAVAILABLE'),
('1G14', 1, 7, 14, 'UNAVAILABLE'),
('1G15', 1, 7, 15, 'AVAILABLE'),
('1G16', 1, 7, 16, 'AVAILABLE'),
('1G17', 1, 7, 17, 'AVAILABLE'),
('1G18', 1, 7, 18, 'AVAILABLE'),
('1H01', 1, 8, 1, 'AVAILABLE'),
('1H02', 1, 8, 2, 'AVAILABLE'),
('1H03', 1, 8, 3, 'AVAILABLE'),
('1H04', 1, 8, 4, 'AVAILABLE'),
('1H05', 1, 8, 5, 'AVAILABLE'),
('1H06', 1, 8, 6, 'AVAILABLE'),
('1H07', 1, 8, 7, 'AVAILABLE'),
('1H08', 1, 8, 8, 'AVAILABLE'),
('1H09', 1, 8, 9, 'AVAILABLE'),
('1H10', 1, 8, 10, 'AVAILABLE'),
('1H11', 1, 8, 11, 'AVAILABLE'),
('1H12', 1, 8, 12, 'AVAILABLE'),
('1H13', 1, 8, 13, 'AVAILABLE'),
('1H14', 1, 8, 14, 'AVAILABLE'),
('1H15', 1, 8, 15, 'AVAILABLE'),
('1H16', 1, 8, 16, 'AVAILABLE'),
('1H17', 1, 8, 17, 'AVAILABLE'),
('1H18', 1, 8, 18, 'AVAILABLE'),
('1I01', 1, 9, 1, 'AVAILABLE'),
('1I02', 1, 9, 2, 'AVAILABLE'),
('1I03', 1, 9, 3, 'AVAILABLE'),
('1I04', 1, 9, 4, 'AVAILABLE'),
('1I05', 1, 9, 5, 'UNAVAILABLE'),
('1I06', 1, 9, 6, 'UNAVAILABLE'),
('1I07', 1, 9, 7, 'UNAVAILABLE'),
('1I08', 1, 9, 8, 'UNAVAILABLE'),
('1I09', 1, 9, 9, 'UNAVAILABLE'),
('1I10', 1, 9, 10, 'UNAVAILABLE'),
('1I11', 1, 9, 11, 'UNAVAILABLE'),
('1I12', 1, 9, 12, 'UNAVAILABLE'),
('1I13', 1, 9, 13, 'UNAVAILABLE'),
('1I14', 1, 9, 14, 'UNAVAILABLE'),
('1I15', 1, 9, 15, 'AVAILABLE'),
('1I16', 1, 9, 16, 'AVAILABLE'),
('1I17', 1, 9, 17, 'AVAILABLE'),
('1I18', 1, 9, 18, 'AVAILABLE'),
('1J01', 1, 10, 1, 'AVAILABLE'),
('1J02', 1, 10, 2, 'AVAILABLE'),
('1J03', 1, 10, 3, 'AVAILABLE'),
('1J04', 1, 10, 4, 'AVAILABLE'),
('1J05', 1, 10, 5, 'AVAILABLE'),
('1J06', 1, 10, 6, 'AVAILABLE'),
('1J07', 1, 10, 7, 'AVAILABLE'),
('1J08', 1, 10, 8, 'AVAILABLE'),
('1J09', 1, 10, 9, 'AVAILABLE'),
('1J10', 1, 10, 10, 'AVAILABLE'),
('1J11', 1, 10, 11, 'AVAILABLE'),
('1J12', 1, 10, 12, 'AVAILABLE'),
('1J13', 1, 10, 13, 'AVAILABLE'),
('1J14', 1, 10, 14, 'AVAILABLE'),
('1J15', 1, 10, 15, 'AVAILABLE'),
('1J16', 1, 10, 16, 'AVAILABLE'),
('1J17', 1, 10, 17, 'AVAILABLE'),
('1J18', 1, 10, 18, 'AVAILABLE'),
('1K01', 1, 11, 1, 'AVAILABLE'),
('1K02', 1, 11, 2, 'AVAILABLE'),
('1K03', 1, 11, 3, 'AVAILABLE'),
('1K04', 1, 11, 4, 'AVAILABLE'),
('1K05', 1, 11, 5, 'AVAILABLE'),
('1K06', 1, 11, 6, 'AVAILABLE'),
('1K07', 1, 11, 7, 'AVAILABLE'),
('1K08', 1, 11, 8, 'AVAILABLE'),
('1K09', 1, 11, 9, 'AVAILABLE'),
('1K10', 1, 11, 10, 'AVAILABLE'),
('1K11', 1, 11, 11, 'AVAILABLE'),
('1K12', 1, 11, 12, 'AVAILABLE'),
('1K13', 1, 11, 13, 'AVAILABLE'),
('1K14', 1, 11, 14, 'AVAILABLE'),
('1K15', 1, 11, 15, 'AVAILABLE'),
('1K16', 1, 11, 16, 'AVAILABLE'),
('1K17', 1, 11, 17, 'AVAILABLE'),
('1K18', 1, 11, 18, 'AVAILABLE'),
('1L01', 1, 12, 1, 'AVAILABLE'),
('1L02', 1, 12, 2, 'AVAILABLE'),
('1L03', 1, 12, 3, 'AVAILABLE'),
('1L04', 1, 12, 4, 'AVAILABLE'),
('1L05', 1, 12, 5, 'AVAILABLE'),
('1L06', 1, 12, 6, 'AVAILABLE'),
('1L07', 1, 12, 7, 'AVAILABLE'),
('1L08', 1, 12, 8, 'AVAILABLE'),
('1L09', 1, 12, 9, 'AVAILABLE'),
('1L10', 1, 12, 10, 'AVAILABLE'),
('1L11', 1, 12, 11, 'AVAILABLE'),
('1L12', 1, 12, 12, 'AVAILABLE'),
('1L13', 1, 12, 13, 'AVAILABLE'),
('1L14', 1, 12, 14, 'AVAILABLE'),
('1L15', 1, 12, 15, 'AVAILABLE'),
('1L16', 1, 12, 16, 'AVAILABLE'),
('1L17', 1, 12, 17, 'AVAILABLE'),
('1L18', 1, 12, 18, 'AVAILABLE'),
('2A01', 2, 1, 1, 'AVAILABLE'),
('2A02', 2, 1, 2, 'AVAILABLE'),
('2A03', 2, 1, 3, 'AVAILABLE'),
('2A04', 2, 1, 4, 'AVAILABLE'),
('2A05', 2, 1, 5, 'AVAILABLE'),
('2A06', 2, 1, 6, 'AVAILABLE'),
('2A07', 2, 1, 7, 'AVAILABLE'),
('2A08', 2, 1, 8, 'AVAILABLE'),
('2A09', 2, 1, 9, 'AVAILABLE'),
('2A10', 2, 1, 10, 'AVAILABLE'),
('2A11', 2, 1, 11, 'AVAILABLE'),
('2A12', 2, 1, 12, 'AVAILABLE'),
('2A13', 2, 1, 13, 'AVAILABLE'),
('2A14', 2, 1, 14, 'AVAILABLE'),
('2A15', 2, 1, 15, 'AVAILABLE'),
('2A16', 2, 1, 16, 'AVAILABLE'),
('2A17', 2, 1, 17, 'AVAILABLE'),
('2A18', 2, 1, 18, 'AVAILABLE'),
('2B01', 2, 2, 1, 'AVAILABLE'),
('2B02', 2, 2, 2, 'AVAILABLE'),
('2B03', 2, 2, 3, 'AVAILABLE'),
('2B04', 2, 2, 4, 'AVAILABLE'),
('2B05', 2, 2, 5, 'AVAILABLE'),
('2B06', 2, 2, 6, 'AVAILABLE'),
('2B07', 2, 2, 7, 'AVAILABLE'),
('2B08', 2, 2, 8, 'AVAILABLE'),
('2B09', 2, 2, 9, 'AVAILABLE'),
('2B10', 2, 2, 10, 'AVAILABLE'),
('2B11', 2, 2, 11, 'AVAILABLE'),
('2B12', 2, 2, 12, 'AVAILABLE'),
('2B13', 2, 2, 13, 'AVAILABLE'),
('2B14', 2, 2, 14, 'AVAILABLE'),
('2B15', 2, 2, 15, 'AVAILABLE'),
('2B16', 2, 2, 16, 'AVAILABLE'),
('2B17', 2, 2, 17, 'AVAILABLE'),
('2B18', 2, 2, 18, 'AVAILABLE'),
('2C01', 2, 3, 1, 'AVAILABLE'),
('2C02', 2, 3, 2, 'AVAILABLE'),
('2C03', 2, 3, 3, 'AVAILABLE'),
('2C04', 2, 3, 4, 'AVAILABLE'),
('2C05', 2, 3, 5, 'AVAILABLE'),
('2C06', 2, 3, 6, 'AVAILABLE'),
('2C07', 2, 3, 7, 'AVAILABLE'),
('2C08', 2, 3, 8, 'AVAILABLE'),
('2C09', 2, 3, 9, 'AVAILABLE'),
('2C10', 2, 3, 10, 'AVAILABLE'),
('2C11', 2, 3, 11, 'AVAILABLE'),
('2C12', 2, 3, 12, 'AVAILABLE'),
('2C13', 2, 3, 13, 'AVAILABLE'),
('2C14', 2, 3, 14, 'AVAILABLE'),
('2C15', 2, 3, 15, 'AVAILABLE'),
('2C16', 2, 3, 16, 'AVAILABLE'),
('2C17', 2, 3, 17, 'AVAILABLE'),
('2C18', 2, 3, 18, 'AVAILABLE'),
('2D01', 2, 4, 1, 'AVAILABLE'),
('2D02', 2, 4, 2, 'AVAILABLE'),
('2D03', 2, 4, 3, 'AVAILABLE'),
('2D04', 2, 4, 4, 'AVAILABLE'),
('2D05', 2, 4, 5, 'AVAILABLE'),
('2D06', 2, 4, 6, 'AVAILABLE'),
('2D07', 2, 4, 7, 'AVAILABLE'),
('2D08', 2, 4, 8, 'AVAILABLE'),
('2D09', 2, 4, 9, 'AVAILABLE'),
('2D10', 2, 4, 10, 'AVAILABLE'),
('2D11', 2, 4, 11, 'AVAILABLE'),
('2D12', 2, 4, 12, 'AVAILABLE'),
('2D13', 2, 4, 13, 'AVAILABLE'),
('2D14', 2, 4, 14, 'AVAILABLE'),
('2D15', 2, 4, 15, 'AVAILABLE'),
('2D16', 2, 4, 16, 'AVAILABLE'),
('2D17', 2, 4, 17, 'AVAILABLE'),
('2D18', 2, 4, 18, 'AVAILABLE'),
('2E01', 2, 5, 1, 'AVAILABLE'),
('2E02', 2, 5, 2, 'AVAILABLE'),
('2E03', 2, 5, 3, 'AVAILABLE'),
('2E04', 2, 5, 4, 'AVAILABLE'),
('2E05', 2, 5, 5, 'AVAILABLE'),
('2E06', 2, 5, 6, 'AVAILABLE'),
('2E07', 2, 5, 7, 'AVAILABLE'),
('2E08', 2, 5, 8, 'AVAILABLE'),
('2E09', 2, 5, 9, 'AVAILABLE'),
('2E10', 2, 5, 10, 'AVAILABLE'),
('2E11', 2, 5, 11, 'AVAILABLE'),
('2E12', 2, 5, 12, 'AVAILABLE'),
('2E13', 2, 5, 13, 'AVAILABLE'),
('2E14', 2, 5, 14, 'AVAILABLE'),
('2E15', 2, 5, 15, 'AVAILABLE'),
('2E16', 2, 5, 16, 'AVAILABLE'),
('2E17', 2, 5, 17, 'AVAILABLE'),
('2E18', 2, 5, 18, 'AVAILABLE'),
('2F01', 2, 6, 1, 'AVAILABLE'),
('2F02', 2, 6, 2, 'AVAILABLE'),
('2F03', 2, 6, 3, 'AVAILABLE'),
('2F04', 2, 6, 4, 'AVAILABLE'),
('2F05', 2, 6, 5, 'AVAILABLE'),
('2F06', 2, 6, 6, 'AVAILABLE'),
('2F07', 2, 6, 7, 'AVAILABLE'),
('2F08', 2, 6, 8, 'AVAILABLE'),
('2F09', 2, 6, 9, 'AVAILABLE'),
('2F10', 2, 6, 10, 'AVAILABLE'),
('2F11', 2, 6, 11, 'AVAILABLE'),
('2F12', 2, 6, 12, 'AVAILABLE'),
('2F13', 2, 6, 13, 'AVAILABLE'),
('2F14', 2, 6, 14, 'AVAILABLE'),
('2F15', 2, 6, 15, 'AVAILABLE'),
('2F16', 2, 6, 16, 'AVAILABLE'),
('2F17', 2, 6, 17, 'AVAILABLE'),
('2F18', 2, 6, 18, 'AVAILABLE'),
('2G01', 2, 7, 1, 'AVAILABLE'),
('2G02', 2, 7, 2, 'AVAILABLE'),
('2G03', 2, 7, 3, 'AVAILABLE'),
('2G04', 2, 7, 4, 'AVAILABLE'),
('2G05', 2, 7, 5, 'AVAILABLE'),
('2G06', 2, 7, 6, 'AVAILABLE'),
('2G07', 2, 7, 7, 'AVAILABLE'),
('2G08', 2, 7, 8, 'AVAILABLE'),
('2G09', 2, 7, 9, 'AVAILABLE'),
('2G10', 2, 7, 10, 'AVAILABLE'),
('2G11', 2, 7, 11, 'AVAILABLE'),
('2G12', 2, 7, 12, 'AVAILABLE'),
('2G13', 2, 7, 13, 'AVAILABLE'),
('2G14', 2, 7, 14, 'AVAILABLE'),
('2G15', 2, 7, 15, 'AVAILABLE'),
('2G16', 2, 7, 16, 'AVAILABLE'),
('2G17', 2, 7, 17, 'AVAILABLE'),
('2G18', 2, 7, 18, 'AVAILABLE'),
('2H01', 2, 8, 1, 'AVAILABLE'),
('2H02', 2, 8, 2, 'AVAILABLE'),
('2H03', 2, 8, 3, 'AVAILABLE'),
('2H04', 2, 8, 4, 'AVAILABLE'),
('2H05', 2, 8, 5, 'AVAILABLE'),
('2H06', 2, 8, 6, 'AVAILABLE'),
('2H07', 2, 8, 7, 'AVAILABLE'),
('2H08', 2, 8, 8, 'AVAILABLE'),
('2H09', 2, 8, 9, 'AVAILABLE'),
('2H10', 2, 8, 10, 'AVAILABLE'),
('2H11', 2, 8, 11, 'AVAILABLE'),
('2H12', 2, 8, 12, 'AVAILABLE'),
('2H13', 2, 8, 13, 'AVAILABLE'),
('2H14', 2, 8, 14, 'AVAILABLE'),
('2H15', 2, 8, 15, 'AVAILABLE'),
('2H16', 2, 8, 16, 'AVAILABLE'),
('2H17', 2, 8, 17, 'AVAILABLE'),
('2H18', 2, 8, 18, 'AVAILABLE'),
('2I01', 2, 9, 1, 'AVAILABLE'),
('2I02', 2, 9, 2, 'AVAILABLE'),
('2I03', 2, 9, 3, 'AVAILABLE'),
('2I04', 2, 9, 4, 'AVAILABLE'),
('2I05', 2, 9, 5, 'AVAILABLE'),
('2I06', 2, 9, 6, 'AVAILABLE'),
('2I07', 2, 9, 7, 'AVAILABLE'),
('2I08', 2, 9, 8, 'AVAILABLE'),
('2I09', 2, 9, 9, 'AVAILABLE'),
('2I10', 2, 9, 10, 'AVAILABLE'),
('2I11', 2, 9, 11, 'AVAILABLE'),
('2I12', 2, 9, 12, 'AVAILABLE'),
('2I13', 2, 9, 13, 'AVAILABLE'),
('2I14', 2, 9, 14, 'AVAILABLE'),
('2I15', 2, 9, 15, 'AVAILABLE'),
('2I16', 2, 9, 16, 'AVAILABLE'),
('2I17', 2, 9, 17, 'AVAILABLE'),
('2I18', 2, 9, 18, 'AVAILABLE'),
('2J01', 2, 10, 1, 'AVAILABLE'),
('2J02', 2, 10, 2, 'AVAILABLE'),
('2J03', 2, 10, 3, 'AVAILABLE'),
('2J04', 2, 10, 4, 'AVAILABLE'),
('2J05', 2, 10, 5, 'AVAILABLE'),
('2J06', 2, 10, 6, 'AVAILABLE'),
('2J07', 2, 10, 7, 'AVAILABLE'),
('2J08', 2, 10, 8, 'AVAILABLE'),
('2J09', 2, 10, 9, 'AVAILABLE'),
('2J10', 2, 10, 10, 'AVAILABLE'),
('2J11', 2, 10, 11, 'AVAILABLE'),
('2J12', 2, 10, 12, 'AVAILABLE'),
('2J13', 2, 10, 13, 'AVAILABLE'),
('2J14', 2, 10, 14, 'AVAILABLE'),
('2J15', 2, 10, 15, 'AVAILABLE'),
('2J16', 2, 10, 16, 'AVAILABLE'),
('2J17', 2, 10, 17, 'AVAILABLE'),
('2J18', 2, 10, 18, 'AVAILABLE'),
('2K01', 2, 11, 1, 'AVAILABLE'),
('2K02', 2, 11, 2, 'AVAILABLE'),
('2K03', 2, 11, 3, 'AVAILABLE'),
('2K04', 2, 11, 4, 'AVAILABLE'),
('2K05', 2, 11, 5, 'AVAILABLE'),
('2K06', 2, 11, 6, 'AVAILABLE'),
('2K07', 2, 11, 7, 'AVAILABLE'),
('2K08', 2, 11, 8, 'AVAILABLE'),
('2K09', 2, 11, 9, 'AVAILABLE'),
('2K10', 2, 11, 10, 'AVAILABLE'),
('2K11', 2, 11, 11, 'AVAILABLE'),
('2K12', 2, 11, 12, 'AVAILABLE'),
('2K13', 2, 11, 13, 'AVAILABLE'),
('2K14', 2, 11, 14, 'AVAILABLE'),
('2K15', 2, 11, 15, 'AVAILABLE'),
('2K16', 2, 11, 16, 'AVAILABLE'),
('2K17', 2, 11, 17, 'AVAILABLE'),
('2K18', 2, 11, 18, 'AVAILABLE'),
('2L01', 2, 12, 1, 'AVAILABLE'),
('2L02', 2, 12, 2, 'AVAILABLE'),
('2L03', 2, 12, 3, 'AVAILABLE'),
('2L04', 2, 12, 4, 'AVAILABLE'),
('2L05', 2, 12, 5, 'AVAILABLE'),
('2L06', 2, 12, 6, 'AVAILABLE'),
('2L07', 2, 12, 7, 'AVAILABLE'),
('2L08', 2, 12, 8, 'AVAILABLE'),
('2L09', 2, 12, 9, 'AVAILABLE'),
('2L10', 2, 12, 10, 'AVAILABLE'),
('2L11', 2, 12, 11, 'AVAILABLE'),
('2L12', 2, 12, 12, 'AVAILABLE'),
('2L13', 2, 12, 13, 'AVAILABLE'),
('2L14', 2, 12, 14, 'AVAILABLE'),
('2L15', 2, 12, 15, 'AVAILABLE'),
('2L16', 2, 12, 16, 'AVAILABLE'),
('2L17', 2, 12, 17, 'AVAILABLE'),
('2L18', 2, 12, 18, 'AVAILABLE'),
('3A01', 3, 1, 1, 'AVAILABLE'),
('3A02', 3, 1, 2, 'AVAILABLE'),
('3A03', 3, 1, 3, 'AVAILABLE'),
('3A04', 3, 1, 4, 'AVAILABLE'),
('3A05', 3, 1, 5, 'AVAILABLE'),
('3A06', 3, 1, 6, 'AVAILABLE'),
('3A07', 3, 1, 7, 'AVAILABLE'),
('3A08', 3, 1, 8, 'AVAILABLE'),
('3A09', 3, 1, 9, 'AVAILABLE'),
('3A10', 3, 1, 10, 'AVAILABLE'),
('3A11', 3, 1, 11, 'AVAILABLE'),
('3A12', 3, 1, 12, 'AVAILABLE'),
('3A13', 3, 1, 13, 'AVAILABLE'),
('3A14', 3, 1, 14, 'AVAILABLE'),
('3A15', 3, 1, 15, 'AVAILABLE'),
('3A16', 3, 1, 16, 'AVAILABLE'),
('3A17', 3, 1, 17, 'AVAILABLE'),
('3A18', 3, 1, 18, 'AVAILABLE'),
('3B01', 3, 2, 1, 'AVAILABLE'),
('3B02', 3, 2, 2, 'AVAILABLE'),
('3B03', 3, 2, 3, 'AVAILABLE'),
('3B04', 3, 2, 4, 'AVAILABLE'),
('3B05', 3, 2, 5, 'AVAILABLE'),
('3B06', 3, 2, 6, 'UNAVAILABLE'),
('3B07', 3, 2, 7, 'UNAVAILABLE'),
('3B08', 3, 2, 8, 'UNAVAILABLE'),
('3B09', 3, 2, 9, 'AVAILABLE'),
('3B10', 3, 2, 10, 'AVAILABLE'),
('3B11', 3, 2, 11, 'UNAVAILABLE'),
('3B12', 3, 2, 12, 'UNAVAILABLE'),
('3B13', 3, 2, 13, 'UNAVAILABLE'),
('3B14', 3, 2, 14, 'AVAILABLE'),
('3B15', 3, 2, 15, 'AVAILABLE'),
('3B16', 3, 2, 16, 'AVAILABLE'),
('3B17', 3, 2, 17, 'AVAILABLE'),
('3B18', 3, 2, 18, 'AVAILABLE'),
('3C01', 3, 3, 1, 'AVAILABLE'),
('3C02', 3, 3, 2, 'AVAILABLE'),
('3C03', 3, 3, 3, 'AVAILABLE'),
('3C04', 3, 3, 4, 'AVAILABLE'),
('3C05', 3, 3, 5, 'UNAVAILABLE'),
('3C06', 3, 3, 6, 'AVAILABLE'),
('3C07', 3, 3, 7, 'AVAILABLE'),
('3C08', 3, 3, 8, 'AVAILABLE'),
('3C09', 3, 3, 9, 'UNAVAILABLE'),
('3C10', 3, 3, 10, 'UNAVAILABLE'),
('3C11', 3, 3, 11, 'AVAILABLE'),
('3C12', 3, 3, 12, 'AVAILABLE'),
('3C13', 3, 3, 13, 'AVAILABLE'),
('3C14', 3, 3, 14, 'UNAVAILABLE'),
('3C15', 3, 3, 15, 'AVAILABLE'),
('3C16', 3, 3, 16, 'AVAILABLE'),
('3C17', 3, 3, 17, 'AVAILABLE'),
('3C18', 3, 3, 18, 'AVAILABLE'),
('3D01', 3, 4, 1, 'AVAILABLE'),
('3D02', 3, 4, 2, 'AVAILABLE'),
('3D03', 3, 4, 3, 'AVAILABLE'),
('3D04', 3, 4, 4, 'AVAILABLE'),
('3D05', 3, 4, 5, 'UNAVAILABLE'),
('3D06', 3, 4, 6, 'AVAILABLE'),
('3D07', 3, 4, 7, 'AVAILABLE'),
('3D08', 3, 4, 8, 'AVAILABLE'),
('3D09', 3, 4, 9, 'AVAILABLE'),
('3D10', 3, 4, 10, 'AVAILABLE'),
('3D11', 3, 4, 11, 'AVAILABLE'),
('3D12', 3, 4, 12, 'AVAILABLE'),
('3D13', 3, 4, 13, 'AVAILABLE'),
('3D14', 3, 4, 14, 'UNAVAILABLE'),
('3D15', 3, 4, 15, 'AVAILABLE'),
('3D16', 3, 4, 16, 'AVAILABLE'),
('3D17', 3, 4, 17, 'AVAILABLE'),
('3D18', 3, 4, 18, 'AVAILABLE'),
('3E01', 3, 5, 1, 'AVAILABLE'),
('3E02', 3, 5, 2, 'AVAILABLE'),
('3E03', 3, 5, 3, 'AVAILABLE'),
('3E04', 3, 5, 4, 'AVAILABLE'),
('3E05', 3, 5, 5, 'UNAVAILABLE'),
('3E06', 3, 5, 6, 'AVAILABLE'),
('3E07', 3, 5, 7, 'AVAILABLE'),
('3E08', 3, 5, 8, 'AVAILABLE'),
('3E09', 3, 5, 9, 'AVAILABLE'),
('3E10', 3, 5, 10, 'AVAILABLE'),
('3E11', 3, 5, 11, 'AVAILABLE'),
('3E12', 3, 5, 12, 'AVAILABLE'),
('3E13', 3, 5, 13, 'AVAILABLE'),
('3E14', 3, 5, 14, 'UNAVAILABLE'),
('3E15', 3, 5, 15, 'AVAILABLE'),
('3E16', 3, 5, 16, 'AVAILABLE'),
('3E17', 3, 5, 17, 'AVAILABLE'),
('3E18', 3, 5, 18, 'AVAILABLE'),
('3F01', 3, 6, 1, 'AVAILABLE'),
('3F02', 3, 6, 2, 'AVAILABLE'),
('3F03', 3, 6, 3, 'AVAILABLE'),
('3F04', 3, 6, 4, 'AVAILABLE'),
('3F05', 3, 6, 5, 'UNAVAILABLE'),
('3F06', 3, 6, 6, 'AVAILABLE'),
('3F07', 3, 6, 7, 'AVAILABLE'),
('3F08', 3, 6, 8, 'AVAILABLE'),
('3F09', 3, 6, 9, 'AVAILABLE'),
('3F10', 3, 6, 10, 'AVAILABLE'),
('3F11', 3, 6, 11, 'AVAILABLE'),
('3F12', 3, 6, 12, 'AVAILABLE'),
('3F13', 3, 6, 13, 'AVAILABLE'),
('3F14', 3, 6, 14, 'UNAVAILABLE'),
('3F15', 3, 6, 15, 'AVAILABLE'),
('3F16', 3, 6, 16, 'AVAILABLE'),
('3F17', 3, 6, 17, 'AVAILABLE'),
('3F18', 3, 6, 18, 'AVAILABLE'),
('3G01', 3, 7, 1, 'AVAILABLE'),
('3G02', 3, 7, 2, 'AVAILABLE'),
('3G03', 3, 7, 3, 'AVAILABLE'),
('3G04', 3, 7, 4, 'AVAILABLE'),
('3G05', 3, 7, 5, 'AVAILABLE'),
('3G06', 3, 7, 6, 'UNAVAILABLE'),
('3G07', 3, 7, 7, 'AVAILABLE'),
('3G08', 3, 7, 8, 'AVAILABLE'),
('3G09', 3, 7, 9, 'AVAILABLE'),
('3G10', 3, 7, 10, 'AVAILABLE'),
('3G11', 3, 7, 11, 'AVAILABLE'),
('3G12', 3, 7, 12, 'AVAILABLE'),
('3G13', 3, 7, 13, 'UNAVAILABLE'),
('3G14', 3, 7, 14, 'AVAILABLE'),
('3G15', 3, 7, 15, 'AVAILABLE'),
('3G16', 3, 7, 16, 'AVAILABLE'),
('3G17', 3, 7, 17, 'AVAILABLE'),
('3G18', 3, 7, 18, 'AVAILABLE'),
('3H01', 3, 8, 1, 'AVAILABLE'),
('3H02', 3, 8, 2, 'AVAILABLE'),
('3H03', 3, 8, 3, 'AVAILABLE'),
('3H04', 3, 8, 4, 'AVAILABLE'),
('3H05', 3, 8, 5, 'AVAILABLE'),
('3H06', 3, 8, 6, 'AVAILABLE'),
('3H07', 3, 8, 7, 'UNAVAILABLE'),
('3H08', 3, 8, 8, 'AVAILABLE'),
('3H09', 3, 8, 9, 'AVAILABLE'),
('3H10', 3, 8, 10, 'AVAILABLE'),
('3H11', 3, 8, 11, 'AVAILABLE'),
('3H12', 3, 8, 12, 'UNAVAILABLE'),
('3H13', 3, 8, 13, 'AVAILABLE'),
('3H14', 3, 8, 14, 'AVAILABLE'),
('3H15', 3, 8, 15, 'AVAILABLE'),
('3H16', 3, 8, 16, 'AVAILABLE'),
('3H17', 3, 8, 17, 'AVAILABLE'),
('3H18', 3, 8, 18, 'AVAILABLE'),
('3I01', 3, 9, 1, 'AVAILABLE'),
('3I02', 3, 9, 2, 'AVAILABLE'),
('3I03', 3, 9, 3, 'AVAILABLE'),
('3I04', 3, 9, 4, 'AVAILABLE'),
('3I05', 3, 9, 5, 'AVAILABLE'),
('3I06', 3, 9, 6, 'AVAILABLE'),
('3I07', 3, 9, 7, 'AVAILABLE'),
('3I08', 3, 9, 8, 'UNAVAILABLE'),
('3I09', 3, 9, 9, 'AVAILABLE'),
('3I10', 3, 9, 10, 'AVAILABLE'),
('3I11', 3, 9, 11, 'UNAVAILABLE'),
('3I12', 3, 9, 12, 'AVAILABLE'),
('3I13', 3, 9, 13, 'AVAILABLE'),
('3I14', 3, 9, 14, 'AVAILABLE'),
('3I15', 3, 9, 15, 'AVAILABLE'),
('3I16', 3, 9, 16, 'AVAILABLE'),
('3I17', 3, 9, 17, 'AVAILABLE'),
('3I18', 3, 9, 18, 'AVAILABLE'),
('3J01', 3, 10, 1, 'AVAILABLE'),
('3J02', 3, 10, 2, 'AVAILABLE'),
('3J03', 3, 10, 3, 'AVAILABLE'),
('3J04', 3, 10, 4, 'AVAILABLE'),
('3J05', 3, 10, 5, 'AVAILABLE'),
('3J06', 3, 10, 6, 'AVAILABLE'),
('3J07', 3, 10, 7, 'AVAILABLE'),
('3J08', 3, 10, 8, 'AVAILABLE'),
('3J09', 3, 10, 9, 'UNAVAILABLE'),
('3J10', 3, 10, 10, 'UNAVAILABLE'),
('3J11', 3, 10, 11, 'AVAILABLE'),
('3J12', 3, 10, 12, 'AVAILABLE'),
('3J13', 3, 10, 13, 'AVAILABLE'),
('3J14', 3, 10, 14, 'AVAILABLE'),
('3J15', 3, 10, 15, 'AVAILABLE'),
('3J16', 3, 10, 16, 'AVAILABLE'),
('3J17', 3, 10, 17, 'AVAILABLE'),
('3J18', 3, 10, 18, 'AVAILABLE'),
('3K01', 3, 11, 1, 'AVAILABLE'),
('3K02', 3, 11, 2, 'AVAILABLE'),
('3K03', 3, 11, 3, 'AVAILABLE'),
('3K04', 3, 11, 4, 'AVAILABLE'),
('3K05', 3, 11, 5, 'AVAILABLE'),
('3K06', 3, 11, 6, 'AVAILABLE'),
('3K07', 3, 11, 7, 'AVAILABLE'),
('3K08', 3, 11, 8, 'AVAILABLE'),
('3K09', 3, 11, 9, 'AVAILABLE'),
('3K10', 3, 11, 10, 'AVAILABLE'),
('3K11', 3, 11, 11, 'AVAILABLE'),
('3K12', 3, 11, 12, 'AVAILABLE'),
('3K13', 3, 11, 13, 'AVAILABLE'),
('3K14', 3, 11, 14, 'AVAILABLE'),
('3K15', 3, 11, 15, 'AVAILABLE'),
('3K16', 3, 11, 16, 'AVAILABLE'),
('3K17', 3, 11, 17, 'AVAILABLE'),
('3K18', 3, 11, 18, 'AVAILABLE'),
('3L01', 3, 12, 1, 'AVAILABLE'),
('3L02', 3, 12, 2, 'AVAILABLE'),
('3L03', 3, 12, 3, 'AVAILABLE'),
('3L04', 3, 12, 4, 'AVAILABLE'),
('3L05', 3, 12, 5, 'AVAILABLE'),
('3L06', 3, 12, 6, 'AVAILABLE'),
('3L07', 3, 12, 7, 'AVAILABLE'),
('3L08', 3, 12, 8, 'AVAILABLE'),
('3L09', 3, 12, 9, 'AVAILABLE'),
('3L10', 3, 12, 10, 'AVAILABLE'),
('3L11', 3, 12, 11, 'AVAILABLE'),
('3L12', 3, 12, 12, 'AVAILABLE'),
('3L13', 3, 12, 13, 'AVAILABLE'),
('3L14', 3, 12, 14, 'AVAILABLE'),
('3L15', 3, 12, 15, 'AVAILABLE'),
('3L16', 3, 12, 16, 'AVAILABLE'),
('3L17', 3, 12, 17, 'AVAILABLE'),
('3L18', 3, 12, 18, 'AVAILABLE'),
('4A01', 4, 1, 1, 'AVAILABLE'),
('4A02', 4, 1, 2, 'AVAILABLE'),
('4A03', 4, 1, 3, 'AVAILABLE'),
('4A04', 4, 1, 4, 'AVAILABLE'),
('4A05', 4, 1, 5, 'AVAILABLE'),
('4A06', 4, 1, 6, 'AVAILABLE'),
('4A07', 4, 1, 7, 'AVAILABLE'),
('4A08', 4, 1, 8, 'AVAILABLE'),
('4A09', 4, 1, 9, 'AVAILABLE'),
('4A10', 4, 1, 10, 'AVAILABLE'),
('4A11', 4, 1, 11, 'AVAILABLE'),
('4A12', 4, 1, 12, 'AVAILABLE'),
('4A13', 4, 1, 13, 'AVAILABLE'),
('4A14', 4, 1, 14, 'AVAILABLE'),
('4A15', 4, 1, 15, 'AVAILABLE'),
('4A16', 4, 1, 16, 'AVAILABLE'),
('4A17', 4, 1, 17, 'AVAILABLE'),
('4A18', 4, 1, 18, 'AVAILABLE'),
('4B01', 4, 2, 1, 'AVAILABLE'),
('4B02', 4, 2, 2, 'AVAILABLE'),
('4B03', 4, 2, 3, 'AVAILABLE'),
('4B04', 4, 2, 4, 'AVAILABLE'),
('4B05', 4, 2, 5, 'AVAILABLE'),
('4B06', 4, 2, 6, 'AVAILABLE'),
('4B07', 4, 2, 7, 'AVAILABLE'),
('4B08', 4, 2, 8, 'AVAILABLE'),
('4B09', 4, 2, 9, 'AVAILABLE'),
('4B10', 4, 2, 10, 'AVAILABLE'),
('4B11', 4, 2, 11, 'AVAILABLE'),
('4B12', 4, 2, 12, 'AVAILABLE'),
('4B13', 4, 2, 13, 'AVAILABLE'),
('4B14', 4, 2, 14, 'AVAILABLE'),
('4B15', 4, 2, 15, 'AVAILABLE'),
('4B16', 4, 2, 16, 'AVAILABLE'),
('4B17', 4, 2, 17, 'AVAILABLE'),
('4B18', 4, 2, 18, 'AVAILABLE'),
('4C01', 4, 3, 1, 'AVAILABLE'),
('4C02', 4, 3, 2, 'AVAILABLE'),
('4C03', 4, 3, 3, 'AVAILABLE'),
('4C04', 4, 3, 4, 'AVAILABLE'),
('4C05', 4, 3, 5, 'AVAILABLE'),
('4C06', 4, 3, 6, 'AVAILABLE'),
('4C07', 4, 3, 7, 'AVAILABLE'),
('4C08', 4, 3, 8, 'AVAILABLE'),
('4C09', 4, 3, 9, 'AVAILABLE'),
('4C10', 4, 3, 10, 'AVAILABLE'),
('4C11', 4, 3, 11, 'AVAILABLE'),
('4C12', 4, 3, 12, 'AVAILABLE'),
('4C13', 4, 3, 13, 'AVAILABLE'),
('4C14', 4, 3, 14, 'AVAILABLE'),
('4C15', 4, 3, 15, 'AVAILABLE'),
('4C16', 4, 3, 16, 'AVAILABLE'),
('4C17', 4, 3, 17, 'AVAILABLE'),
('4C18', 4, 3, 18, 'AVAILABLE'),
('4D01', 4, 4, 1, 'AVAILABLE'),
('4D02', 4, 4, 2, 'AVAILABLE'),
('4D03', 4, 4, 3, 'AVAILABLE'),
('4D04', 4, 4, 4, 'AVAILABLE'),
('4D05', 4, 4, 5, 'AVAILABLE'),
('4D06', 4, 4, 6, 'AVAILABLE'),
('4D07', 4, 4, 7, 'AVAILABLE'),
('4D08', 4, 4, 8, 'AVAILABLE'),
('4D09', 4, 4, 9, 'AVAILABLE'),
('4D10', 4, 4, 10, 'AVAILABLE'),
('4D11', 4, 4, 11, 'AVAILABLE'),
('4D12', 4, 4, 12, 'AVAILABLE'),
('4D13', 4, 4, 13, 'AVAILABLE'),
('4D14', 4, 4, 14, 'AVAILABLE'),
('4D15', 4, 4, 15, 'AVAILABLE'),
('4D16', 4, 4, 16, 'AVAILABLE'),
('4D17', 4, 4, 17, 'AVAILABLE'),
('4D18', 4, 4, 18, 'AVAILABLE'),
('4E01', 4, 5, 1, 'AVAILABLE'),
('4E02', 4, 5, 2, 'AVAILABLE'),
('4E03', 4, 5, 3, 'AVAILABLE'),
('4E04', 4, 5, 4, 'AVAILABLE'),
('4E05', 4, 5, 5, 'AVAILABLE'),
('4E06', 4, 5, 6, 'AVAILABLE'),
('4E07', 4, 5, 7, 'AVAILABLE'),
('4E08', 4, 5, 8, 'AVAILABLE'),
('4E09', 4, 5, 9, 'AVAILABLE'),
('4E10', 4, 5, 10, 'AVAILABLE'),
('4E11', 4, 5, 11, 'AVAILABLE'),
('4E12', 4, 5, 12, 'AVAILABLE'),
('4E13', 4, 5, 13, 'AVAILABLE'),
('4E14', 4, 5, 14, 'AVAILABLE'),
('4E15', 4, 5, 15, 'AVAILABLE'),
('4E16', 4, 5, 16, 'AVAILABLE'),
('4E17', 4, 5, 17, 'AVAILABLE'),
('4E18', 4, 5, 18, 'AVAILABLE'),
('4F01', 4, 6, 1, 'AVAILABLE'),
('4F02', 4, 6, 2, 'AVAILABLE'),
('4F03', 4, 6, 3, 'AVAILABLE'),
('4F04', 4, 6, 4, 'AVAILABLE'),
('4F05', 4, 6, 5, 'AVAILABLE'),
('4F06', 4, 6, 6, 'AVAILABLE'),
('4F07', 4, 6, 7, 'AVAILABLE'),
('4F08', 4, 6, 8, 'AVAILABLE'),
('4F09', 4, 6, 9, 'AVAILABLE'),
('4F10', 4, 6, 10, 'AVAILABLE'),
('4F11', 4, 6, 11, 'AVAILABLE'),
('4F12', 4, 6, 12, 'AVAILABLE'),
('4F13', 4, 6, 13, 'AVAILABLE'),
('4F14', 4, 6, 14, 'AVAILABLE'),
('4F15', 4, 6, 15, 'AVAILABLE'),
('4F16', 4, 6, 16, 'AVAILABLE'),
('4F17', 4, 6, 17, 'AVAILABLE'),
('4F18', 4, 6, 18, 'AVAILABLE'),
('4G01', 4, 7, 1, 'AVAILABLE'),
('4G02', 4, 7, 2, 'AVAILABLE'),
('4G03', 4, 7, 3, 'AVAILABLE'),
('4G04', 4, 7, 4, 'AVAILABLE'),
('4G05', 4, 7, 5, 'AVAILABLE'),
('4G06', 4, 7, 6, 'AVAILABLE'),
('4G07', 4, 7, 7, 'AVAILABLE'),
('4G08', 4, 7, 8, 'AVAILABLE'),
('4G09', 4, 7, 9, 'AVAILABLE'),
('4G10', 4, 7, 10, 'AVAILABLE'),
('4G11', 4, 7, 11, 'AVAILABLE'),
('4G12', 4, 7, 12, 'AVAILABLE'),
('4G13', 4, 7, 13, 'AVAILABLE'),
('4G14', 4, 7, 14, 'AVAILABLE'),
('4G15', 4, 7, 15, 'AVAILABLE'),
('4G16', 4, 7, 16, 'AVAILABLE'),
('4G17', 4, 7, 17, 'AVAILABLE'),
('4G18', 4, 7, 18, 'AVAILABLE'),
('4H01', 4, 8, 1, 'AVAILABLE'),
('4H02', 4, 8, 2, 'AVAILABLE'),
('4H03', 4, 8, 3, 'AVAILABLE'),
('4H04', 4, 8, 4, 'AVAILABLE'),
('4H05', 4, 8, 5, 'AVAILABLE'),
('4H06', 4, 8, 6, 'AVAILABLE'),
('4H07', 4, 8, 7, 'AVAILABLE'),
('4H08', 4, 8, 8, 'AVAILABLE'),
('4H09', 4, 8, 9, 'AVAILABLE'),
('4H10', 4, 8, 10, 'AVAILABLE'),
('4H11', 4, 8, 11, 'AVAILABLE'),
('4H12', 4, 8, 12, 'AVAILABLE'),
('4H13', 4, 8, 13, 'AVAILABLE'),
('4H14', 4, 8, 14, 'AVAILABLE'),
('4H15', 4, 8, 15, 'AVAILABLE'),
('4H16', 4, 8, 16, 'AVAILABLE'),
('4H17', 4, 8, 17, 'AVAILABLE'),
('4H18', 4, 8, 18, 'AVAILABLE'),
('4I01', 4, 9, 1, 'AVAILABLE'),
('4I02', 4, 9, 2, 'AVAILABLE'),
('4I03', 4, 9, 3, 'AVAILABLE'),
('4I04', 4, 9, 4, 'AVAILABLE'),
('4I05', 4, 9, 5, 'AVAILABLE'),
('4I06', 4, 9, 6, 'AVAILABLE'),
('4I07', 4, 9, 7, 'AVAILABLE'),
('4I08', 4, 9, 8, 'AVAILABLE'),
('4I09', 4, 9, 9, 'AVAILABLE'),
('4I10', 4, 9, 10, 'AVAILABLE'),
('4I11', 4, 9, 11, 'AVAILABLE'),
('4I12', 4, 9, 12, 'AVAILABLE'),
('4I13', 4, 9, 13, 'AVAILABLE'),
('4I14', 4, 9, 14, 'AVAILABLE'),
('4I15', 4, 9, 15, 'AVAILABLE'),
('4I16', 4, 9, 16, 'AVAILABLE'),
('4I17', 4, 9, 17, 'AVAILABLE'),
('4I18', 4, 9, 18, 'AVAILABLE'),
('4J01', 4, 10, 1, 'AVAILABLE'),
('4J02', 4, 10, 2, 'AVAILABLE'),
('4J03', 4, 10, 3, 'AVAILABLE'),
('4J04', 4, 10, 4, 'AVAILABLE'),
('4J05', 4, 10, 5, 'AVAILABLE'),
('4J06', 4, 10, 6, 'AVAILABLE'),
('4J07', 4, 10, 7, 'AVAILABLE'),
('4J08', 4, 10, 8, 'AVAILABLE'),
('4J09', 4, 10, 9, 'AVAILABLE'),
('4J10', 4, 10, 10, 'AVAILABLE'),
('4J11', 4, 10, 11, 'AVAILABLE'),
('4J12', 4, 10, 12, 'AVAILABLE'),
('4J13', 4, 10, 13, 'AVAILABLE'),
('4J14', 4, 10, 14, 'AVAILABLE'),
('4J15', 4, 10, 15, 'AVAILABLE'),
('4J16', 4, 10, 16, 'AVAILABLE'),
('4J17', 4, 10, 17, 'AVAILABLE'),
('4J18', 4, 10, 18, 'AVAILABLE'),
('4K01', 4, 11, 1, 'AVAILABLE'),
('4K02', 4, 11, 2, 'AVAILABLE'),
('4K03', 4, 11, 3, 'AVAILABLE'),
('4K04', 4, 11, 4, 'AVAILABLE'),
('4K05', 4, 11, 5, 'AVAILABLE'),
('4K06', 4, 11, 6, 'AVAILABLE'),
('4K07', 4, 11, 7, 'AVAILABLE'),
('4K08', 4, 11, 8, 'AVAILABLE'),
('4K09', 4, 11, 9, 'AVAILABLE'),
('4K10', 4, 11, 10, 'AVAILABLE'),
('4K11', 4, 11, 11, 'AVAILABLE'),
('4K12', 4, 11, 12, 'AVAILABLE'),
('4K13', 4, 11, 13, 'AVAILABLE'),
('4K14', 4, 11, 14, 'AVAILABLE'),
('4K15', 4, 11, 15, 'AVAILABLE'),
('4K16', 4, 11, 16, 'AVAILABLE'),
('4K17', 4, 11, 17, 'AVAILABLE'),
('4K18', 4, 11, 18, 'AVAILABLE'),
('4L01', 4, 12, 1, 'AVAILABLE'),
('4L02', 4, 12, 2, 'AVAILABLE'),
('4L03', 4, 12, 3, 'AVAILABLE'),
('4L04', 4, 12, 4, 'AVAILABLE'),
('4L05', 4, 12, 5, 'AVAILABLE'),
('4L06', 4, 12, 6, 'AVAILABLE'),
('4L07', 4, 12, 7, 'AVAILABLE'),
('4L08', 4, 12, 8, 'AVAILABLE'),
('4L09', 4, 12, 9, 'AVAILABLE'),
('4L10', 4, 12, 10, 'AVAILABLE'),
('4L11', 4, 12, 11, 'AVAILABLE'),
('4L12', 4, 12, 12, 'AVAILABLE'),
('4L13', 4, 12, 13, 'AVAILABLE'),
('4L14', 4, 12, 14, 'AVAILABLE'),
('4L15', 4, 12, 15, 'AVAILABLE'),
('4L16', 4, 12, 16, 'AVAILABLE'),
('4L17', 4, 12, 17, 'AVAILABLE'),
('4L18', 4, 12, 18, 'AVAILABLE'),
('5A01', 5, 1, 1, 'AVAILABLE'),
('5A02', 5, 1, 2, 'AVAILABLE'),
('5A03', 5, 1, 3, 'AVAILABLE'),
('5A04', 5, 1, 4, 'AVAILABLE'),
('5A05', 5, 1, 5, 'AVAILABLE'),
('5A06', 5, 1, 6, 'AVAILABLE'),
('5A07', 5, 1, 7, 'AVAILABLE'),
('5A08', 5, 1, 8, 'AVAILABLE'),
('5A09', 5, 1, 9, 'AVAILABLE'),
('5A10', 5, 1, 10, 'AVAILABLE'),
('5A11', 5, 1, 11, 'AVAILABLE'),
('5A12', 5, 1, 12, 'AVAILABLE'),
('5A13', 5, 1, 13, 'AVAILABLE'),
('5A14', 5, 1, 14, 'AVAILABLE'),
('5A15', 5, 1, 15, 'AVAILABLE'),
('5A16', 5, 1, 16, 'AVAILABLE'),
('5A17', 5, 1, 17, 'AVAILABLE'),
('5A18', 5, 1, 18, 'AVAILABLE'),
('5B01', 5, 2, 1, 'AVAILABLE'),
('5B02', 5, 2, 2, 'AVAILABLE'),
('5B03', 5, 2, 3, 'AVAILABLE'),
('5B04', 5, 2, 4, 'AVAILABLE'),
('5B05', 5, 2, 5, 'AVAILABLE'),
('5B06', 5, 2, 6, 'AVAILABLE'),
('5B07', 5, 2, 7, 'AVAILABLE'),
('5B08', 5, 2, 8, 'AVAILABLE'),
('5B09', 5, 2, 9, 'AVAILABLE'),
('5B10', 5, 2, 10, 'AVAILABLE'),
('5B11', 5, 2, 11, 'AVAILABLE'),
('5B12', 5, 2, 12, 'AVAILABLE'),
('5B13', 5, 2, 13, 'AVAILABLE'),
('5B14', 5, 2, 14, 'AVAILABLE'),
('5B15', 5, 2, 15, 'AVAILABLE'),
('5B16', 5, 2, 16, 'AVAILABLE'),
('5B17', 5, 2, 17, 'AVAILABLE'),
('5B18', 5, 2, 18, 'AVAILABLE'),
('5C01', 5, 3, 1, 'AVAILABLE'),
('5C02', 5, 3, 2, 'AVAILABLE'),
('5C03', 5, 3, 3, 'AVAILABLE'),
('5C04', 5, 3, 4, 'AVAILABLE'),
('5C05', 5, 3, 5, 'AVAILABLE'),
('5C06', 5, 3, 6, 'AVAILABLE'),
('5C07', 5, 3, 7, 'AVAILABLE'),
('5C08', 5, 3, 8, 'AVAILABLE'),
('5C09', 5, 3, 9, 'AVAILABLE'),
('5C10', 5, 3, 10, 'AVAILABLE'),
('5C11', 5, 3, 11, 'AVAILABLE'),
('5C12', 5, 3, 12, 'AVAILABLE'),
('5C13', 5, 3, 13, 'AVAILABLE'),
('5C14', 5, 3, 14, 'AVAILABLE'),
('5C15', 5, 3, 15, 'AVAILABLE'),
('5C16', 5, 3, 16, 'AVAILABLE'),
('5C17', 5, 3, 17, 'AVAILABLE'),
('5C18', 5, 3, 18, 'AVAILABLE'),
('5D01', 5, 4, 1, 'AVAILABLE'),
('5D02', 5, 4, 2, 'AVAILABLE'),
('5D03', 5, 4, 3, 'AVAILABLE'),
('5D04', 5, 4, 4, 'AVAILABLE'),
('5D05', 5, 4, 5, 'AVAILABLE'),
('5D06', 5, 4, 6, 'AVAILABLE'),
('5D07', 5, 4, 7, 'AVAILABLE'),
('5D08', 5, 4, 8, 'AVAILABLE'),
('5D09', 5, 4, 9, 'AVAILABLE'),
('5D10', 5, 4, 10, 'AVAILABLE'),
('5D11', 5, 4, 11, 'AVAILABLE'),
('5D12', 5, 4, 12, 'AVAILABLE'),
('5D13', 5, 4, 13, 'AVAILABLE'),
('5D14', 5, 4, 14, 'AVAILABLE'),
('5D15', 5, 4, 15, 'AVAILABLE'),
('5D16', 5, 4, 16, 'AVAILABLE'),
('5D17', 5, 4, 17, 'AVAILABLE'),
('5D18', 5, 4, 18, 'AVAILABLE'),
('5E01', 5, 5, 1, 'AVAILABLE'),
('5E02', 5, 5, 2, 'AVAILABLE'),
('5E03', 5, 5, 3, 'AVAILABLE'),
('5E04', 5, 5, 4, 'AVAILABLE'),
('5E05', 5, 5, 5, 'AVAILABLE'),
('5E06', 5, 5, 6, 'AVAILABLE'),
('5E07', 5, 5, 7, 'AVAILABLE'),
('5E08', 5, 5, 8, 'AVAILABLE'),
('5E09', 5, 5, 9, 'AVAILABLE'),
('5E10', 5, 5, 10, 'AVAILABLE'),
('5E11', 5, 5, 11, 'AVAILABLE'),
('5E12', 5, 5, 12, 'AVAILABLE'),
('5E13', 5, 5, 13, 'AVAILABLE'),
('5E14', 5, 5, 14, 'AVAILABLE'),
('5E15', 5, 5, 15, 'AVAILABLE'),
('5E16', 5, 5, 16, 'AVAILABLE'),
('5E17', 5, 5, 17, 'AVAILABLE'),
('5E18', 5, 5, 18, 'AVAILABLE'),
('5F01', 5, 6, 1, 'AVAILABLE'),
('5F02', 5, 6, 2, 'AVAILABLE'),
('5F03', 5, 6, 3, 'AVAILABLE'),
('5F04', 5, 6, 4, 'AVAILABLE'),
('5F05', 5, 6, 5, 'AVAILABLE'),
('5F06', 5, 6, 6, 'AVAILABLE'),
('5F07', 5, 6, 7, 'AVAILABLE'),
('5F08', 5, 6, 8, 'AVAILABLE'),
('5F09', 5, 6, 9, 'AVAILABLE'),
('5F10', 5, 6, 10, 'AVAILABLE'),
('5F11', 5, 6, 11, 'AVAILABLE'),
('5F12', 5, 6, 12, 'AVAILABLE'),
('5F13', 5, 6, 13, 'AVAILABLE'),
('5F14', 5, 6, 14, 'AVAILABLE'),
('5F15', 5, 6, 15, 'AVAILABLE'),
('5F16', 5, 6, 16, 'AVAILABLE'),
('5F17', 5, 6, 17, 'AVAILABLE'),
('5F18', 5, 6, 18, 'AVAILABLE'),
('5G01', 5, 7, 1, 'AVAILABLE'),
('5G02', 5, 7, 2, 'AVAILABLE'),
('5G03', 5, 7, 3, 'AVAILABLE'),
('5G04', 5, 7, 4, 'AVAILABLE'),
('5G05', 5, 7, 5, 'AVAILABLE'),
('5G06', 5, 7, 6, 'AVAILABLE'),
('5G07', 5, 7, 7, 'AVAILABLE'),
('5G08', 5, 7, 8, 'AVAILABLE'),
('5G09', 5, 7, 9, 'AVAILABLE'),
('5G10', 5, 7, 10, 'AVAILABLE'),
('5G11', 5, 7, 11, 'AVAILABLE'),
('5G12', 5, 7, 12, 'AVAILABLE'),
('5G13', 5, 7, 13, 'AVAILABLE'),
('5G14', 5, 7, 14, 'AVAILABLE'),
('5G15', 5, 7, 15, 'AVAILABLE'),
('5G16', 5, 7, 16, 'AVAILABLE'),
('5G17', 5, 7, 17, 'AVAILABLE'),
('5G18', 5, 7, 18, 'AVAILABLE'),
('5H01', 5, 8, 1, 'AVAILABLE'),
('5H02', 5, 8, 2, 'AVAILABLE'),
('5H03', 5, 8, 3, 'AVAILABLE'),
('5H04', 5, 8, 4, 'AVAILABLE'),
('5H05', 5, 8, 5, 'AVAILABLE'),
('5H06', 5, 8, 6, 'AVAILABLE'),
('5H07', 5, 8, 7, 'AVAILABLE'),
('5H08', 5, 8, 8, 'AVAILABLE'),
('5H09', 5, 8, 9, 'AVAILABLE'),
('5H10', 5, 8, 10, 'AVAILABLE'),
('5H11', 5, 8, 11, 'AVAILABLE'),
('5H12', 5, 8, 12, 'AVAILABLE'),
('5H13', 5, 8, 13, 'AVAILABLE'),
('5H14', 5, 8, 14, 'AVAILABLE'),
('5H15', 5, 8, 15, 'AVAILABLE'),
('5H16', 5, 8, 16, 'AVAILABLE'),
('5H17', 5, 8, 17, 'AVAILABLE'),
('5H18', 5, 8, 18, 'AVAILABLE'),
('5I01', 5, 9, 1, 'AVAILABLE'),
('5I02', 5, 9, 2, 'AVAILABLE'),
('5I03', 5, 9, 3, 'AVAILABLE'),
('5I04', 5, 9, 4, 'AVAILABLE'),
('5I05', 5, 9, 5, 'AVAILABLE'),
('5I06', 5, 9, 6, 'AVAILABLE'),
('5I07', 5, 9, 7, 'AVAILABLE'),
('5I08', 5, 9, 8, 'AVAILABLE'),
('5I09', 5, 9, 9, 'AVAILABLE'),
('5I10', 5, 9, 10, 'AVAILABLE'),
('5I11', 5, 9, 11, 'AVAILABLE'),
('5I12', 5, 9, 12, 'AVAILABLE'),
('5I13', 5, 9, 13, 'AVAILABLE'),
('5I14', 5, 9, 14, 'AVAILABLE'),
('5I15', 5, 9, 15, 'AVAILABLE'),
('5I16', 5, 9, 16, 'AVAILABLE'),
('5I17', 5, 9, 17, 'AVAILABLE'),
('5I18', 5, 9, 18, 'AVAILABLE'),
('5J01', 5, 10, 1, 'AVAILABLE'),
('5J02', 5, 10, 2, 'AVAILABLE'),
('5J03', 5, 10, 3, 'AVAILABLE'),
('5J04', 5, 10, 4, 'AVAILABLE'),
('5J05', 5, 10, 5, 'AVAILABLE'),
('5J06', 5, 10, 6, 'AVAILABLE'),
('5J07', 5, 10, 7, 'AVAILABLE'),
('5J08', 5, 10, 8, 'AVAILABLE'),
('5J09', 5, 10, 9, 'AVAILABLE'),
('5J10', 5, 10, 10, 'AVAILABLE'),
('5J11', 5, 10, 11, 'AVAILABLE'),
('5J12', 5, 10, 12, 'AVAILABLE'),
('5J13', 5, 10, 13, 'AVAILABLE'),
('5J14', 5, 10, 14, 'AVAILABLE'),
('5J15', 5, 10, 15, 'AVAILABLE'),
('5J16', 5, 10, 16, 'AVAILABLE'),
('5J17', 5, 10, 17, 'AVAILABLE'),
('5J18', 5, 10, 18, 'AVAILABLE'),
('5K01', 5, 11, 1, 'AVAILABLE'),
('5K02', 5, 11, 2, 'AVAILABLE'),
('5K03', 5, 11, 3, 'AVAILABLE'),
('5K04', 5, 11, 4, 'AVAILABLE'),
('5K05', 5, 11, 5, 'AVAILABLE'),
('5K06', 5, 11, 6, 'AVAILABLE'),
('5K07', 5, 11, 7, 'AVAILABLE'),
('5K08', 5, 11, 8, 'AVAILABLE'),
('5K09', 5, 11, 9, 'AVAILABLE'),
('5K10', 5, 11, 10, 'AVAILABLE'),
('5K11', 5, 11, 11, 'AVAILABLE'),
('5K12', 5, 11, 12, 'AVAILABLE'),
('5K13', 5, 11, 13, 'AVAILABLE'),
('5K14', 5, 11, 14, 'AVAILABLE'),
('5K15', 5, 11, 15, 'AVAILABLE'),
('5K16', 5, 11, 16, 'AVAILABLE'),
('5K17', 5, 11, 17, 'AVAILABLE'),
('5K18', 5, 11, 18, 'AVAILABLE'),
('5L01', 5, 12, 1, 'AVAILABLE'),
('5L02', 5, 12, 2, 'AVAILABLE'),
('5L03', 5, 12, 3, 'AVAILABLE'),
('5L04', 5, 12, 4, 'AVAILABLE'),
('5L05', 5, 12, 5, 'AVAILABLE'),
('5L06', 5, 12, 6, 'AVAILABLE'),
('5L07', 5, 12, 7, 'AVAILABLE'),
('5L08', 5, 12, 8, 'AVAILABLE'),
('5L09', 5, 12, 9, 'AVAILABLE'),
('5L10', 5, 12, 10, 'AVAILABLE'),
('5L11', 5, 12, 11, 'AVAILABLE'),
('5L12', 5, 12, 12, 'AVAILABLE'),
('5L13', 5, 12, 13, 'AVAILABLE'),
('5L14', 5, 12, 14, 'AVAILABLE'),
('5L15', 5, 12, 15, 'AVAILABLE'),
('5L16', 5, 12, 16, 'AVAILABLE'),
('5L17', 5, 12, 17, 'AVAILABLE'),
('5L18', 5, 12, 18, 'AVAILABLE');

-- --------------------------------------------------------

--
-- 表的结构 `staff_account`
--

CREATE TABLE `staff_account` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(30) NOT NULL,
  `staff_email` varchar(50) NOT NULL,
  `staff_phone` varchar(20) NOT NULL,
  `staff_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `staff_account`
--

INSERT INTO `staff_account` (`staff_id`, `staff_name`, `staff_email`, `staff_phone`, `staff_password`) VALUES
(1, 'Tan', 'tanglx@gmail.com', '012-3456-7890', '12345678'),
(2, 'Xuan Lit Tang', 'xltang@gmail.com', '011-2222-3344', '6666666'),
(3, 'Gary', 'gary21@gmail.com', '011-2321-9432', '555888999'),
(4, 'Joe', 'jame1998@hotmail.com', '016-7722-329', '77338491'),
(5, 'Jenny', 'rb@gmail.com', '019-2322-385', 'rb1990abc'),
(6, 'Michael', 'mc98@gmail.com', '011-8877-9753', 'michael123abc'),
(7, 'Donald', 'donald12@gmail.com', '019-2234-8348', 'donald2361ABC'),
(8, 'Daniel', 'daniel@gmail.com', '012-3884-488', '123daniel321'),
(9, 'Albert', 'albert2001@gmail.com', '011-8231-9000', '123456abc'),
(11, 'StupidYong', 'stupidchinyong@stupid.com', '012-2321-2999', 'imstupiad'),
(12, 'Julie', 'julie123@gmail.com', '012-3456-7890', '123456789');

-- --------------------------------------------------------

--
-- 表的结构 `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(20) NOT NULL,
  `booking_id` int(12) DEFAULT NULL,
  `movie_id` int(10) NOT NULL,
  `seat_id` varchar(11) NOT NULL,
  `hall_id` int(11) NOT NULL,
  `ticket_type` varchar(25) NOT NULL,
  `ticket_price` double(5,2) NOT NULL,
  `movie_date` date NOT NULL,
  `movie_time` time NOT NULL,
  `ticket_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `booking_id`, `movie_id`, `seat_id`, `hall_id`, `ticket_type`, `ticket_price`, `movie_date`, `movie_time`, `ticket_status`) VALUES
(7, 4, 1, '1E07', 1, 'adult', 19.00, '2023-05-07', '10:00:00', 'Sold'),
(8, 4, 1, '1E08', 1, 'adult', 19.00, '2023-05-07', '10:00:00', 'Sold'),
(9, 5, 1, '1E09', 1, 'adult', 19.00, '2023-05-07', '10:00:00', 'Sold'),
(10, 5, 1, '1E10', 1, 'adult', 19.00, '2023-05-07', '10:00:00', 'Sold'),
(11, 6, 1, '1D11', 1, 'adult', 19.00, '2023-05-07', '10:00:00', 'Sold'),
(12, 6, 1, '1D12', 1, 'child', 13.00, '2023-05-07', '10:00:00', 'Sold'),
(13, 7, 1, '1E11', 1, 'child', 13.00, '2023-05-07', '10:00:00', 'Sold'),
(14, 7, 1, '1E12', 1, 'child', 13.00, '2023-05-07', '10:00:00', 'Sold'),
(15, 8, 8, '1C10', 1, 'adult', 19.00, '2023-05-07', '10:00:00', 'Cancelled'),
(16, 8, 8, '1C11', 1, 'adult', 19.00, '2023-05-07', '10:00:00', 'Cancelled'),
(17, 9, 8, '1A15', 1, 'adult', 19.00, '2023-05-07', '10:00:00', 'Cancelled'),
(18, 9, 8, '1A16', 1, 'child', 13.00, '2023-05-07', '10:00:00', 'Cancelled'),
(19, 10, 8, '1C10', 1, 'adult', 19.00, '2023-05-07', '10:00:00', 'Cancelled'),
(20, 10, 8, '1C11', 1, 'adult', 19.00, '2023-05-07', '10:00:00', 'Cancelled'),
(21, 11, 8, '1C10', 1, 'adult', 19.00, '2023-05-07', '10:00:00', 'Sold'),
(22, 11, 8, '1C11', 1, 'child', 13.00, '2023-05-07', '10:00:00', 'Sold'),
(23, 12, 1, '1D11', 1, 'adult', 19.00, '2023-05-07', '16:00:00', 'Sold'),
(24, 12, 1, '1D12', 1, 'adult', 19.00, '2023-05-07', '16:00:00', 'Sold'),
(25, 12, 1, '1D13', 1, 'adult', 19.00, '2023-05-07', '16:00:00', 'Sold'),
(26, 13, 4, '1B13', 1, 'adult', 19.00, '2023-05-07', '10:00:00', 'Cancelled'),
(27, 13, 4, '1B14', 1, 'adult', 19.00, '2023-05-07', '10:00:00', 'Cancelled'),
(28, 14, 4, '1E13', 1, 'adult', 19.00, '2023-05-07', '10:00:00', 'Cancelled'),
(29, 14, 4, '1E14', 1, 'adult', 19.00, '2023-05-07', '10:00:00', 'Cancelled'),
(30, 15, 2, '1C09', 1, 'adult', 19.00, '2023-05-06', '10:00:00', 'Cancelled'),
(31, 15, 2, '1C10', 1, 'adult', 19.00, '2023-05-06', '10:00:00', 'Cancelled'),
(32, 16, 2, '1E13', 1, 'adult', 19.00, '2023-05-07', '10:00:00', 'Sold'),
(33, 16, 2, '1E14', 1, 'adult', 19.00, '2023-05-07', '10:00:00', 'Sold'),
(34, 17, 6, '4G09', 4, 'adult', 19.00, '2023-05-07', '16:00:00', 'Cancelled'),
(35, 17, 6, '4G10', 4, 'child', 13.00, '2023-05-07', '16:00:00', 'Cancelled');

-- --------------------------------------------------------

--
-- 表的结构 `timetable`
--

CREATE TABLE `timetable` (
  `hall_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `time` time NOT NULL,
  `mv_name` varchar(255) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `timetable`
--

INSERT INTO `timetable` (`hall_id`, `movie_id`, `time`, `mv_name`, `no`) VALUES
(2, 7, '10:00:00', 'Venom', 2),
(3, 2, '10:00:00', 'Your Name', 3),
(4, 3, '10:00:00', 'Spirited Away', 4),
(5, 1, '10:00:00', 'Suzume', 5),
(1, 4, '13:00:00', 'Violet Evergarder', 6),
(3, 9, '13:00:00', 'The Tunnel to Summer', 8),
(4, 1, '13:00:00', 'Suzume', 9),
(5, 6, '13:00:00', 'Demon Slayer', 10),
(1, 6, '16:00:00', 'Demon Slayer', 11),
(2, 9, '16:00:00', 'The Tunnel to Summer', 12),
(3, 2, '16:00:00', 'Your Name', 13),
(5, 8, '16:00:00', 'Weathering with You', 15),
(1, 3, '19:00:00', 'Spirited Away', 16),
(2, 8, '19:00:00', 'Weathering with You', 17),
(3, 4, '19:00:00', 'Violet Evergarder', 18),
(4, 7, '19:00:00', 'Venom', 19),
(5, 2, '19:00:00', 'Your Name', 20),
(1, 0, '10:00:00', ' ', 34),
(4, 1, '16:00:00', 'Suzume', 35),
(2, 3, '13:00:00', 'Spirited Away', 36),
(1, 0, '22:00:00', '', 41),
(2, 0, '22:00:00', '', 42),
(3, 10, '22:00:00', 'Anthem of the Heart', 43),
(4, 0, '22:00:00', '', 44),
(5, 0, '22:00:00', '', 45);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT 'user',
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `verify_token` varchar(255) NOT NULL,
  `OTP` int(6) NOT NULL,
  `verify_status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0 = NO, 1 = YES',
  `join_date` date DEFAULT NULL,
  `profile_img` varchar(255) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `life` tinyint(1) NOT NULL DEFAULT 5,
  `last_attempt_time` int(50) NOT NULL DEFAULT 0,
  `account_available` tinyint(2) NOT NULL DEFAULT 1 COMMENT '0 - Banned, 1 - Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_type`, `email`, `password`, `verify_token`, `OTP`, `verify_status`, `join_date`, `profile_img`, `phone`, `life`, `last_attempt_time`, `account_available`) VALUES
(1, 'admin', 'admin', 'admin123@gmail.com', '$2y$10$fgbKui2z3jfSqFF3nvLAb.m0mXVqAeYYDPnWkjmXQuSugyexLPgHO', '', 0, 0, '2023-04-09', '', '016-6658-9985', 5, 1683358240, 1),
(2, 'zhengyang', 'user', 'zhengyang040910@gmail.com', '$2y$10$Sk.P9pw5ArZn8jsXLGrohuBEt0NCq8Kpn3l4fF2v.gfKl2eUeiFhu', '013f8221619ccef285995a7064166396', 0, 1, '2023-04-09', '', '011-5454-989', 5, 1683357102, 1),
(3, 'zhengsheng', 'user', 'zhengsheng0910@gmail.com', '$2y$10$BSB3.swXNZNXg2sUiCUumOeebQyi3osOyWg8Kn7YmZsJAuSmN7fWS', 'dad7fe2bc411519fcc2c3f8970f66978', 0, 1, '2023-04-09', '', '', 5, 0, 1),
(4, 'litxuan', 'user', 'tanglx598@gmail.com', '$2y$10$CoBESmNDBuXhrZrfR61rWeVzebp57garpIAo/ZXBFKv42qMzQheEy', '2ce34553405ba11a59e950cf5a5c4c58', 0, 1, '2023-04-09', '', '', 5, 1683357393, 1),
(5, 'yang', 'user', 'luahzy-pm22@student.tarc.edu.my', '$2y$10$C3FqC8oRnFvVc2AWSVis7.nqmd6MWI998eg6kaKW03M3Si74J84r6', 'ea0872176745e3dac8426ee4c8f33c65', 0, 1, '2023-04-11', 'Demon_Slayer-slideshow.png', '', 5, 1683449945, 1),
(22, 'sheng', 'user', 'luahzs-pm22@student.tarc.edu.my', '$2y$10$wiZwi90ulg9WJbzU/wzYtuhsW3FVI7Z8fpq84W2t5wgIr/luvbuP.', 'a814908345fea60bddef4f96b5ed0524', 0, 1, '2023-05-06', 'Violet_Evergarden.png', '', 5, 0, 1),
(23, 'Johnathon', 'user', 'john@gmail.com', '', '', 0, 0, '2023-05-07', '', '011-9988-6455', 5, 0, 1),
(26, 'sandy', 'admin', 'sandy@gmail.com', '$2y$10$bPBfOKfiRXuIQcml2f8JvuOZogTYAA5AkHqod.EHZUAJ43s3kalt6', '', 0, 0, '2023-05-02', '', '012-2342-2341', 5, 1683458568, 1),
(29, 'Martin', 'admin', 'Mar@gmail.com', '$2y$10$m8dkCxzNiyHeXT7Kjan/9ukugFTehnSKQM9wbUCp6bflyQ5FjnrlO', '', 0, 0, '2023-05-02', '', '013-7878-6201', 5, 0, 1),
(30, 'Johnathon', 'admin', 'John123@gmail.com', '$2y$10$sswdd5qg9WKin54GQoZHteotXV5AwrWyudUa0bxz44mm5QgCJccBm', '', 0, 0, '2023-05-02', '', '011-9987-3024', 5, 0, 1),
(31, 'May', 'admin', 'may@gmail.com', '$2y$10$MKuUQmbb9gGDw4dVbZxFieGmvftCB/jib8MZwTQYg6yUzY19fv2gW', '', 0, 0, '2023-05-07', '', '017-9899-998', 5, 0, 1),
(32, 'Ken', 'cashier', 'ken23@gmail.com', '$2y$10$UXnzcUCN29.gH/FnSBMpiuA4Qu9ls2KrA9s//gwKJYEgBYFip8DW6', '', 0, 0, '2023-05-05', '', '012-4599-962', 5, 0, 1),
(33, 'Kyile', 'cashier', 'ky@gmail.com', '$2y$10$ldYx0Tc97mXPQG6PT54oY.5gnEM4Db.rdnPq8AQ4ezUOqA4Ox9oXC', '', 0, 0, '2023-05-06', '', '017-9987-663', 5, 0, 1),
(34, 'Jack', 'cashier', 'jack@gmail.com', '$2y$10$wXawFci1nE3/IF2tZns6xec0YbsccXncM/vrLjEuo.gVTfA5d740y', '', 0, 0, '2023-05-07', '', '017-9985-3352', 5, 0, 1),
(35, 'Mandy', 'cashier', 'mandy@gmail.com', '$2y$10$eb12kaUBEuc3OG96jqov3.vOqPfdr5jGZbt8TyqfDouVn53k0RPy6', '', 0, 0, '2023-05-07', '', '011-7452-3514', 5, 0, 1),
(36, 'Mandy', 'cashier', 'mandy@gmail.com', '$2y$10$4ZGfzC1VbguSB5YFH48UfukrWMlZb0kAtQCPMwJ8rYu4gHYmG.Svu', '', 0, 0, '2023-05-07', '', '011-7452-3514', 5, 0, 1),
(37, 'd', 'admin', 's@d.com', '$2y$10$.MrtqA6qSV8nvSBrbzxDr.naUReXlfqSROP/G9HeFRSOhSK6cwhAq', '', 0, 0, '2023-05-07', '', '014-8742-6325', 5, 0, 1),
(38, 'sd', 'admin', 'D2@fd.com', '$2y$10$KyxmRv/w1W60gTS5uVA9HOh.Lq8Ym1YRosVx55bkYCQ6vFKdOCbJi', '', 0, 0, '2023-05-07', '', '014-6222-8744', 5, 0, 1);

--
-- 转储表的索引
--

--
-- 表的索引 `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`cinema_id`);

--
-- 表的索引 `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- 表的索引 `hall`
--
ALTER TABLE `hall`
  ADD PRIMARY KEY (`hall_id`),
  ADD KEY `cinema_id` (`cinema_id`);

--
-- 表的索引 `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- 表的索引 `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- 表的索引 `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- 表的索引 `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seat_id`),
  ADD KEY `hall_id` (`hall_id`);

--
-- 表的索引 `staff_account`
--
ALTER TABLE `staff_account`
  ADD PRIMARY KEY (`staff_id`);

--
-- 表的索引 `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `hall_id` (`hall_id`),
  ADD KEY `seat_id` (`seat_id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- 表的索引 `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`no`);

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `users_name` (`user_name`),
  ADD KEY `email` (`email`),
  ADD KEY `password` (`password`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用表AUTO_INCREMENT `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用表AUTO_INCREMENT `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 使用表AUTO_INCREMENT `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- 使用表AUTO_INCREMENT `staff_account`
--
ALTER TABLE `staff_account`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用表AUTO_INCREMENT `timetable`
--
ALTER TABLE `timetable`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- 限制导出的表
--

--
-- 限制表 `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- 限制表 `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- 限制表 `hall`
--
ALTER TABLE `hall`
  ADD CONSTRAINT `hall_ibfk_1` FOREIGN KEY (`cinema_id`) REFERENCES `cinema` (`cinema_id`);

--
-- 限制表 `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`);

--
-- 限制表 `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`);

--
-- 限制表 `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- 限制表 `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`hall_id`) REFERENCES `hall` (`hall_id`);

--
-- 限制表 `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`hall_id`) REFERENCES `hall` (`hall_id`),
  ADD CONSTRAINT `ticket_ibfk_4` FOREIGN KEY (`seat_id`) REFERENCES `seat` (`seat_id`),
  ADD CONSTRAINT `ticket_ibfk_5` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  ADD CONSTRAINT `ticket_ibfk_6` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
