-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2021 at 03:17 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlhocsinh`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Account` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Account`, `Password`) VALUES
('admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `IdAuttendance` varchar(45) NOT NULL,
  `Student_id` int(11) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Class` varchar(45) DEFAULT NULL,
  `Time_in` time DEFAULT NULL,
  `Time_out` time DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Lesson_id` int(11) DEFAULT NULL,
  `AttendanceStatus` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`IdAuttendance`, `Student_id`, `Name`, `Class`, `Time_in`, `Time_out`, `Date`, `Lesson_id`, `AttendanceStatus`) VALUES
('SV1111120212', 1, 'Nguyễn Văn Tuấn', '21A1', '14:10:53', NULL, '11/11/2021', 2, 'Vắng');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Class` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Class`, `Name`) VALUES
('20A1', 'Toán A1 năm 2020'),
('20A2', 'Toán A2 năm 2020'),
('21A1', 'Toán A1 nam 2021'),
('21A2', 'Toán A2 năm 2021'),
('21A3', 'Lý A3 năm 2021'),
('21A4', 'Lý A4 năm 2021'),
('21B1', 'Hóa B1 năm 2021'),
('21B2', 'Sinh B2 năm 2021'),
('21C1', 'Văn C1 năm 2021'),
('21C2', 'Sử Địa C2 năm 2021'),
('21D1', 'Chuyên Anh D1 năm 2021'),
('21D2', 'Chuyên Pháp Nhật D2 năm 2021');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `Lesson_id` int(11) NOT NULL,
  `Time_start` time DEFAULT NULL,
  `Time_end` time DEFAULT NULL,
  `Date` varchar(45) NOT NULL,
  `Teacher_id` int(11) NOT NULL,
  `Subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`Lesson_id`, `Time_start`, `Time_end`, `Date`, `Teacher_id`, `Subject_id`) VALUES
(1, '14:30:00', '15:30:00', '11/11/2021', 1, 2),
(2, '12:25:00', '13:30:00', '11/11/2021', 2, 1),
(3, '13:35:00', '13:50:00', '11/11/2021', 1, 2),
(4, '07:30:00', '08:10:00', '14/11/2021', 3, 3),
(5, '09:00:00', '09:45:00', '14/11/2021', 5, 5),
(6, '09:45:00', '10:20:00', '14/11/2021', 6, 6),
(7, '10:30:00', '11:15:00', '14/11/2021', 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_id` int(11) NOT NULL,
  `Dep` varchar(45) DEFAULT NULL,
  `course` varchar(45) DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `Semester` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Class` varchar(45) NOT NULL,
  `Roll` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Dob` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `PhotoSample` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_id`, `Dep`, `course`, `Year`, `Semester`, `Name`, `Class`, `Roll`, `Gender`, `Dob`, `Email`, `Phone`, `Address`, `PhotoSample`) VALUES
