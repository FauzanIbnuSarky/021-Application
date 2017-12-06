-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 06 Des 2017 pada 16.22
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_reeport`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_reeport`
--

CREATE TABLE `tb_reeport` (
  `id` int(11) NOT NULL,
  `judul` varchar(75) NOT NULL,
  `tanggal` date NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_reeport`
--

INSERT INTO `tb_reeport` (`id`, `judul`, `tanggal`, `isi`) VALUES
(1, 'Smartphone Lipat Samsung Galaxy X Rilis 2018?', '2017-12-05', 'Liputan6.com, Jakarta - Laporan tentang rencana Samsung untuk merilis smartphone yang bisa dilipat cukup sering menghiasi internet. Kali ini kembali muncul laporan baru mengenai hal tersebut.\r\n\r\nDilansir Phone Arena, Rabu (5/12/2017), Galaxy X diyakini akan menjadi smartphone lipat pertama Samsung. Menurut laporan terbaru smartphone tersebut kemungkinan akan dirilis pada tahun depan.\r\n\r\nSejumlah sumber dari kalangan industri layar menyebutkan Samsung Display telah berhasil mengembangkan panel yang dapat dilipat dengan kelengkungan 1.0R. Artinya, panel tersebut bisa dilipat dengan posisi ke dalam seperti kertas.\r\n\r\nSejauh ini, banyak orang berpendapat bahwa Samsung akan menggunakan berbagai material plastik untuk memproduksi layar lipat tersebut. Perusahaan asal Negeri Ginseng itu sendiri sudah memiliki berbagai paten teknologi yang berkaitan dengan smartphone lipat.\r\n\r\nPihak Samsung sampai saat ini belum memberikan konfirmasi terkait peluncuran Galaxy X. Namun jika merujuk para pernyataan Presiden Samsung, Ko Dong-jin pada September 2017, kemungkinan Galaxy X meluncur pada 2018.\r\n\r\nSaat itu, Ko Dong-jin mengatakan bahwa Samsung berencana merilis sebuah smartphone lipat pada 2018, tapi ia tidak menyebutkan nama produknya.'),
(2, 'Dubes India: Banyak Engineer India Kembangkan Aplikasi Go-Jek', '2017-12-06', 'Liputan6.com, Jakarta - Duta Besar India untuk ASEAN Suresh Reddy menjelaskan bahwa Go-Jek, layanan transportasi online terbesar di Indonesia, banyak menggunakan engineer dari negerinya, India.\r\n\r\n\"Kalian tahu, ada rahasia apa di balik Go-Jek? Ada siapa di balik Go-Jek?\" tanya Reddy, \"Ya, software Go-Jek juga dibuat oleh para engineer dari India,\" jelasnya dalam pertemuan dengan wartawan di konferensi India-ASEAN ICT Expo 2017 di Shangri-La Ballroom, Jakarta, Rabu (6/12/2017).'),
(3, 'Rozan', '0000-00-00', 'adasdasdasdascascascxcxczx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_reeport`
--
ALTER TABLE `tb_reeport`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_reeport`
--
ALTER TABLE `tb_reeport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
