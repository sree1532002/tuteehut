-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2020 at 08:12 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tuteehut`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('adtuteeminhut', 'eetuthut@123');

-- --------------------------------------------------------

--
-- Table structure for table `connection`
--

CREATE TABLE `connection` (
  `id` int(11) NOT NULL,
  `heading` varchar(200) NOT NULL,
  `image1` varchar(200) NOT NULL,
  `image2` varchar(200) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `visibility` int(11) NOT NULL DEFAULT 1,
  `quizid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `connection`
--

INSERT INTO `connection` (`id`, `heading`, `image1`, `image2`, `answer`, `visibility`, `quizid`) VALUES
(2, 'Try2', 'mypic.jpeg', 'me.jpeg', 'me mine', 1, 3),
(3, 'try3', 'me.jpeg', 'mine.jpeg', 'kjk', 1, 3),
(4, 'try444444', 'me.jpeg', 'd.jpeg', 'hi hello000000001111111111111', 1, 3),
(5, 'New try', 'temple.jpg', 'temple2.jpg', 't', 1, 3),
(6, 'Try6', 'tree-736885_1280.jpg', 'home.jpg', 'tytrh', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `sno` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `definition` longtext NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`sno`, `name`, `definition`, `image`) VALUES
(1, 'IT', 'Information Technology covers engineering subjects and technologies combined with important aspects of IT like <u>computer networks, web-based applications, control systems, artificial intelligence, embedded systems, mobile computing, information retrieval and transmission</u>. These and other relevant subjects could help prepare students to think and brainstorm ways technology can be used to help people in everyday activities, put these ideas into implementation after development, and then be able to improve and maintain them. \r\n\r\nTo be eligible, a minimum of fifty percent is usually required in the twelfth standard exams with physics, mathematics and chemistry. Many companies have IT departments to manage the computers, networks and other areas of their organization. \r\n\r\nOther job opportunities include technical writing, computer programming, network administration, web designing, web developing, technical support and software testing.\r\n\r\n                  ', '../home/uploads/IT.jpg'),
(2, 'ECE', '<b>Electronic engineering </b> (also called electronics and communications engineering) is an electrical engineering discipline which utilizes <u>nonlinear and active electrical components</u> (such as semiconductor devices, especially transistors and diodes) to design electronic circuits, devices, integrated circuits and their systems. The discipline typically also designs passive electrical components, usually based on printed circuit boards.                \r\n\r\nTo a large extent, the modern discipline of electronic engineering was born out of telephone, radio, and television equipment development and the large amount of electronic systems development during World War II of radar, sonar, communication systems, and advanced munitions and weapon systems. In the interwar years, the subject was known as radio engineering and it was only in the late 1950s that the term electronic engineering started to emerge.', '../home/uploads/ece.jpg'),
(3, 'CSE', 'Computer Science Engineering (CSE) encompasses a variety of topics that relates to computation, like analysis of algorithms, programming languages, program design, software, and computer hardware.\r\n\r\nComputer Science engineering has roots in electrical engineering, mathematics, and linguistics. In the past Computer Science was taught as part of mathematics or engineering departments & in the recent days it has emerged as a separate engineering field.\r\n\r\nCourses usually include introduction to programming, introduction to algorithms and data structures, computer architecture, operating systems, computer networks, parallel computing, embedded systems, algorithms design, circuit analysis and electronics, digital logic and processor design, computer graphics etc.', '../home/uploads/cse.jpg'),
(4, 'Textile', 'Textile Engineering is in growing demand due to diverse cultures and traditions around the world and it is one of the most popular disciplines in engineering/technology. \"Textile Engineering\" is a big research field of technology that deals with all activities of producing textile fabric & yarns which are involved in the process of textile manufacturing. It includes process engineering that spins around the garment, color, and fabric line of industries.\r\n\r\nThe technology and science in Textile Engineering comprises designing and controlling all aspects of fiber, textile & apparel processes, fiber, clothing products, and machinery. Textile engineers are involved in many aspects of textile manufacturing, from process engineering, R&D, production control, technical sales, quality control, and types of equipment to procedures that create all these fibers, fabrics, and Yarns.  \r\n\r\nSkilled textile engineers are required by the top companies. If a candidate is planning for a career in textile engineering then he/she should begin with an undergraduate programme followed by a master\'s programme in Textile Engineering.              ', '../home/uploads/textile.jpg'),
(8, 'EEE', '“Electrical & Electronics Engineering” is a growing and one of the most sought disciplines in the field of engineering study. It comprises with the electrical engineering and electronics engineering.\r\n\r\nIt is originated by the electrical engineering. By the technically modernization of the world and computerization in our work field, it is necessary to use and understand the circuits and computerized devices in electrical & electronic field.\r\n\r\nThe electrical & electronics engineering (EEE) involves with the power. It can be existed in various forms like turbine, hydro, gas, fuel cell, solar, wind or geothermal energy. It involves the use, storage and generation of the power and energy.', '../home/uploads/eee.jpg'),
(9, 'Mechanical', 'Mechanical engineering is an engineering branch that combines engineering physics and mathematics principles with materials science to design, analyze, manufacture, and maintain mechanical systems. It is one of the oldest and broadest of the engineering branches.\r\n\r\nMechanical engineering emerged as a field during the Industrial Revolution in Europe in the 18th century; however, its development can be traced back several thousand years around the world. In the 19th century, developments in physics led to the development of mechanical engineering science. The field has continually evolved to incorporate advancements; today mechanical engineers are pursuing developments in such areas as composites, mechatronics, and nanotechnology.', '../home/uploads/home2.jpg'),
(11, 'General', 'This area is common to all engineering streams and mainly focuses on building up your foundation of core engineering concepts, mathematics, logical thinking and more. \r\n\r\nThose who are preparing for interviews must also try out these events, to understand the level of difficulty in questions you might face and prepare yourself beforehand!    ', '../home/uploads/engineering.png');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `name`, `job`, `description`, `image`) VALUES
(12, 'viswaprasads', 'web developer', 'I\'m a workaholic, I love to teach and I\'ll be glad to help the students to understand concepts', 'instructor1.jpeg'),
(13, 'pranava raman', 'Analyst', 'I\'m a workaholic, I love to teach and I\'ll be glad to help the students to understand concepts', 'instructor2.jpeg'),
(14, 'Kohila', 'Coder', 'I\'m a workaholic, I love to teach and I\'ll be glad to help the students to understand concepts', 'instructor3.jpg'),
(15, 'Raj', 'Scientist', 'I\'m a workaholic, I love to teach and I\'ll be glad to help the students to understand concepts', 'instructor4.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `sno` int(5) NOT NULL,
  `department` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `link` text NOT NULL,
  `definition` longtext NOT NULL,
  `image` text NOT NULL,
  `visibility` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`sno`, `department`, `name`, `link`, `definition`, `image`, `visibility`) VALUES