(1, 'Chính khóa', 'Sáng', '2021-22', 'Học kì I', 'Nguyễn Văn Tuấn', '21A1', '123456', 'Nam', '22/05/2005', 'tuan@yahoo.com', '1234567789', '12 Phan Châu Trinh', 'Yes'),
(2, 'Chính khóa', 'Sáng', '2021-22', 'Học kì I', 'Lê Van Hùng', '21B1', '123456', 'Nam', '22/05/2006', 'hung@gmail.com', '123456789', '123 Phan Châu Trinh', 'Yes'),
(3, 'Chính khóa', 'Sáng', '2021-22', 'Học kì I', 'Nguyễn Bảo Gia Hân', '21A1', '1234567', 'Nữ', '14/11/2002', 'giahan@gmail.com', '09051111111', '28 Chu Mạnh Trinh', ''),
(4, 'Chính khóa', 'Sáng', '2021-22', 'Học kì I', 'Nguyễn Đức Thịnh', '21A1', '123456', 'Nam', '17/10/2009', 'thinh@gmail.com', '0985552002', 'Tổ 60 Nguyễn Phong Sắc', ''),
(5, 'Chính khóa', 'Sáng', '2021-22', 'Học kì I', 'LêThị Khánh Ly', '21A1', '123456', 'Nam', '17/01/2008', 'ly@gmail.com', '0935 688471', '67 Hồ Nguyên Trừng', ''),
(6, 'Chính khóa', 'Sáng', '2021-22', 'Học kì I', 'Phạm Tuấn Hưng', '21A1', '12234455', 'Nam', '15/10/2008', 'hungtuan@gmail.com', '0983250869', '92 Chu Mạnh Trinh', ''),
(7, 'Chính khóa', 'Sáng', '2021-22', 'Học kì I', 'Lê Thị Anh Thư', '21A1', '0776667148', 'Nữ', '24/11/2008', 'anhthu@hotmail.com', '0776 667148', '30 Trần Kim Bảng', ''),
(8, 'Chính khóa', 'Sáng', '2021-22', 'Học kì I', 'Nguyễn Phương Minh', '21A1', '12345677', 'Nam', '04/09/2008', 'minhp@hmail.com', '0983 940906', '99 Phạm Thế Hiển', ''),
(9, 'Chính khóa', 'Sáng', '2021-22', 'Học kì I', 'Lê Ngọc Tâm', '21A1', '12345678', 'Nam', '03/02/2008', 'tamgoc@gmail.com', '0905 054386', '45 Bàu Tràm 2', ''),
(10, 'Hình thức', 'Buổi dạy', 'Chọn năm học', 'Chọn học kì', 'Trương Đức Trung Hiếu', '21A1', '1234567', 'Nam', '05/12/2008', 'trunghieu@yahoo.com', '0905 168335', '219 Nguyễn Hồng Ánh', ''),
(11, 'Chính khóa', 'Sáng', '2021-22', 'Học kì I', 'Hồ Văn Thức', '21A1', '1234567', 'Nam', '19/08/2008', 'thuc@hotmail.com', '0914 716904', '79 Hoàng Đạo Thúy', ''),
(12, 'Hình thức', 'Buổi dạy', 'Chọn năm học', 'Chọn học kì', 'Nguyễn Văn Thành Đạt', '21A1', '1234567', 'Nam', '02/04/2008', 'datthanh@hotmail.com', '0789 436789', '69 Tú Mỡ', ''),
(13, 'Chính khóa', 'Sáng', '2021-22', 'Học kì I', 'Nguyễn Thị Phương Loan', '21A1', '12345667', 'Nữ', '14/09/2008', 'loan@hotmail.com', '0905745427', '98 Nguyễn Hành ', ''),
(14, 'Chính khóa', 'Sáng', '2021-22', 'Học kì I', 'Lương Huỳnh Khánh Ngọc', '21A1', '12345678', 'Nam', '27/10/2008', 'kganhngoc@hotmail.com', '0775067187', '71 Cao Xuân Huy', ''),
(15, 'Hình thức', 'Buổi dạy', 'Chọn năm học', 'Chọn học kì', 'Lưu Hùng Nhân', '21A1', '12345678', 'Nam', '01/06/2008', 'nhan@hotmail.com', '0982119012', '75 Hoàng Đạo Thúy', ''),
(16, 'Chính khóa', 'Sáng', '2021-22', 'Học kì I', 'Lê Kiều Châu Oanh', '21A1', '12345678', 'Nữ', '23/12/2008', 'oanh@hotmail.com', '0793309092', '224 Quách Thị Trang', ''),
(17, 'Chính khóa', 'Sáng', '2021-22', 'Học kì I', 'Lương Sỹ Hoàng Phúc', '21A1', '12345678', 'Nam', '05/05/2008', 'hoangphuc@lqd.edu.com', '0934979958', '45 Pham Thế Hiển', ''),
(18, 'Chính khóa', 'Sáng', '2021-22', 'Học kì I', 'Trần Minh Quân', '21A1', '12345678', 'Nam', '14/11/2008', 'minhquan@gmail.com', '123 Nguyễn Mậu Tài', '0968155755', ''),
(19, 'Chính khóa', 'Sáng', '2021-22', 'Học kì I', 'Lê Duy Bảo Ngọc', '21A1', '12345678', 'Nam', '02/06/2008', 'baongoc@gmail.com', '0963515253', 'K27/22 Nguyễn Thành Hãn', ''),
(20, 'Chính khóa', 'Sáng', '2021-22', 'Học kì I', 'Nguyễn Vũ Hoàng Nhi', '21A1', '12345678', 'Nữ', '20/12/2008', 'hoangnhi@gmail.com', '0906343777', '59 Bàu Cầu 15', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_has_subject`
--

CREATE TABLE `student_has_subject` (
  `Student_id` int(11) NOT NULL,
  `Subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_has_subject`
--

INSERT INTO `student_has_subject` (`Student_id`, `Subject_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Subject_id` int(11) NOT NULL,
  `Subject_name` varchar(45) NOT NULL,
  `Class` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`Subject_id`, `Subject_name`, `Class`) VALUES
(1, 'Toán', '21A1'),
(2, 'Lý', '21B1'),
(3, 'Hóa', '21A1'),
(4, 'Sinh', '21A1'),
(5, 'Tin', '21A1'),
(6, 'Ngữ văn', '21A1'),
(7, 'Lịch sử', '21A1'),
(8, 'Địa lý', '21A1'),
(9, 'Tiếng Anh', '21A1'),
(10, 'Tiếng Pháp', '21A1'),
(11, 'Tiếng Nhật', '21A1'),
(12, 'Giáo dục công dân', '21A1'),
(13, 'Công nghệ', '21A1');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Teacher_id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `SecurityQ` varchar(45) NOT NULL,
  `SecurityA` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Teacher_id`, `Name`, `Phone`, `Email`, `SecurityQ`, `SecurityA`, `Password`) VALUES
