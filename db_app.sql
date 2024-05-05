-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Agu 2023 pada 02.34
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` varchar(25) NOT NULL,
  `id_invoice` varchar(30) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(255) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`) VALUES
(38, '11', 'INV-74851623', 7, 'Jaket Training Tracktop Neck Model Three Lines Jaket Olahraga Unisex', 1, 75000),
(39, '11', 'INV-29198579', 1, 'Sepatu Converse', 1, 100000),
(40, '11', 'INV-60867048', 1, 'Sepatu Converse', 1, 100000),
(41, '11', 'INV-6064690', 2, 'Sepatu New Era', 1, 300000),
(42, '11', 'INV-6064690', 7, 'Jaket Training Tracktop Neck Model Three Lines Jaket Olahraga Unisex', 1, 75000),
(43, '11', 'INV-6064690', 14, 'BOLA BASKET MIKASA FIBA', 1, 235000),
(44, '11', 'INV-27186788', 7, 'Jaket Training Tracktop Neck Model Three Lines Jaket Olahraga Unisex', 1, 75000);

--
-- Trigger `cart`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `cart` FOR EACH ROW BEGIN
	UPDATE product SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Sepatu Converse', 'Sepatu Santai Pria Converse', 'Sepatu', 100000, 5, 'sepatu.jpg'),
