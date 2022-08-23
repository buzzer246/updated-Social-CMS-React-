-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2022 at 03:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `scms`
--

CREATE TABLE `scms` (
  `username` varchar(255) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `retypepass` varchar(255) NOT NULL,
  `mediaurl` varchar(255) NOT NULL,
  `images` blob NOT NULL,
  `age` int(6) NOT NULL,
  `comments` varchar(1000) NOT NULL,
  `permanentaddress` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scms`
--

INSERT INTO `scms` (`username`, `mobile`, `password`, `retypepass`, `mediaurl`, `images`, `age`, `comments`, `permanentaddress`) VALUES
('Avinash Reddy K', 9703104087, 'Creative@426800', 'creative@426800', 'www.facebook.com/avinash.tolly246', '', 0, 'Hi its wonderfully Social CMS thank you so much...!', 'Vedanthapuram, Avilala(post),Chittoor dist, Tirupati.'),
('undefined', NULL, '', '', '', '', 0, '', ''),
('undefined', NULL, '', '', '', '', 0, '', ''),
('undefined', NULL, '', '', '', '', 0, '', ''),
('Kailash Yadav', 9898978888, 'Goodfood', 'Goodfood', 'www.google.com', '', 0, 'Hi hello all iam new here...!', 'Bangalore'),
('[value-1]', 0, '[value-3]', '[value-4]', '[value-5]', '', 0, '[value-6]', '[value-7]'),
('fsdfsdfsdfsdf', 0, '', '', '', '', 0, '', ''),
('avinashreddy471@gmail.com', 9703104087, 'Creative@426800', 'Creative@426800', 'www.torrent/signin', '', 0, 'Hi hello Iam new here possible give access to me ..!', 'Bangalore, Marathahalli'),
('Rupesh Kumar S', 8975468741, 'roopkumar1234', 'roopkumar1234', 'www.torrrent/signin', 0x646174613a696d6167652f706e673b6261736536342c6956424f5277304b47676f414141414e535568455567414141514d414141444343414d41414142367a466463414141416756424d5645582f2f2f3859642f49416266454163664941612f4541622f454162504857347677416166487338763441632f4c342b2f2f663666775164664c372f662f4c322f75367a2f6f3668664e7a6f76564a6a5052696d66585434667967762f677967664e626c66532b307670387150615074506645312f7548722f664a3276737266764f7579506d6476666a63352f7847692f52317050626e372f327278666c736e6657597550676265764941596642354a4973764141414670456c45515652346e4f3264363372714b6843474730685347687550395643743164716c72713737763842646531686264774c4d6b4453412b33742f746b2f794d4a3844444d4e41626d34414141414141414141414141414141414141414141414141414141414141414141414c67752b767664344845344844344f6476752b37385a30546e39365745374b4e4263694f7946456e68615435574836763146697568716c51737179544d347053796c464f6c6f4e6644667635336b61437945767262395151676f7866764c64794a396b763835456f62582f6d304a6b36337666546630684267746c3849424c62314354612b77547a36506337674a6e7a7043506e6e3033755756326b35546d416d664f6b4c2f75664465375266712f464d63482f767143477664384e373074686c49364b4842435a6b50666a572b462f674f37472f784c6d532b75494736364c563264344a4f696d506f326f536b7a315569424532726d3234686d6a5050474569524a50765a7452684d6d7a6672424e334c693278426e2b764e324a486758595237704a4e6e6675415146395253624b45586f7a397554344352436a48506b7145304a336b55592b5461497a364b747365416275664274457065313446745a7670506f593870733664736f486b4e6d614652496b61706b2f6a72616c454b6c516b685a30354e555649754850552b4354453165426e642f6e373637663936756a764d6145665965626549795a36795353764632714a763439745865564734367438535a4e574d386c495847772b397252685335377459516433614d6e70416664572b703079425274313061306f414e76536359316f5331477354534732595a58594b742f6a57314769545a533264324e4b416e7947346766687665553639426b736577634b4150694b557838744e6f49434f496c4f376f41364c354a39566f6b4b673730314e427343533767545431424c3047345474436a2b4547356a66704e4568553643504362376f62574f4964725159572f2f4650535a3455636b75346f3957676c4e325934736f5465636c737461526d76664346654f7a45466c6365794735513143664d64346631722f454844396f38564246304e6f5578496d61486d7563663331497069792f307a7759394b67377059624b6f4b624a594b706f625a64764f4c614e7a704f645238326f2b5a4a59536e793066504e6847685a464572506f7a6f794d4a483862527547566f554932514476544d697768334c2f71466b542b712f70514c6574704268727543316b396e46413365364138485044765367385136445969466579664344525876714f4e36597732534e4e51463949437a7439524d6737726f496769326e4333475a6872497569677a424659646172447959422b464d576533765a6b476d685758667859646168427168644b495534765a54494e793773452b436f776770374547695166374b4254642b5545536170426b4d304b6b5a2f79705050346e7663443873737944665251734771533837492b684b69646744537839675266665772494a6f57706747524e354775794d6758657759364a6c627552705945354e426a7333576d496b6e67626d446174675979524c724d7a54774a79654c62516c504a3678724a6c344770684c323449747a724b736e586b616d504d78776136644c546b556c6761576e4653774f52524c75316b61744b6c6e703569444a466137442b61704d64546c676932337a744c41584e6b5663473764764d66433073416361775263696a4931646d4b5742756174696f4433327378377268774e2b75595655384237727559424958753650615036533037502f6d74654c525168373732626d35364a4d366f354648583258334f304658514e52714d53416e6f754c65686148455a4e56674d4e4170345a543942723878706f45486874486a3233374b3542774548694a2b52615858634e677431722f4959384b727072454837785072563233316d4438477633795763346e445549337733496a754371515152756344725439614d615248476d693369327a3147444f4d373245633934756d6c51766e6d77783456627972446f706f454b4f484677436557496f354d474d5630445165674e4c687245637472354138496445433461714b6975474c586642654b67516272743370416d724730544a462b446d4161445432783341374531694f3975494f73645556774e5972776a796e5a64476c4f444f4f384b752b6b5a52654270554c35467355796f306a506448636a53494e4a72387a34773343484a3055432b656d6837612b6a76456d566f4945497450694b6976564f5772454770496c6b7536356c71446d39544e53686b4e45744650663146586d636354594d79583851374770347a724e74434a576b67786262373576344d76584831554439426731496472384d4a50746d392f7264445744556f383964594c6f696a386a532f2f41614652594d696e312f6a5a316d654a2b6666496a467063506f577962563968654f622b374e76307567314b4952595270557734764a342f506f32556230477032385448514d764c3269447757716b68465356767773703147676461694679362f536d732b6f6159447762584e4e554341414141414141414141414141414141414141414141414141414141414141414141412b41647363306935784f686e424141414141424a52553545726b4a6767673d3d, 29, 'Hi hello iam also new here..!', 'Pune - Airport'),
('Rupesh Kumar S', 8975468741, 'roopkumar1234', 'roopkumar1234', 'www.torrrent/signin', 0x646174613a696d6167652f706e673b6261736536342c6956424f5277304b47676f414141414e535568455567414141514d414141444343414d41414142367a466463414141416756424d5645582f2f2f3859642f49416266454163664941612f4541622f454162504857347677416166487338763441632f4c342b2f2f663666775164664c372f662f4c322f75367a2f6f3668664e7a6f76564a6a5052696d66585434667967762f677967664e626c66532b307670387150615074506645312f7548722f664a3276737266764f7579506d6476666a63352f7847692f52317050626e372f327278666c736e6657597550676265764941596642354a4973764141414670456c45515652346e4f3264363372714b6843474730685347687550395643743164716c72713737763842646531686264774c4d6b4453412b33742f746b2f794d4a3844444d4e41626d34414141414141414141414141414141414141414141414141414141414141414141414c67752b767664344845344844344f6476752b37385a30546e39365745374b4e4263694f7946456e68615435574836763146697568716c51737179544d347053796c464f6c6f4e6644667635336b61437945767262395151676f7866764c64794a396b763835456f62582f6d304a6b36337666546630684267746c3849424c62314354612b77547a36506337674a6e7a7043506e6e3033755756326b35546d416d664f6b4c2f75664465375266712f464d63482f767143477664384e373074686c49364b4842435a6b50666a572b462f674f37472f784c6d532b75494736364c563264344a4f696d506f326f536b7a315569424532726d3234686d6a5050474569524a50765a7452684d6d7a6672424e334c693278426e2b764e324a486758595237704a4e6e6675415146395253624b45586f7a397554344352436a48506b7145304a336b55592b5461497a364b747365416275664274457065313446745a7670506f593870733664736f486b4e6d614652496b61706b2f6a72616c454b6c516b685a30354e555649754850552b4354453165426e642f6e373637663936756a764d6145665965626549795a36795353764632714a763439745865564734367438535a4e574d386c495847772b397252685335377459516433614d6e70416664572b703079425274313061306f414e76536359316f5331477354534732595a58594b742f6a57314769545a533264324e4b416e7947346766687665553639426b736577634b4150694b557838744e6f49434f496c4f376f41364c354a39566f6b4b673730314e427343533767545431424c3047345474436a2b4547356a66704e4568553643504362376f62574f4964725159572f2f4650535a3455636b75346f3957676c4e325934736f5465636c737461526d76664346654f7a45466c6365794735513143664d64346631722f454844396f38564246304e6f5578496d61486d7563663331497069792f307a7759394b67377059624b6f4b624a594b706f625a64764f4c614e7a704f645238326f2b5a4a59536e793066504e6847685a464572506f7a6f794d4a483862527547566f554932514476544d697768334c2f71466b542b712f70514c6574704268727543316b396e46413365364138485044765367385136445969466579664344525876714f4e36597732534e4e51463949437a7439524d6737726f496769326e4333475a6872497569677a424659646172447959422b464d576533765a6b476d685758667859646168427168644b495534765a54494e793773452b436f776770374547695166374b4254642b5545536170426b4d304b6b5a2f79705050346e7663443873737944665251734771533837492b684b69646744537839675266665772494a6f57706747524e354775794d6758657759364a6c627552705945354e426a7333576d496b6e67626d446174675979524c724d7a54774a79654c62516c504a3678724a6c344770684c323449747a724b736e586b616d504d78776136644c546b556c6761576e4653774f52524c75316b61744b6c6e703569444a466137442b61704d64546c676932337a744c41584e6b5663473764764d66433073416361775263696a4931646d4b5742756174696f4433327378377268774e2b75595655384237727559424958753650615036533037502f6d74654c525168373732626d35364a4d366f354648583258334f304658514e52714d53416e6f754c65686148455a4e56674d4e4170345a543942723878706f45486874486a3233374b3542774548694a2b52615858634e677431722f4959384b727072454837785072563233316d4438477633795763346e445549337733496a754371515152756344725439614d615248476d693369327a3147444f4d373245633934756d6c51766e6d77783456627972446f706f454b4f484677436557496f354d474d5630445165674e4c687245637472354138496445433461714b6975474c586642654b67516272743370416d724730544a462b446d4161445432783341374531694f3975494f73645556774e5972776a796e5a64476c4f444f4f384b752b6b5a52654270554c35467355796f306a506448636a53494e4a72387a34773343484a3055432b656d6837612b6a76456d566f4945497450694b6976564f5772454770496c6b7536356c71446d39544e53686b4e45744650663146586d636354594d79583851374770347a724e74434a576b67786262373576344d76584831554439426731496472384d4a50746d392f7264445744556f383964594c6f696a386a532f2f41614652594d696e312f6a5a316d654a2b6666496a467063506f577962563968654f622b374e76307567314b4952595270557734764a342f506f32556230477032385448514d764c3269447757716b68465356767773703147676461694679362f536d732b6f6159447762584e4e554341414141414141414141414141414141414141414141414141414141414141414141412b41647363306935784f686e424141414141424a52553545726b4a6767673d3d, 29, 'Hi hello iam also new here..!', 'Pune - Airport'),
('Ramarao L', 8795546878, 'mango1234', 'mango1234', 'https://thumbs.dreamstime.com/b/mango-ripe-white-background-35283521.jpg', 0x68747470733a2f2f7468756d62732e647265616d7374696d652e636f6d2f622f6d616e676f2d726970652d77686974652d6261636b67726f756e642d33353238333532312e6a7067, 35, 'Its Imported Mango Product...!', 'Mumbai - Town'),
('Madhan Reddy', 8789885848, 'goodboy', 'goodboy', 'www.facebook.com', 0x7777772e66616365626f6f6b2e636f6d, 32, 'hi hello iam good boy', 'Kolkata - Airport'),
('kirankumar234@gmail.com', 8789754555, 'greatiam', 'greatiam', 'www.flipkart.in', 0x7777772e666c69706b6172742e696e, 35, 'hi iam good great boy...!', 'Karnataka'),
('mohamadrao123@gmail.com', 8754897568, 'iam1234', 'iam1234', 'www.amazon.in', 0x7777772e616d617a6f6e2e696e, 25, 'www.flipkart.in', 'Kerla - Airport'),
('fdsfdsfdsff', 8965787878, 'asdasd', 'dasasdd', 'dsadasd', 0x64617364617364736164, 35, 'dasdasd', 'dasdasdd');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;