(0, 'Admin', '1234567890', 'quocnv@lqddn.edu.vn', 'Sở thích của bạn', 'Quốc', '12345'),
(1, 'Nguyễn Văn Quốc', '6958592698', 'quocnv@lqddn.edu.vn', 'Sở thích của bạn', 'Toán', '123456'),
(2, 'Nguyễn Văn Trung', '0905084183', 'trungnv@gmail.com', 'Sở thích của bạn', 'Văn', '12345'),
(3, 'Ngô Quốc Hưng', '0901111111', 'hung@hotmail.com', 'Sở thích của bạn', 'Lý', '12345'),
(4, 'Bạch Phương Nhi', '0865568579', 'nhi@abc.com', 'Sở thích của bạn', 'Xe oto', '12345'),
(5, 'Nguyễn Nhật Minh', '0905000000', 'nhatminh@lqd.com', 'Sở thích của bạn', 'ABC', '12345'),
(6, 'Mai Thị My', '0905000000', 'mythi@lqd.com', 'Sở thích của bạn', 'My', '12345'),
(7, 'Ðào Thi Thanh Huong', '0905000000', 'huong@lqd.com', 'Sở thích của bạn', 'Huong', '12345'),
(8, 'Trần Thị Bảo Ngọc', '0905000000', 'baongoc@lqd.com', 'Sở thích của bạn', 'Ngoc', '12345'),
(9, 'Lê Hoàng Minh Thư', '0905000000', 'minhthu@gmail.com', 'Sở thích của bạn', 'Thu', '12345'),
(10, 'Nguyễn Nhật Bảo Trâm', '0905000000', 'baotram@lqd.com', 'Sở thích của bạn', 'Trâm', '12345'),
(11, 'Lê Thị Phương Thanh', '0905000000', 'thanh@lqd.com', 'Sở thích của bạn', 'Thanh', '12345'),
(12, 'Cao Tất Thiện', '0905000000', 'thien@lqd.com', 'Sở thích của bạn', 'Thien', '12345'),
(13, 'Phan Lê Hoàng Nam', '0905101010', 'namh@lqd.com', 'Sở thích của bạn', 'Nam', '12345'),
(14, 'Nguyễn Đặng Bảo Ngọc', '0901000000', 'ngoc@lqd.com', 'Sở thích của bạn', 'Ngoc', '12345'),
(15, 'Nguyen Toan Quang', '0901000000', 'quang@lqd.com', 'Sở thích của bạn', 'Quang', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_has_subject`
--

CREATE TABLE `teacher_has_subject` (
  `Teacher_id` int(11) NOT NULL,
  `Subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_has_subject`
--

INSERT INTO `teacher_has_subject` (`Teacher_id`, `Subject_id`) VALUES
(1, 2),
(3, 3),
(2, 1),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Account`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`IdAuttendance`),
  ADD KEY `Student_id` (`Student_id`) USING BTREE,
  ADD KEY `Lesson_id` (`Lesson_id`) USING BTREE;

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`Class`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`Lesson_id`),
  ADD KEY `Subject_id` (`Subject_id`) USING BTREE,
  ADD KEY `Teacher_id` (`Teacher_id`) USING BTREE;

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`),
  ADD KEY `Class` (`Class`);

--
-- Indexes for table `student_has_subject`
--
ALTER TABLE `student_has_subject`
  ADD KEY `Student_id_2` (`Student_id`),
  ADD KEY `Subject_id` (`Subject_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Subject_id`),
  ADD KEY `Class` (`Class`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Teacher_id`);

--
-- Indexes for table `teacher_has_subject`
--
ALTER TABLE `teacher_has_subject`
  ADD KEY `Teacher_id` (`Teacher_id`),
  ADD KEY `Subject_id` (`Subject_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `attendance_ibfk_4` FOREIGN KEY (`Lesson_id`) REFERENCES `lesson` (`Lesson_id`);

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_3` FOREIGN KEY (`Subject_id`) REFERENCES `subject` (`Subject_id`),
  ADD CONSTRAINT `lesson_ibfk_4` FOREIGN KEY (`Teacher_id`) REFERENCES `teacher` (`Teacher_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Class`) REFERENCES `class` (`Class`);

--
-- Constraints for table `student_has_subject`
--
ALTER TABLE `student_has_subject`
  ADD CONSTRAINT `student_has_subject_ibfk_3` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `student_has_subject_ibfk_4` FOREIGN KEY (`Subject_id`) REFERENCES `subject` (`Subject_id`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`Class`) REFERENCES `class` (`Class`);

--
-- Constraints for table `teacher_has_subject`
--
ALTER TABLE `teacher_has_subject`
  ADD CONSTRAINT `teacher_has_subject_ibfk_3` FOREIGN KEY (`Subject_id`) REFERENCES `subject` (`Subject_id`),
  ADD CONSTRAINT `teacher_has_subject_ibfk_4` FOREIGN KEY (`Teacher_id`) REFERENCES `teacher` (`Teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