(13, 11, 'General-1', '', '      bbbb', '../home/uploads/reveal1.jpg', 1),
(14, 11, 'General-2', '', '      tdcfgvhbjkml,;.', '../home/uploads/reveal3.jpg', 1),
(15, 1, 'Quiz 1', '', 'This event Q1 will be conducted soon. this event offers an insight to this particular topic.\r\nTo enter all you have to do is click this register button, and then you will be redirected to the quiz page when the quiz is ready, be present when the quiz is open enter your name and you should be logged in to access the quiz\r\n\r\nDISCLAIMER: You can only play the quiz after paying 15 rupees and be logged in      ', '../home/uploads/quiz.jpg', 1),
(16, 1, 'Quiz 2', '', 'This event Q2 will be conducted soon. this event offers an insight to this particular topic.\r\n\r\nTo enter all you have to do is click this register button, and then you will be redirected to the quiz page when the quiz is ready, be present when the quiz is open enter your name and you should be logged in to access the quiz\r\n\r\nDISCLAIMER: You can only play the quiz after paying 15 rupees and be logged in   ', '../home/uploads/quiz.jpg', 1),
(17, 2, 'Quiz 1', '', 'This event Q3 will be conducted soon. this event offers an insight to this particular topic.\r\nTo enter all you have to do is click this register button, and then you will be redirected to the quiz page when the quiz is ready, be present when the quiz is open enter your name and you should be logged in to access the quiz\r\n\r\nDISCLAIMER: You can only play the quiz after paying 15 rupees and be logged in   ', '../home/uploads/quiz.jpg', 1),
(18, 2, 'Quiz 2', '', 'This event Q1 will be conducted soon. this event offers an insight to this particular topic.\r\nTo enter all you have to do is click this register button, and then you will be redirected to the quiz page when the quiz is ready, be present when the quiz is open enter your name and you should be logged in to access the quiz\r\n\r\nDISCLAIMER: You can only play the quiz after paying 15 rupees and be logged in   ', '../home/uploads/quiz.jpg', 1),
(19, 3, 'Quiz 1', '', 'This event Q5 will be conducted soon. this event offers an insight to this particular topic.\r\nTo enter all you have to do is click this register button, and then you will be redirected to the quiz page when the quiz is ready, be present when the quiz is open enter your name and you should be logged in to access the quiz\r\n\r\nDISCLAIMER: You can only play the quiz after paying 15 rupees and be logged in   ', '../home/uploads/quiz.jpg', 1),
(20, 3, 'Quiz 2', '', 'This event Q6 will be conducted soon. this event offers an insight to this particular topic.\r\nTo enter all you have to do is click this register button, and then you will be redirected to the quiz page when the quiz is ready, be present when the quiz is open enter your name and you should be logged in to access the quiz\r\n\r\nDISCLAIMER: You can only play the quiz after paying 15 rupees and be logged in   ', '../home/uploads/quiz.jpg', 1),
(21, 4, 'Quiz 1', '', 'This event Q1 will be conducted soon. this event offers an insight to this particular topic.\r\n\r\nTo enter all you have to do is click this register button, and then you will be redirected to the quiz page when the quiz is ready, be present when the quiz is open enter your name and you should be logged in to access the quiz\r\n\r\nDISCLAIMER: You can only play the quiz after paying 15 rupees and be logged in   ', '../home/uploads/quiz.jpg', 1),
(22, 4, 'Quiz 2', '', 'This event Q8 will be conducted soon. this event offers an insight to this particular topic.\r\n\r\nTo enter all you have to do is click this register button, and then you will be redirected to the quiz page when the quiz is ready, be present when the quiz is open enter your name and you should be logged in to access the quiz\r\n\r\nDISCLAIMER: You can only play the quiz after paying 15 rupees and be logged in   ', '../home/uploads/quiz.jpg', 1),
(23, 8, 'Quiz 1', '', 'This event Q9 will be conducted soon. this event offers an insight to this particular topic.\r\n\r\nTo enter all you have to do is click this register button, and then you will be redirected to the quiz page when the quiz is ready, be present when the quiz is open enter your name and you should be logged in to access the quiz\r\n\r\nDISCLAIMER: You can only play the quiz after paying 15 rupees and be logged in   ', '../home/uploads/quiz.jpg', 1),
(24, 8, 'Quiz 2', '', 'This event Q1 will be conducted soon. this event offers an insight to this particular topic.\r\nTo enter all you have to do is click this register button, and then you will be redirected to the quiz page when the quiz is ready, be present when the quiz is open enter your name and you should be logged in to access the quiz\r\n\r\nDISCLAIMER: You can only play the quiz after paying 15 rupees and be logged in   ', '../home/uploads/quiz.jpg', 1),
(25, 9, 'Quiz 1', '', 'This event Q11 will be conducted soon. this event offers an insight to this particular topic.\r\n\r\nTo enter all you have to do is click this register button, and then you will be redirected to the quiz page when the quiz is ready, be present when the quiz is open enter your name and you should be logged in to access the quiz\r\n\r\nDISCLAIMER: You can only play the quiz after paying 15 rupees and be logged in   ', '../home/uploads/quiz.jpg', 1),
(26, 9, 'Quiz 2', '', 'This event Q12 will be conducted soon. this event offers an insight to this particular topic.\r\nTo enter all you have to do is click this register button, and then you will be redirected to the quiz page when the quiz is ready, be present when the quiz is open enter your name and you should be logged in to access the quiz\r\n\r\nDISCLAIMER: You can only play the quiz after paying 15 rupees and be logged in   ', '../home/uploads/quiz.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `sno` int(11) NOT NULL,
  `feedback` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`sno`, `feedback`) VALUES
