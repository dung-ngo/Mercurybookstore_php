-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 08, 2020 at 08:06 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ql_bansach1`
--

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

DROP TABLE IF EXISTS `sach`;
CREATE TABLE IF NOT EXISTS `sach` (
  `IDSach` int(255) NOT NULL,
  `TenSach` varchar(255) COLLATE utf8_bin NOT NULL,
  `URLHinh` varchar(255) COLLATE utf8_bin NOT NULL,
  `GiaBan` double NOT NULL,
  `SoLuong` int(255) NOT NULL,
  `TacGia` varchar(255) COLLATE utf8_bin NOT NULL,
  `NamXB` int(255) NOT NULL,
  `MoTaNgan` varchar(5000) COLLATE utf8_bin NOT NULL,
  `ThuocTL` varchar(5) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`IDSach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`IDSach`, `TenSach`, `URLHinh`, `GiaBan`, `SoLuong`, `TacGia`, `NamXB`, `MoTaNgan`, `ThuocTL`) VALUES
(1, 'Đừng lựa chọn an nhàn khi còn trẻ', 'https://salt.tikicdn.com/cache/200x200/ts/product/eb/62/6b/0e56b45bddc01b57277484865818ab9b.jpg', 12500, 10, 'NBX 1', 1999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque lectus nisi, tristique id interdum ac, volutpat vitae risus. Mauris molestie ornare odio, et sodales nibh eleifend et. Vivamus ullamcorper lectus neque, at aliquet magna sollicitudin ac. Praesent malesuada est nec diam rhoncus efficitur. Nulla facilisi. Nullam eget nunc risus. Maecenas vitae mauris ultricies, vehicula arcu eget, tincidunt diam. Pellentesque sed erat sapien. Maecenas accumsan felis pellentesque leo aliquet porttitor. Nullam augue est, luctus sit amet consequat euismod, consectetur nec erat. Suspendisse eros dolor, tincidunt ut felis vitae, fermentum dignissim diam. Etiam leo leo, aliquet sit amet lobortis in, pulvinar non libero.', 'TT'),
(2, 'Cân bằng cảm xúc', 'https://salt.tikicdn.com/cache/200x200/ts/product/fd/61/1d/a19424cfe9d113c32732d93cf2d5f59a.jpg', 7500, 11, 'NBX 2', 2005, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque lectus nisi, tristique id interdum ac, volutpat vitae risus. Mauris molestie ornare odio, et sodales nibh eleifend et. Vivamus ullamcorper lectus neque, at aliquet magna sollicitudin ac. Praesent malesuada est nec diam rhoncus efficitur. Nulla facilisi. Nullam eget nunc risus. Maecenas vitae mauris ultricies, vehicula arcu eget, tincidunt diam. Pellentesque sed erat sapien. Maecenas accumsan felis pellentesque leo aliquet porttitor. Nullam augue est, luctus sit amet consequat euismod, consectetur nec erat. Suspendisse eros dolor, tincidunt ut felis vitae, fermentum dignissim diam. Etiam leo leo, aliquet sit amet lobortis in, pulvinar non libero.', 'TC'),
(3, 'Lược sử loài người', 'https://salt.tikicdn.com/cache/200x200/ts/product/56/3f/4f/f4e6621e69775643d22604bccef281bf.jpg', 26800, 12, 'NBX 3', 2010, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque lectus nisi, tristique id interdum ac, volutpat vitae risus. Mauris molestie ornare odio, et sodales nibh eleifend et. Vivamus ullamcorper lectus neque, at aliquet magna sollicitudin ac. Praesent malesuada est nec diam rhoncus efficitur. Nulla facilisi. Nullam eget nunc risus. Maecenas vitae mauris ultricies, vehicula arcu eget, tincidunt diam. Pellentesque sed erat sapien. Maecenas accumsan felis pellentesque leo aliquet porttitor. Nullam augue est, luctus sit amet consequat euismod, consectetur nec erat. Suspendisse eros dolor, tincidunt ut felis vitae, fermentum dignissim diam. Etiam leo leo, aliquet sit amet lobortis in, pulvinar non libero.', 'TN'),
(4, 'Nhà giả kim', 'https://salt.tikicdn.com/cache/200x200/ts/product/66/5f/5a/312bac222584d52fea5e9d644369b254.jpg', 31200, 10, 'NBX 4', 1905, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque lectus nisi, tristique id interdum ac, volutpat vitae risus. Mauris molestie ornare odio, et sodales nibh eleifend et. Vivamus ullamcorper lectus neque, at aliquet magna sollicitudin ac. Praesent malesuada est nec diam rhoncus efficitur. Nulla facilisi. Nullam eget nunc risus. Maecenas vitae mauris ultricies, vehicula arcu eget, tincidunt diam. Pellentesque sed erat sapien. Maecenas accumsan felis pellentesque leo aliquet porttitor. Nullam augue est, luctus sit amet consequat euismod, consectetur nec erat. Suspendisse eros dolor, tincidunt ut felis vitae, fermentum dignissim diam. Etiam leo leo, aliquet sit amet lobortis in, pulvinar non libero.', 'KH'),
(5, 'Bạn đắt giá bao nhiêu?', 'https://salt.tikicdn.com/cache/200x200/ts/product/87/c9/c0/bfebf4adcb31c8eb5c39fd3779cc4b68.jpg', 18900, 2, 'NBX 5', 2003, 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris lacinia nunc vitae congue porta. Integer ac sapien quis sapien mollis aliquet. Integer elementum, est id auctor pellentesque, eros metus cursus quam, vel tempus velit felis tincidunt sapien. Sed ac tristique nibh. In eu gravida risus. Donec id odio volutpat, ornare tortor sit amet, malesuada lectus. Mauris auctor mollis pharetra. Mauris aliquam libero dapibus augue sodales sodales. Vivamus tempus orci eget odio cursus luctus. Ut et erat suscipit, blandit eros in, blandit turpis. Nunc interdum elit vel risus sagittis malesuada. Suspendisse accumsan nunc vehicula dui posuere, vel venenatis orci ultrices. Morbi tincidunt leo et sapien bibendum, at porta lorem laoreet.\r\n\r\nPellentesque placerat faucibus libero, ac tincidunt orci vehicula sed. Phasellus ut mauris ac lorem egestas luctus. Aliquam interdum sem a arcu tempor, ac vestibulum risus finibus. Cras facilisis fermentum nibh. Sed ut massa tempus felis viverra tincidunt ac in est. Sed eu nulla vitae libero eleifend auctor imperdiet commodo mi. Nullam metus ipsum, consequat eget rhoncus placerat, pharetra ut urna.', 'KT'),
(6, 'Cuộc sống giống cuộc đời', 'https://salt.tikicdn.com/cache/200x200/ts/product/41/b8/7a/b32bdb87eb8fc3b2c584096f0356d77e.jpg', 13700, 10, 'NBX 6', 2001, 'Ut laoreet gravida justo, eget auctor purus luctus quis. Curabitur id risus interdum, malesuada erat eget, condimentum ante. Praesent vitae neque tempor, interdum ex eu, condimentum nisi. Curabitur hendrerit luctus nisl vel mattis. In vel maximus odio, quis porttitor orci. Aenean quis sem sit amet leo rhoncus feugiat eu ut metus. Ut nec nulla vel urna lobortis mattis non et lectus.\r\n\r\nNullam id scelerisque justo, congue gravida magna. Phasellus mollis euismod sapien et venenatis. Aenean scelerisque erat dui, vehicula commodo sapien faucibus in. Nullam accumsan pretium tristique. Phasellus justo lorem.', 'NN'),
(7, 'Sherlock Holmes', 'https://salt.tikicdn.com/cache/200x200/ts/product/d2/17/7b/f8380fa2630080c89bd66910bacfa3ba.jpg', 111000, 4, 'NBX 7', 1999, 'Ut laoreet gravida justo, eget auctor purus luctus quis. Curabitur id risus interdum, malesuada erat eget, condimentum ante. Praesent vitae neque tempor, interdum ex eu, condimentum nisi. Curabitur hendrerit luctus nisl vel mattis. In vel maximus odio, quis porttitor orci. Aenean quis sem sit amet leo rhoncus feugiat eu ut metus.\r\n\r\nUt nec nulla vel urna lobortis mattis non et lectus. Nullam id scelerisque justo, congue gravida magna. Phasellus mollis euismod sapien et venenatis. Aenean scelerisque erat dui, vehicula commodo sapien faucibus in. Nullam accumsan pretium tristique. Phasellus justo lorem, cursus lacinia ipsum et, placerat ullamcorper sapien.', 'TT'),
(8, 'Lược sử tương lai', 'https://salt.tikicdn.com/cache/200x200/ts/product/f6/c4/c1/37cc7da534a3a25e39e4b5e32bf5f6ba.jpg', 102600, 13, 'NBX 8', 2008, 'Phasellus malesuada ullamcorper tellus. Cras vel mauris nulla. Sed sodales ultrices ultrices. In euismod euismod viverra. Phasellus ipsum mi, suscipit at purus a, aliquet posuere turpis. Sed commodo nec nisl at tristique. Maecenas ultricies massa orci. Nullam eget congue dolor.\r\n\r\nOrci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas euismod semper pharetra. Sed velit massa, condimentum eget venenatis id, mollis id nulla. Sed ac sem in ligula ornare accumsan et at metus. Proin suscipit diam at velit luctus tempus. Maecenas faucibus commodo nisi sit amet malesuada. Nam consectetur vel augue in lacinia. Pellentesque pellentesque ante a sollicitudin aliquam.', 'TN'),
(9, 'Khơi dậy cảm hứng học tập', 'https://salt.tikicdn.com/cache/200x200/ts/product/04/57/21/799ff541e1ae2e534bc447dac776ea39.jpg', 15350, 9, 'NBX 9', 2011, 'Integer lacinia sapien at ipsum mollis convallis. Maecenas nec felis vel urna rutrum finibus. Ut auctor orci odio, sit amet tempor magna commodo vestibulum. Duis id dapibus nulla. Pellentesque tincidunt purus feugiat neque laoreet sollicitudin. Mauris eleifend condimentum mollis. Aliquam dictum arcu quis turpis tincidunt molestie a eget augue. Phasellus pellentesque ut nibh sit amet congue. Phasellus a tincidunt nunc. Suspendisse mollis felis et sagittis mattis.\r\n\r\nPraesent lacinia in arcu a bibendum. Fusce ac porta lorem. Morbi vel rhoncus sapien. Nullam a massa malesuada, finibus mi vel, dictum dui. Morbi egestas neque at urna fermentum fringilla. Praesent ac ligula commodo, hendrerit velit volutpat, lacinia massa.', 'TV'),
(10, 'Combo Tiếng Anh giao tiếp', 'https://salt.tikicdn.com/cache/200x200/ts/product/82/1c/76/2745a21a7ea39f802b1993a2373a8ac2.jpg', 98000, 15, 'NBX 10', 2015, 'Donec porttitor hendrerit accumsan. Integer urna massa, imperdiet vitae semper a, venenatis accumsan quam. Duis iaculis enim lacus. Morbi sed elit ultricies, dictum velit eget, mollis arcu. Sed rhoncus hendrerit eros id vulputate. Maecenas feugiat ex eget mollis elementum. Aenean in venenatis lacus.\r\n\r\nNunc leo justo, interdum quis iaculis sed, porta tristique risus. In ut hendrerit leo, sed ultricies eros. Pellentesque at tellus molestie, eleifend orci quis, consequat arcu. Ut eu turpis ligula. Donec magna velit, maximus non lobortis sed, consectetur dictum sapien. Aenean non ante felis. Phasellus at enim malesuada, condimentum nunc ac, viverra lectus. Morbi eleifend lacinia nisi et fermentum.', 'SGK');

-- --------------------------------------------------------

--
-- Table structure for table `theloaisach`
--

DROP TABLE IF EXISTS `theloaisach`;
CREATE TABLE IF NOT EXISTS `theloaisach` (
  `IDTL` varchar(5) COLLATE utf8_bin NOT NULL,
  `TenTL` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`IDTL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `theloaisach`
--

INSERT INTO `theloaisach` (`IDTL`, `TenTL`) VALUES
('KH', 'Khoa học'),
('KT', 'Kinh tế'),
('NN', 'Nước ngoài'),
('SGK', 'Sách giáo khoa'),
('TC', 'Tình cảm'),
('TN', 'Truyện ngắn'),
('TT', 'Trinh thám'),
('TV', 'Tản văn');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