(2, 'Sepatu New Era', 'Sepatu Santai Pria New Era', 'Sepatu', 300000, 7, 'era.jpg'),
(7, 'Jaket Training Tracktop Neck Model Three Lines Jaket Olahraga Unisex', '- Jaket olahraga \r\n- Dengan detail turle neck dan zipper opening \r\n- Dengan bahan nyaman, tidak terlalu tebal/kaku, memberikan keleluasaan dalam bergerak, khususnya dalam olahraga atau aktivitas luar ruangan lainnya \r\n- Desain three lines memberikan kesan', 'Jacket', 75000, 16, '1.jpeg'),
(8, 'JAKET OLAHRAGA PRIA LARI RUNNING JOGGING SEPEDA PARASUT WINDPROOF', 'Jaket berbahan polyseter import berkualitas yang dapat menahan air (Waterproof) dengan intensitas hujan ringan dan menahan angin (Windproof), sangat cocok digunakan untuk kegiatan diluar ruangan (outdoor) seperti olahraga lari (running), bersepeda, naik g', 'Jacket', 149000, 10, '2.jpg'),
(10, 'Bola Futsal Ortuseight Lightning Fs Ball', 'BOLA FUTSAL Ortuseight 100% ORIGINAL LIGHTNING  100% Original Product (Tidak Original Uang Kembali Gan) Silahkan Gan, Selama Persediaan Masih Ada', 'bola', 177650, 48, '3.jpeg'),
(12, 'TIRO LEAGUE SALA BALL', 'Rapi dan klasik, lini sepak bola adidas Tiro memenuhi semua kebutuhan tim Anda. Dibuat untuk sesi latihan futsal, Tiro League Sala Ball ini menampilkan tanda IMS untuk memastikan kualitasnya. Konstruksinya yang mulus dan desain pantulan rendah akan memban', 'bola', 450000, 50, '4.jpeg'),
(14, 'BOLA BASKET MIKASA FIBA', 'Bola Basket MIKASA FIBA Warna: Orange  Spesifikasi : Size: 7  Tipe: Rubber', 'bola', 235000, 9, '5.jpeg'),
(15, 'Baju Olahraga Anak Stelan Jersey Basket Anak Baju Basket Nba Anak - LAKERS HITAM, L', 'SELAMAT DATANG DI TOKO KAMI  DIBACA DULU YA KAK!!! INI SIZE BUAT ANAK SD.. KALO ANAK SMP NGGA BAKALAN MUAT JANGAN MAKSAIN ORDER', 'pakaian', 157000, 30, '6.jpeg'),
(17, 'RAKET BADMINTON YONEX ASTROX 100 ZX', 'ASTROX 100 ZX Length: 10mm longer,\r\n  Item Code: AX100ZX,\r\n  Flex: EXTRA STIFF,\r\n  Frame: HM Graphite / Nanomesh NEO / Tungsten,\r\n  Shaft: HM Graphite / Namd  Stringing Advice: 4U 20-28lbs,\r\n Colour: Dark Navy,\r\n Made in taiwan', 'alat', 1600000, 10, '8.jpeg'),
(18, 'Montana Shuttlecock', '100% Original 1 slop isi 12pcs', 'alat', 35000, 50, '9.jpeg'),
(19, 'TAS SERUT - STRING BAG-TAS RANSEL SERBAGUNA NIKE ADIDAS', 'SEMENTARA READY GA ADA KANTONG YA', 'tas', 20000, 20, '10.jpeg'),
(20, 'Tas Kontingen Olahraga Tas Olahraga Kode TB-567', 'Tas Kontingen ini cocok digunakan untuk kegiatan kontingen olahraga. Sebagai promosi acara maupun kegiatan lainnya.  Tas ini dapat menyimpan barang bawaan dengan lengkap dan praktis.', 'tas', 105000, 15, '111.jpeg'),
(21, 'Pakaian Olahraga Men sportswear tracksuit Workout Quick Dry 1 Set', 'Kaus dan celana ini cocok untuk digunakan sebagai pakaian olahraga Anda baik olahraga indoor maupun outdoor Terbuat dari bahan spandeks dan poliester berkualitas yang nyaman saat digunakan dan elastis serta adem membuat Anda nyaman dalam kondisi cuaca din', 'pakaian', 149500, 15, '12.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `order_id` char(30) NOT NULL,
  `id_user` varchar(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(225) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `mobile_phone` varchar(15) NOT NULL,
  `city` varchar(255) NOT NULL,
  `kode_pos` varchar(100) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `ekspedisi` varchar(100) NOT NULL,
  `tracking_id` varchar(30) NOT NULL,
  `transaction_time` datetime DEFAULT NULL,
  `payment_limit` datetime DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `gambar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`order_id`, `id_user`, `name`, `email`, `alamat`, `mobile_phone`, `city`, `kode_pos`, `payment_method`, `ekspedisi`, `tracking_id`, `transaction_time`, `payment_limit`, `status`, `gambar`) VALUES
('INV-27186788', '11', 'arii', 'arii@gmail.com', 'kwqe', '1231', 'Padang', '32', 'Direct Bank Transfer', 'GO-SEND', '378849781177', '2023-08-01 07:28:59', '2023-08-02 07:28:59', '0', NULL),
('INV-29198579', '11', 'ari', 'ari@gmail.com', 'sdaa', '08', 'Malang', '022', 'Direct Bank Transfer', 'SICEPAT', '888176572261', '2023-07-28 17:26:32', '2023-07-29 17:26:32', '1', ''),
('INV-6064690', '11', 'arii', 'arii@gmail.com', 'Perintis', '1234567', 'Padang', '12314', 'Direct Bank Transfer', 'ANTERAJA', '124635270914', '2023-07-31 11:50:28', '2023-08-01 11:50:28', '1', NULL),
('INV-60867048', '11', 'arii', 'arii@gmail.com', 'Laewq', '12312321412', 'Bukittinggi', '3212', 'Direct Bank Transfer', 'SICEPAT', '136375706336', '2023-07-31 10:53:32', '2023-08-01 10:53:32', '1', '4.jpg'),
('INV-74851623', '11', 'ari', 'ari@gmail.com', '123', '132', 'Bekasi', '123', 'Direct Bank Transfer', 'J&T Express', '220685373439', '2023-06-15 11:17:49', '2023-06-16 11:17:49', '1', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `email`, `password`, `level`, `avatar`) VALUES
(6, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '1', 'user.png'),
(11, 'arii', 'arii@gmail.com', '202cb962ac59075b964b07152d234b70', '2', 'user.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`order_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