(1, 'Leave your comments here!'),
(2, 'Leave your comments here!');

-- --------------------------------------------------------

--
-- Table structure for table `fillups`
--

CREATE TABLE `fillups` (
  `id` int(11) NOT NULL,
  `question` varchar(100) NOT NULL,
  `answer` varchar(50) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `quizid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fillups`
--

INSERT INTO `fillups` (`id`, `question`, `answer`, `visibility`, `quizid`) VALUES
(1, '............................character is used to indicate an end tag.', '/', 1, 1),
(2, '.............................is the correct HTML for making a checkbox.', 'input type = ', 1, 1),
(3, '.......................blahhhhhhhhh.', 'test', 1, 1),
(14, '----------------blahhhhhhhhhhhhhhhhhhhhhh', 'whatt', 1, 12),
(15, '------------------------hiiiiiiiiiiii', 'hello', 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `headings` text NOT NULL,
  `paragraphs` longtext NOT NULL,
  `visibility` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`headings`, `paragraphs`, `visibility`) VALUES
('initial_subheading', 'Welcome to tuteehut! ', 1),
('initial_heading', '  We are here to make Learning Fun!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', 1),
('initial_definition', '', 1),
('address', '                                                                                                                                                                                                                                                                                                                                                                                                                                               175, Nehru street, chennai-521321                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 1),
('phone_number1', '                                                                                                                                                                                                                                                                                                                                                                                                                                              +91 7428099283                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', 1),
('phone_number2', '                                                                                                                                                                                                                                                                                                                                                                                                                                               +91 7397113393                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 1),
('contact_about', 'We the team from Anna University is constantly working to create the revolution in the learning process of learning. For that, this is our big step and already it is elucidated in the home page.', 1),
('contact_heading', '                    About\r\n                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', 1),
('about_subtext', '', 1),
('about_definition', 'HELLO STUDENTS !!!!WELCOME TO TUTEEHUT....\r\n\r\n<b>OUR BIG MOTO:-</b>\r\n                          WE KNOW YOU ARE TIRED AND HATE ENGINEERING BECAUSE OF  LEARNING IT IN A BORED WAYS. SO WE INTRODUCED A NEW LEARNING PROCESS AND WE DIVIDED IT INTO VARIOUS STAGES.THE FIRST STAGE IS CORE STRENGTHENING.THE OTHER STAGES ARE REVEALED SOON BY US \r\n\r\n<b>CORE STRENGTHENING STAGE:-</b>\r\n                        THIS STAGE INVOLVES TECHNICAL QUIZ,APTITUDE,ENG.MATHS QUIZ,CASE STUDY,CONNECTION AND TREASURE HUNT ETC...\r\n                       THIS STAGE HELPS IN \"STRENGTHENING THE CORE BASICS \" OF YOUR DOMAIN,CALCULATION SPEED AND TIME MANAGEMENT ETC...\r\n\r\n<b>IMPORTANCE OF GENERAL APTITUDE AND ENG. MATHEMATICS IN ENGINEERING:-</b>\r\n           LEARNING APTITUDE AND MATHS IS USED TO DEVOLOP YOUR LOGICAL AND ANALYTICAL THINKING.YOUR PREDICTION AND OBSERVATION POWER.\r\nYOUR MEMORY, CONCENTRATION AND CALCULATION.YOUR DECISION MAKING POWER.YOU CAN TAKE BETTER AND LOGICAL DECISIONS ON TIME.IT CAN DEVOLOP YOUR COMMON SENSE AND PRESENCE OF MIND.SO, IT IS VERY MUCH ESSENTIAL for US TO THINK IN COMPLEX SITUATIONS.\r\n\r\n<b>EXPOSURE STAGE:-</b>\r\n                  REVEALLED IN UPCOMING MAY\r\n \r\n                  STUDENTS WHO FOLLOWS US IN EARLY STAGES WILL BE GET BENEFITTED IN THE UPCOMING STAGES.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', 1),
('quiz1_type', '', 1),
('quiz1_heading', 'Engineering Mathematics III                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', 1),
('quiz1_description', 'Sets, Permutations, Combinations                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', 1),
('quiz2_type', '', 1),
('quiz2_heading', 'Web Development                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', 1),
('quiz2_description', 'HTML, CSS, JS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', 1),
('quiz3_type', '', 1),
('quiz3_heading', ' Data Structures                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', 1),
('quiz3_description', 'Linked List, Queue                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 1),
('stages_intro', '', 1),
('quality_description', '', 1),
('instructor_description', '', 1),
('quiz_praise', '', 1),
('get_certified', '', 1),
('result1_date', '', 1),
('result1_heading', '', 1),
('result1_description', '', 1),
('result2_date', '', 1),
('result2_heading', '', 1),
('result2_description', '', 1),
('result3_date', '', 1),
('result3_heading', '', 1),
('result3_description', '', 1),
('quiz1', '', 1),
('quiz2', '', 1),
('quiz3', '', 1),
('quiz', '', 1),
('result', '', 1),
('result1', '', 1),
('result2', '', 1),
('result3', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `ID` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`ID`, `position`, `name`) VALUES
(1, 'background', 'uploads/home2.jpg'),
(6, 'quiz1', 'uploads/quiz1.jpg'),
(7, 'quiz2', 'uploads/quiz2.jpg'),
(8, 'quiz3', 'uploads/treasure.jpg'),
(9, 'result1', 'uploads/reveal1.jpg'),
(10, 'result2', 'uploads/reveal3.jpg'),
(11, 'result3', 'uploads/reveal1.jpg'),
(12, 'about1', 'uploads/aboutUS.png'),
(13, 'about2', 'uploads/aboutus3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `sno` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`sno`, `user_id`, `event_id`, `status`) VALUES
(1, 4, 15, 0),
(3, 4, 16, 0),
(4, 4, 17, 1),
(5, 4, 18, 0),
(6, 4, 19, 1),
(7, 4, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `question` varchar(250) NOT NULL,
  `option1` varchar(100) NOT NULL,
  `option2` varchar(100) NOT NULL,
  `option3` varchar(100) NOT NULL,
  `option4` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `quizid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `visibility`, `quizid`) VALUES
(10, 'How is how amazzing?', 'how', 'how', 'how', 'how', '1', 1, 10),
(12, 'How is how?', 'how', 'how', 'how', 'how', '2', 1, 1),
(18, 'Whats pc?', 'Hyper text markup language', 'Hyper tool markup language', 'High tool markup language', 'Higher tool markup language', '4', 1, 1),
(19, 'what is tuteehut?', 'website', 'er', 'ew', 'qwerty', '1', 1, 3),
(20, 'what is Viswa?', 'dwd', 'wdw', 'qwe', 'qwerty', '1', 1, 12),
(21, 'Whats pc??', 'what', 'why', 'how', 'when', '4', 1, 13),
(22, 'What is what?', 'what', 'wha', 'whattttt', 'whatt', '1', 1, 13),
(23, 'What is prasad?', 'p', 'r', 'a', 's', '1', 1, 12),
(24, 'What is what?', 'Hyper text markup language', 'Hyper tool markup language', 'High tool markup language', 'Higher tool markup language', '1', 1, 12),
(25, '\'OS\' computer abbreviation usually means?', 'Order of Significance', 'Open Software', 'Operating System', 'Optical Sensor', '3', 1, 15),
(26, '\'.MOV\' extension refers usually to what kind of file?', 'Image file', 'Animation/movie file', 'Audio file', 'MS Office document', '2', 1, 15),
(27, '\'.MPG\' extension refers usually to what kind of file?', 'Word Perfect Document file', 'MS Office document', 'Animation/movie file', 'Image file', '3', 1, 15),
(28, 'What is part of a database that holds only one type of information?', 'Report', 'Field', 'Record', 'File', '2', 1, 16),
(29, 'Who developed Yahoo?', 'Dennis Ritchie & Ken Thompson', 'David Filo & Jerry Yang', 'Vint Cerf & Robert Kahn', 'Steve Case & Jeff Bezos', '2', 1, 16),
(30, '\'DB\' computer abbreviation usually means?', 'Database', 'Double Byte', 'Data Block', 'Driver Boot', '1', 1, 16),
(31, '\'.INI\' extension refers usually to what kind of file?', 'Image file', 'System file', ' Hypertext related file', 'Image Color Matching Profile file', '2', 1, 19),
(32, 'The sampling rate, (how many samples per second are stored) for a CD is?', '48.4 kHz', '22,050 Hz', '44.1 kHz', '48 kHz', '3', 1, 19),
(33, 'Sometimes computers and cache registers in a foodmart are connected to a UPS system. What does UPS mean?', 'United Parcel Service', 'Uniform Product Support', 'Under Paneling Storage', 'Uninterruptable Power Supply', '4', 1, 19),
(34, 'What is FMD?', 'Fast-Ethernet Measuring Device', 'Flashing Media Diode', 'Fluorescent Multi-Layer Disc', 'Flash Media Driver', '3', 1, 20),
(35, 'Which of these is a documented hoax virus?', 'McDonalds screensaver', 'Alien.worm', 'Merry Xmas', 'Adolph', '1', 1, 20),
(36, 'What does SSL stand for?', 'Secure Socket Layer', 'System Socket Layer', 'Superuser System Login', 'Secure System Login', '1', 1, 20),
(37, 'The force per unit charge is known as', 'electric flux', 'electric field', 'electric potential', ' electric current', '2', 1, 17),
(38, 'Electric field lines provide information about', 'field strength', 'direction', 'nature of charge', 'all of these', '4', 1, 17),
(39, 'The unit of electric dipole moment is', 'newton', 'coulomb', 'farad', 'debye', '4', 1, 17),
(40, 'Which of the following statements is not true about Gauss’s law?', 'Gauss’s law is true for any closed surface.', 'The term q on the right side side of Gauss’s law includes the sum of all charges enclosed by the sur', 'Gauss’s law is not much useful in calculating electrostatic field when the system has some symmetry.', 'Gauss’s law is based on the inverse square dependence on distance contained in the coulomb’s law', '3', 1, 18),
(41, 'Consider a uniform electric field in the z-direction. The potential is a constant', 'for any x for a given z', 'for any y for a given z', 'on the x-y plane for a given z', 'all of these', '4', 1, 18),
(42, 'Equipotential surfaces', 'are closer in regions of large electric fields compared to regions of lower electric fields.', 'will be more crowded near sharp edges of a conductor.', 'will always be equally spaced.', 'both (a) and (b) are correct.', '4', 1, 18);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_details`
--

CREATE TABLE `quiz_details` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `score` varchar(1000) NOT NULL,
  `quizid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_details`
--

INSERT INTO `quiz_details` (`id`, `name`, `phone`, `answer`, `score`, `quizid`) VALUES
(55, 'Pinky', '1234567890', ' 1,1,1,', '3', 12),
(56, 'Pinky', '1234567890', ' 1,1,1,', '3', 12),
(57, 'Pinky', '9585573341', ' 1,1,1,', '3', 12),
(58, 'Akshaya', '1234567890', ' 1,1,1,', '3', 12),
(59, 'Pinky', '9585573341', ' 1,1,2,', '2', 12),
(60, 'Pinky', '9585573341', ' 1,1,3,', '2', 12),
(61, 'Pinky', '9585573341', ' 1,1,1,', '3', 12),
(62, 'Pinky', '9585573341', ' 1,1,1,', '3', 12),
(63, 'Pinky', '9585573341', ' 1,1,1,', '3', 12),
(64, 'Pinky', '9585573341', ' 1,1,1,', '3', 12),
(65, 'Pinky', '9585573341', ' 1,1,1,', '3', 12),
(66, 'Pinky', '9585573341', ' 1,1,1,', '3', 12),
(67, 'Pinky', '9585573341', ' 1,1,1,', '3', 12),
(68, 'Pinky', '9585573341', ' 1,1,1,', '3', 12),
(69, 'Pinky', '9585573341', ' 1,1,1,', '3', 12),
(70, 'Pinky', '9585573341', ' 1,1,1,', '3', 12),
(71, 'Pinky', '9585573341', ' 1,1,1,b,hello,', '4', 12),
(72, 'Pinky', '9585573341', ' 1,1,1,b,hello,', '4', 12),
(73, 'Pinky', '9585573341', ' 1,1,1,Hhhhd,Hhhhh,', '3', 12),
(74, 'Pinky', '9585573341', ' 1,2,3,asdf,asdfasdf,', '1', 12),
(75, 'Pinky', '9585573341', ' 4,4,4,Hi,Hi,', '0', 12),
(76, 'Gunnala hema', '1234567891', ' 2,1,2,Ryy,Erty,', '1', 12),
(77, 'Meghaa', '1234567890', ' 2,1,1,Hsga,Vsgw,', '2', 12),
(78, 'test', '0000000000', ' ', '0', 12),
(79, 'Pinky', '9585573341', ' ', '0', 3),
(80, 'Pinky', '9585573341', ' 3,2,3,', '3', 15),
(81, 'Pinky', '9585573341', ' 2,4,4,', '2', 19),
(82, 'Pinky', '9585573341', ' 4,2,2,', '0', 20),
(83, 'Pinky', '9585573341', ' 1,1,1,', '0', 17);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `ID` int(7) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `year` int(1) NOT NULL,
  `address` varchar(20) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`ID`, `Name`, `Email`, `phone`, `department`, `year`, `address`, `password`, `status`) VALUES
(20, 'karen', 'a@b.com', '1234567891', 'it', 1, 'fgh', '123456', 0),
(19, 'dharma', 'ajai13393@gmail.com', '7397113393', 'PET', 4, 'chennai', '888888', 0),
(7, 'Akshaya', 'akshayar0811@gmail.com', '1234567890', 'CS', 2, '', '123456', 0),
(17, 'sss', 'asas@dc.c', '1234567890', 'asas', 3, 'meghaanalsum@nm.com', '111111', 0),
(5, 'bnbjkbfk', 'bmspr010502@gmail.com', '9585573341', 'IT', 1, '', '123456', 0),
(9, 'hello', 'hello@gmail.com', '9585573341', 'IT', 1, 'TN', '123456', 0),
(3, 'Ratcha', 'hloo@gmail.com', '1234567890', 'CSE', 2, 'Kalpakkam', '123456', 0),
(2, 'John Doe', 'k.john_doe@gmail.com', '0000000000', 'IT', 3, 'Erode-5', '123456', 0),
(12, 'Meghaa', 'Mdh@bshs.co', '9876543210', 'I T', 1, 'Qwerty', '1234567', 0),
(15, 'vfr', 'meghaafffnalsum@m.com', '1234567890', 'ITf\'', 1, '5yry\'', '123456\'', 0),
(21, 'ef', 'meghaanalsum@m.com', '9489426919', 'IT', 1, 'hello', '123456', 0),
(10, 'Gunnala hema', 'preetiarthi@gmail.com', '1234567891', 'it', 2, 'hyder', '123456', 0),
(14, 'Ra Preeti k', 'preetikrishnaveni19@gmail.com', '1234567891', 'it', 1, 'hyd', '123456', 0),
(4, 'Pinky', 'r@gmail.com', '9585573341', 'CS', 2, 'KP', 'rat@123456', 0),
(6, 'bnbjkbfk', 'ratchabala@gmail.com', '9585573341', 'IT', 1, '', '123456', 0),
(18, 'karthikeyan', 'svkarthi1234@gmail.com', '8098890832', 'PET', 4, 'Chennai', '777777', 0),
(16, 'Meghaa', 'test#@gmail.com', '1234567890', 'IT', 1, 'gr', '111111', 0),
(8, 'Meghaa', 'test3@gmail.com', '1234567890', 'IT', 1, 'qwerty', '123456', 0),
(11, 'ewfew', 'test4@gmail.com', '1234567890', 'IT', 1, 'qwerty', '123456', 0),
(22, 'meghaa', 'test7@gmail.com', '0000000000', 'IT', 1, 'hello', '123456', 0),
(1, 'test', 'test@gmail.com', '0000000000', 'IT', 1, 'Thiruchi', '123456', 1),
(13, 'Meghaa', 'Yest@gmail.com', '1234567890', 'Igsgs32T', 1, 'Vshsh5262', '123456', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `connection`
--
ALTER TABLE `connection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `fillups`
--
ALTER TABLE `fillups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD UNIQUE KEY `headings` (`headings`) USING HASH;

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_details`
--
ALTER TABLE `quiz_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `email` (`Email`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `connection`
--
ALTER TABLE `connection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `sno` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `sno` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fillups`
--
ALTER TABLE `fillups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `quiz_details`
--
ALTER TABLE `quiz_details`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
