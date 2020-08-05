-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2017 at 03:41 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ast20401`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `Booking_ID` int(11) NOT NULL,
  `First_Name` varchar(40) NOT NULL,
  `Last_Name` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `Session_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`Booking_ID`, `First_Name`, `Last_Name`, `Email`, `Mobile`, `Session_ID`) VALUES
(11, '', '', '', 0, 9),
(12, '', '', '', 0, 3),
(13, '', '', '', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `City_ID` int(11) NOT NULL,
  `City_Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`City_ID`, `City_Name`) VALUES
(1, 'Guangzhou'),
(2, 'Shenzhen'),
(3, 'Hong Kong');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_code` varchar(8) NOT NULL DEFAULT '',
  `course_name` varchar(40) DEFAULT NULL,
  `credits` int(11) DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_code`, `course_name`, `credits`) VALUES
('DCO20105', 'Data Structures and Algorithm', 3),
('DCO20201', 'Web Programming', 3),
('DCO20401', 'Database System and Design', 3),
('DCO20611', 'System Methodologies', 3);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` varchar(8) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `firstname`, `lastname`, `email`, `district`) VALUES
('1001', 'Sunny', 'Ng', 'ngsanluk@gmail.com', 'North Point'),
('1002', 'Mike', 'Chan', 'mike@mail.com', 'Causeway Bay'),
('1003', 'John', 'Li', 'john@mail.com', 'Wan Chai'),
('1004', 'Grace', 'Wong', 'grace@mail.com', 'Mong Kwok'),
('1005', 'Tracy', 'Ng', 'trace@mail.com', 'Kowloon Bay'),
('1006', 'Kenny', 'Lai', 'kenny@mail.com', 'Kowloon Bay'),
('1007', 'Johnny', 'Lam', 'Johnny@mail.com', 'Causeway Bay'),
('1008', 'Crystal', 'Wong', 'crystal@mail.com', 'Causeway Bay'),
('1009', 'Rachel', 'Chan', 'rachel@mail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `formats`
--

CREATE TABLE `formats` (
  `Format_ID` int(11) NOT NULL,
  `Session_Format` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `formats`
--

INSERT INTO `formats` (`Format_ID`, `Session_Format`) VALUES
(1, 'Personal Training'),
(2, 'Group Training');

-- --------------------------------------------------------

--
-- Table structure for table `items_ordered`
--

CREATE TABLE `items_ordered` (
  `item` varchar(20) DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `quantity` int(1) DEFAULT NULL,
  `customerid` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items_ordered`
--

INSERT INTO `items_ordered` (`item`, `price`, `quantity`, `customerid`) VALUES
('iPhone4s', '4888.88', 1, '1001'),
('iPhone4s', '9888.88', 2, '1002'),
('Samsung Galaxy S3', '15000.00', 3, '1003'),
('iPhone5', '18000.00', 3, '1001'),
('USB Drive 32GB', '880.00', 2, '1001'),
('Retina MacBook Pro -', '16888.00', 1, '1001'),
('MacBook Air - 13', '28888.00', 3, '1003'),
('Nexus 7', '7688.00', 2, '1001'),
('Nexus 7', '7688.00', 2, '1002'),
('Nexus 7', '7688.00', 2, '1003'),
('Nexus 7', '7788.00', 2, '1004'),
('Nexus 7', '7788.00', 2, '1005'),
('Nexus 7', '77688.00', 2, '1006'),
('Nexus 7', '7688.00', 2, '1007'),
('Nexus 7', '7988.00', 2, '1008'),
('Nexus 7', '7688.00', 2, '1010'),
('Galaxy Tab 10.1', '7888.00', 2, '1006'),
('Galaxy Tab 10.1', '7888.00', 2, '1009'),
('Apple TV', '2888.00', 4, '1003'),
('Apple TV', '2688.00', 4, '1006'),
('Apple TV', '4688.00', 6, '1009');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `Level_ID` int(11) NOT NULL,
  `Level` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`Level_ID`, `Level`) VALUES
(1, 'Let me try'),
(2, 'Beginner'),
(3, 'Intermediate'),
(4, 'Advanced');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `heading` varchar(200) NOT NULL,
  `fulltext` text NOT NULL,
  `cat_id` int(11) NOT NULL,
  `featuring` int(11) NOT NULL DEFAULT '0',
  `images` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `heading`, `fulltext`, `cat_id`, `featuring`, `images`) VALUES
(1001, 'Local News - 01', 'Phasellus tempus, libero id blandit consectetur, magna nibh vehicula sem, quis pellentesque tortor augue nec urna. Vivamus porttitor tempus libero vitae aliquet. Donec ligula odio, ultrices tempor porta vitae, convallis ut dui. Donec consectetur lacus sit amet est dictum ac ornare metus dictum. In vitae velit mi, ut malesuada ligula. Aliquam porttitor metus felis. Vestibulum id ante adipiscing magna semper sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In massa arcu, ornare nec condimentum sit amet, gravida eu est.', 1, 0, '01.jpg'),
(1002, 'Local News - 02', 'Cras sit amet velit at ante porttitor facilisis cursus vel nunc. Sed et massa nisl. Nulla sodales aliquam mattis. Pellentesque suscipit est ipsum, a dapibus turpis. Integer eget nunc est. Vivamus vehicula rutrum ante, non ultrices diam suscipit id. Ut porta urna rhoncus odio condimentum vestibulum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque faucibus posuere orci sed luctus. Duis at quam arcu, nec pharetra turpis.', 1, 0, '02.jpg'),
(1003, 'Local News - 03', 'Sed quis dictum nulla. In venenatis vehicula dui sed commodo. Proin at quam eget est elementum pretium. In fringilla, velit a laoreet tincidunt, ligula ligula faucibus justo, sed varius nulla arcu a leo. Proin tristique porttitor urna sit amet interdum. Mauris sodales orci sit amet magna molestie id consequat massa faucibus. In hac habitasse platea dictumst. Nunc sagittis arcu eu nisl porttitor vel malesuada dui molestie. Etiam lorem justo, consectetur nec luctus nec, pellentesque eu dolor. Donec justo urna, dictum eu pharetra sit amet, fringilla porta dolor. Cras aliquet ultricies egestas. Sed ac volutpat eros.', 1, 1, '03.jpg'),
(1004, 'Local News - 04', 'Mauris sollicitudin ultricies cursus. Nulla facilisi. Integer quis dolor massa. Sed at velit quam, quis aliquam turpis. Sed cursus libero vel orci aliquet a dapibus leo semper. Sed a scelerisque nunc. Nam nibh quam, rutrum non ultricies sed, faucibus et dui. Quisque mattis justo ac nisl pulvinar dignissim. Duis porttitor fringilla sollicitudin. Fusce eget mauris urna, in laoreet massa. Curabitur cursus magna nec arcu aliquam placerat. Vestibulum a nulla risus, id commodo lectus.', 1, 0, '04.jpg'),
(1005, 'International News - 01', 'Etiam fringilla, nibh cursus tristique malesuada, enim lectus dignissim massa, non interdum orci nibh vel sem. Nulla varius venenatis nisi, at pharetra velit auctor id. Suspendisse placerat mattis lectus, in scelerisque mauris dictum eu. Nam porta molestie nulla, non vestibulum leo pretium lobortis. Sed id viverra nunc. Duis in erat magna, rhoncus volutpat odio. Morbi rhoncus placerat condimentum.', 2, 1, '05.jpg'),
(1006, 'International News - 02', 'Etiam luctus sagittis nunc eu malesuada. Proin at tortor nunc. Ut quam erat, tincidunt a cursus nec, dictum et nibh. Aliquam iaculis, justo vitae ornare tincidunt, quam sapien condimentum justo, vel semper neque erat ut eros. Nunc faucibus iaculis augue et cursus. Nulla hendrerit metus vitae ipsum placerat non vehicula mi sagittis. Vivamus convallis cursus rhoncus. Duis sit amet justo at turpis cursus semper. Suspendisse condimentum lectus vel odio adipiscing sagittis. Ut molestie dolor sit amet risus congue interdum at ac lorem. Phasellus facilisis nisl eu nibh lacinia eget cursus nisi lobortis.', 2, 0, '06.jpg'),
(1007, 'International News - 03', 'Vivamus eros diam, suscipit sollicitudin ullamcorper vitae, feugiat in massa. Mauris ac nulla at dolor condimentum molestie ut et magna. Mauris vitae ligula quis nulla pulvinar fringilla. Duis gravida risus a neque vulputate quis iaculis elit tristique. Maecenas elit sem, iaculis vitae convallis et, congue nec lectus. Pellentesque lacus diam, bibendum quis varius nec, commodo non mauris. Suspendisse magna massa, lobortis vitae egestas nec, blandit nec felis. Nulla et tellus dolor, at volutpat orci. Suspendisse porta, risus laoreet facilisis sodales, augue nunc egestas mauris, quis facilisis arcu sapien vel ante.', 2, 0, '07.jpg'),
(1008, 'Finance News - 01', 'Sed molestie, lacus a pretium pharetra, erat arcu commodo urna, sed egestas lorem ante sed sapien. Sed velit nisl, pretium eu dignissim ac, adipiscing ac nisi. Vestibulum sit amet lacus id ante posuere laoreet. In eros turpis, eleifend quis tristique ut, sollicitudin a est. Fusce ac libero dui, sed posuere eros. Proin leo dui, tempus in eleifend sed, tempor at arcu. Fusce in porta risus. Sed pellentesque sem id nulla adipiscing vulputate. Nunc tincidunt, turpis a ultrices faucibus, erat felis pellentesque purus, cursus viverra mi sapien vel lectus. Etiam non sodales enim. Integer eleifend, augue vitae dictum cursus, libero nulla pellentesque augue, nec ullamcorper purus dui pretium eros. Suspendisse vitae sem urna.', 3, 1, '08.jpg'),
(1009, 'Entertainment News - 01', 'Aliquam convallis varius urna facilisis dictum. Donec sodales rutrum odio vel volutpat. Curabitur sed neque est, eu blandit ante. Vestibulum quis sem lorem, eget viverra tellus. In quis aliquam nisi. Etiam eu tellus urna, quis placerat sapien. Mauris tempor bibendum nisi sit amet facilisis. Praesent faucibus tellus elit, at euismod ligula. Sed elit tellus, bibendum tincidunt suscipit eu, mollis vitae nisi. Etiam aliquet sem lorem, nec adipiscing lacus. Etiam volutpat aliquet leo id fringilla.', 4, 0, '09.jpg'),
(1010, 'Sport News - 01', 'Nunc odio ante, tristique eu accumsan id, pharetra quis ante. Nullam sed tellus in massa mollis ornare. Nulla dictum ipsum in eros malesuada sit amet ullamcorper sem accumsan. In hendrerit fringilla tincidunt. In aliquam volutpat porttitor. Sed ac nisl a nulla iaculis scelerisque. Donec consequat, lacus a tempus rhoncus, ligula lectus scelerisque magna, eget euismod urna dolor a eros. Vivamus quis sodales augue. Sed tempor tempus mauris ut gravida. Aliquam neque purus, tempus eu venenatis et, lobortis in mi. Aliquam eleifend sodales elit, at commodo lacus fringilla non.', 5, 1, '10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news_cat`
--

CREATE TABLE `news_cat` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `sorting` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_cat`
--

INSERT INTO `news_cat` (`id`, `category`, `sorting`) VALUES
(1, 'Local', 1),
(2, 'Internatonal', 2),
(3, 'Finance', 3),
(4, 'Entertainment', 4),
(5, 'Sports', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `details` varchar(500) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sorting` int(11) NOT NULL DEFAULT '99999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `subject`, `details`, `date_created`, `date_modified`, `sorting`) VALUES
(1, 'Learn SQL', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias tempore iste veritatis at praesentium sit voluptatum! Suscipit cum culpa.', '2016-10-10 12:50:05', '2016-10-10 12:50:05', 6),
(2, 'Learn HTML', 'Fugiat maxime, esse iure minima accusantium deserunt! Quisquam corrupti nulla repellendus, eligendi suscipit. Laudantium provident, commodi ad quas sed, ea veritatis totam, qui error esse, animi eos perspiciatis mollitia aliquid.', '2016-10-10 13:23:02', '2016-10-10 13:23:02', 2),
(3, 'Learn CSS', 'Ad libero saepe ipsa iusto quaerat enim eius in dolore voluptatibus ex eos sed autem laboriosam quam repellat expedita reprehenderit quisquam facere consequuntur earum ipsam perspiciatis, beatae dignissimos. Facere, quidem!', '2016-10-10 13:23:27', '2016-10-10 13:23:27', 3),
(4, 'Learn PHP', 'Incidunt explicabo perferendis est sit magnam, aspernatur illum natus iure minus nostrum optio, ab, iusto provident voluptatem tempora dolorem praesentium laboriosam quod? Blanditiis esse, iure quae magnam accusamus est porro.', '2016-10-10 13:24:24', '2016-10-10 13:24:24', 4),
(5, 'Learn CodeIgniter', 'Molestias unde tenetur laudantium, optio atque, libero ipsam ratione doloribus assumenda consequatur debitis id provident nemo enim minima sunt hic. Repellat ex perspiciatis, porro veniam sed eveniet unde a optio!', '2016-10-10 13:24:47', '2016-10-10 13:24:47', 5),
(6, 'Learn phpMyAdmin', 'Eos molestiae eaque consequuntur, soluta non labore consectetur ut voluptatibus, rem, dolorem perferendis harum laboriosam quod porro. Cupiditate explicabo ex aperiam, cum veniam non. Deleniti vitae laborum esse, nisi dicta!', '2016-10-10 13:25:17', '2017-11-05 22:16:50', 1),
(7, 'Learn Database Design', 'Iste, sequi. Laborum quibusdam a qui asperiores adipisci iure autem fugit velit esse voluptatem alias doloribus, accusamus facilis hic veritatis pariatur nam iusto assumenda molestiae minus tenetur dolorum veniam temporibus.', '2016-10-10 13:26:06', '2016-10-10 13:26:06', 7),
(8, 'Learn JavaScript', 'At voluptatem eum molestiae nemo beatae ab maxime soluta eveniet esse quos autem pariatur odit fugit consequuntur praesentium a eaque inventore iure dolorum voluptatibus, cum commodi obcaecati repudiandae veniam! Numquam!', '2016-10-10 13:26:43', '2016-10-10 13:26:43', 99999),
(9, 'Learn jQuery', 'Delectus a deserunt sunt eveniet dicta, necessitatibus, exercitationem fugiat minima autem. Amet qui quod, fugit pariatur soluta esse dolorem aspernatur molestias voluptatibus sequi unde tempora blanditiis, omnis expedita vero minus!', '2016-10-10 13:27:32', '2016-10-10 13:27:32', 99999),
(10, 'Learn JSON', 'Totam numquam quam consectetur in excepturi laborum sit fugiat soluta, est ad iusto voluptates! Itaque veniam facere molestias, enim voluptatibus sit at est ad, reprehenderit voluptatum. Tempora assumenda modi eum.', '2016-10-10 13:28:30', '2016-10-10 13:28:30', 99999);

-- --------------------------------------------------------

--
-- Table structure for table `organizers`
--

CREATE TABLE `organizers` (
  `Organizer_ID` int(11) NOT NULL,
  `Organizer_Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizers`
--

INSERT INTO `organizers` (`Organizer_ID`, `Organizer_Name`) VALUES
(1, 'Warrior Muay Thai center'),
(2, 'City University'),
(3, 'HKU');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `Session_ID` int(11) NOT NULL,
  `Session_Title` varchar(40) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Price` double NOT NULL,
  `Available_Tickets` int(11) NOT NULL,
  `Format_ID` int(11) NOT NULL,
  `Level_ID` int(11) NOT NULL,
  `Venue_ID` int(11) NOT NULL,
  `City_ID` int(11) NOT NULL,
  `Sport_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`Session_ID`, `Session_Title`, `Date`, `Time`, `Price`, `Available_Tickets`, `Format_ID`, `Level_ID`, `Venue_ID`, `City_ID`, `Sport_ID`) VALUES
(1, 'Yoga1', '2017-12-05', '19:00:00', 30, 0, 2, 1, 1, 3, 1),
(2, 'Yoga2', '2017-12-05', '20:00:00', 30, 29, 2, 2, 1, 3, 1),
(3, 'Yoga3', '2017-12-12', '19:00:00', 50, 28, 2, 3, 2, 3, 1),
(4, 'Yoga4', '2017-12-12', '20:00:00', 50, 30, 2, 4, 2, 3, 1),
(5, 'running1', '2017-12-13', '09:00:00', 15, 49, 1, 1, 3, 1, 3),
(6, 'running2', '2017-12-13', '10:00:00', 15, 50, 1, 2, 3, 1, 3),
(7, 'running3', '2017-12-14', '09:00:00', 15, 50, 1, 3, 4, 1, 3),
(8, 'running4', '2017-12-14', '10:00:00', 15, 50, 1, 4, 4, 1, 3),
(9, 'Badminton1', '2017-12-15', '15:00:00', 15, 35, 2, 1, 5, 2, 2),
(10, 'Badminton2', '2017-12-15', '16:00:00', 20, 40, 2, 2, 5, 2, 2),
(11, 'Badminton3', '2017-12-16', '15:00:00', 30, 40, 2, 3, 6, 2, 2),
(12, 'Badminton4', '2017-12-16', '16:00:00', 30, 40, 2, 4, 6, 2, 2),
(13, 'Yoga5', '2017-12-20', '11:12:16', 10, 10, 2, 4, 3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions_organizers`
--

CREATE TABLE `sessions_organizers` (
  `Session_ID` int(11) NOT NULL,
  `Organizer_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions_organizers`
--

INSERT INTO `sessions_organizers` (`Session_ID`, `Organizer_ID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions_trainers`
--

CREATE TABLE `sessions_trainers` (
  `Session_ID` int(11) NOT NULL,
  `Trainer_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions_trainers`
--

INSERT INTO `sessions_trainers` (`Session_ID`, `Trainer_ID`) VALUES
(1, 2),
(2, 2),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(7, 2),
(8, 1),
(9, 1),
(10, 1),
(11, 2),
(12, 2),
(13, 3),
(13, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `Sport_ID` int(11) NOT NULL,
  `Sport_Name` varchar(40) NOT NULL,
  `Theme_Photo` varchar(200) DEFAULT NULL,
  `Short_Description` varchar(160) DEFAULT NULL,
  `Long_Description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`Sport_ID`, `Sport_Name`, `Theme_Photo`, `Short_Description`, `Long_Description`) VALUES
(1, 'Yoga', 'Yoga.ipg', 'The yoga is Eastern mind doing scholarly research through the debugging innermost feelings activity.', 'The posture of yoga is likely soft gymnastics and exquisite dance. It is one kind of spiritual Gymnastics, causing the people to learn to pay attention to their own intrinsic world, self-understanding and self-improvement. The yoga can optimize the environment which the human survives, adapted to th'),
(2, 'Badminton', 'Badminton.jgp', 'A great sports for fitness, badminton is excellent for people of all ages and provides a great choice for those wanting to give a new racket sport a go.', 'Badminton is officially the fastest of all racket sports. Players can hit the shuttlecock at speeds of up to 180mph (288kph) toward their opponent. But, it is not just all about speed; a player can expect to run up to four miles (6.4km) around the court during a match whilst having the agility to maintain energy-busting rallies.'),
(3, 'Running', 'Running.jpg', 'No learning, practice, or fancy techniques needed. Running is a great way to get your cardio, endurance, burn calories, and lose weight.', 'Running is relatively cheap and easy. You don’t need a lot of expensive equipment and you can run anywhere that it’s safe to walk. \nRunning can increase your fitness because it raises your heart rate, giving your heart muscle an effective workout and improving your blood flow. And not only is it good for your heart’s health, but it also reduces your risk of stroke, diabetes and some types of cancer.\n•Running is a great way to manage your weight. In combination with the right diet, it can help you lose excess weight and keep it off.  Running, along with other weight-bearing exercise, helps to build bone strength and reduce your risk of breaks.  In face any physical activity, is good for your mental health. Not only can it lower you risk of depression but it also improves your self-esteem and how well you sleep.');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `staf_name` varchar(20) DEFAULT NULL,
  `title` varchar(10) DEFAULT NULL,
  `salary` decimal(8,2) DEFAULT NULL,
  `teaching_hours` int(11) NOT NULL,
  `division` varchar(5) DEFAULT NULL,
  `hired_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staf_name`, `title`, `salary`, `teaching_hours`, `division`, `hired_date`) VALUES
(11223, 'Rose Chang', 'Lecturer', '11100.00', 11, 'DCO', '1993-11-08'),
(13421, 'Minnie Kwok', 'Tutor', '8880.00', 15, 'LS', '1999-06-16'),
(15455, 'Cyril Tse', 'Lecturer', '16650.00', 10, 'DCO', '1993-07-08'),
(16157, 'Mickey Wong', 'Tutor', '22200.00', 5, 'DCO', NULL),
(16787, 'Kenny Ma', 'Lecturer', '16650.00', 15, 'DCO', '1994-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL DEFAULT '0',
  `stud_name` varchar(40) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `stud_name`, `gender`) VALUES
(50121468, 'Mary Wong', 'F'),
(50121614, 'John Wo', 'M'),
(50128515, 'Sue Chan', 'F'),
(50131741, 'Peter Tse', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `study`
--

CREATE TABLE `study` (
  `student_id` int(11) NOT NULL,
  `course_code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `study`
--

INSERT INTO `study` (`student_id`, `course_code`) VALUES
(50121468, 'DCO20105'),
(50121000, 'DCO20202'),
(50121468, 'DCO20401'),
(50121614, 'DCO20611');

-- --------------------------------------------------------

--
-- Table structure for table `teach`
--

CREATE TABLE `teach` (
  `staff_id` int(11) NOT NULL,
  `course_code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teach`
--

INSERT INTO `teach` (`staff_id`, `course_code`) VALUES
(11223, 'DCO20401'),
(13421, 'DCO20401'),
(15455, 'DCO20611'),
(16787, 'DCO20105'),
(15455, 'DCO20201');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `Trainer_ID` int(11) NOT NULL,
  `Trainer_Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`Trainer_ID`, `Trainer_Name`) VALUES
(1, 'Mr.Wu'),
(2, 'Mr.Ou'),
(3, 'Sunny'),
(4, 'Rose');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `Venue_ID` int(11) NOT NULL,
  `Venue_Name` varchar(40) NOT NULL,
  `City_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`Venue_ID`, `Venue_Name`, `City_ID`) VALUES
(1, 'Pure Fitness Langham Place Office Tower', 3),
(2, 'Alive Fitness HK', 3),
(3, 'Lime beauty fitness club', 1),
(4, 'Aalborg Sports Club', 1),
(5, 'New Club Life', 2),
(6, 'Kang Kee bodybuilding club', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`Booking_ID`),
  ADD KEY `sessions_bookings` (`Session_ID`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`City_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `formats`
--
ALTER TABLE `formats`
  ADD PRIMARY KEY (`Format_ID`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`Level_ID`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizers`
--
ALTER TABLE `organizers`
  ADD PRIMARY KEY (`Organizer_ID`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`Session_ID`),
  ADD KEY `Venues_Sessions` (`Venue_ID`),
  ADD KEY `Levels_Sessions` (`Level_ID`),
  ADD KEY `Formats_Sessions` (`Format_ID`),
  ADD KEY `Cities_Sessions` (`City_ID`),
  ADD KEY `Sports_Sessions` (`Sport_ID`);

--
-- Indexes for table `sessions_organizers`
--
ALTER TABLE `sessions_organizers`
  ADD PRIMARY KEY (`Session_ID`,`Organizer_ID`),
  ADD KEY `Organizers_Sessions_Organizers` (`Organizer_ID`);

--
-- Indexes for table `sessions_trainers`
--
ALTER TABLE `sessions_trainers`
  ADD PRIMARY KEY (`Session_ID`,`Trainer_ID`),
  ADD KEY `Trainers_Sessions_Trainers` (`Trainer_ID`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`Sport_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`Trainer_ID`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`Venue_ID`),
  ADD KEY `Cities_Venues` (`City_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `Booking_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `sessions_bookings` FOREIGN KEY (`Session_ID`) REFERENCES `sessions` (`Session_ID`);

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `Cities_Sessions` FOREIGN KEY (`City_ID`) REFERENCES `cities` (`City_ID`),
  ADD CONSTRAINT `Formats_Sessions` FOREIGN KEY (`Format_ID`) REFERENCES `formats` (`Format_ID`),
  ADD CONSTRAINT `Levels_Sessions` FOREIGN KEY (`Level_ID`) REFERENCES `levels` (`Level_ID`),
  ADD CONSTRAINT `Sports_Sessions` FOREIGN KEY (`Sport_ID`) REFERENCES `sports` (`Sport_ID`),
  ADD CONSTRAINT `Venues_Sessions` FOREIGN KEY (`Venue_ID`) REFERENCES `venues` (`Venue_ID`);

--
-- Constraints for table `sessions_organizers`
--
ALTER TABLE `sessions_organizers`
  ADD CONSTRAINT `Organizers_Sessions_Organizers` FOREIGN KEY (`Organizer_ID`) REFERENCES `organizers` (`Organizer_ID`),
  ADD CONSTRAINT `Sessions_Sessions_Organizers` FOREIGN KEY (`Session_ID`) REFERENCES `sessions` (`Session_ID`);

--
-- Constraints for table `sessions_trainers`
--
ALTER TABLE `sessions_trainers`
  ADD CONSTRAINT `Sessions_Sessions_Trainers` FOREIGN KEY (`Session_ID`) REFERENCES `sessions` (`Session_ID`),
  ADD CONSTRAINT `Trainers_Sessions_Trainers` FOREIGN KEY (`Trainer_ID`) REFERENCES `trainers` (`Trainer_ID`);

--
-- Constraints for table `venues`
--
ALTER TABLE `venues`
  ADD CONSTRAINT `Cities_Venues` FOREIGN KEY (`City_ID`) REFERENCES `cities` (`City_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
