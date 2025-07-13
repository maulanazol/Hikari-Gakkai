-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Bulan Mei 2024 pada 08.45
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lembagaempat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akademik`
--

CREATE TABLE `akademik` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  `status` enum('Lulus','Belum lulus') DEFAULT NULL,
  `fototest` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `akademik`
--

INSERT INTO `akademik` (`id`, `user_id`, `nilai`, `status`, `fototest`) VALUES
(9, 25, 300, 'Lulus', 'akademik-663eee0dd2d15.pdf'),
(17, 30, 300, 'Lulus', 'akademik-66545a700108e.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` enum('unverified','verified') DEFAULT 'unverified',
  `keterangan` varchar(100) DEFAULT NULL,
  `fotopembayaran` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `user_id`, `status`, `keterangan`, `fotopembayaran`) VALUES
(13, 25, 'verified', 'Daftar Ulang', 'foto-663eed1da7722.jpg'),
(23, 8, 'unverified', 'Daftar Ulang', 'foto-66521fd84a6c6.jpg'),
(24, 30, 'verified', 'Daftar Ulang', 'foto-66545ae5dd2d5.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftar_belajar`
--

CREATE TABLE `pendaftar_belajar` (
  `id` int(11) NOT NULL,
  `pendaftar_belajar` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `alamat_email` varchar(100) DEFAULT NULL,
  `motivasi` varchar(100) DEFAULT NULL,
  `tingkat_belajar` enum('n1','n2','n3','n4','n5') DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `program_belajar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pendaftar_belajar`
--

INSERT INTO `pendaftar_belajar` (`id`, `pendaftar_belajar`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `usia`, `no_hp`, `alamat_email`, `motivasi`, `tingkat_belajar`, `foto`, `program_belajar`) VALUES
(1, 'Muhammad Allathof', 'Laki-laki', 'Jakarta', '2004-08-03', 18, '08273273', 'altof@gmail.com', 'Ingin menguasai bahasa asing', 'n4', 'foto-1.jpg', 1),
(2, 'Muhammad yusuf', 'Laki-laki', 'Jakarta', '2005-04-06', 18, '08829765', 'yusuf@gmail.com', 'Ingin menjadi polyglot', 'n4', 'foto-2.jpg', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftar_kerja`
--

CREATE TABLE `pendaftar_kerja` (
  `id` int(11) NOT NULL,
  `pendaftar_pekerja` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `berat_badan` int(11) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `nikah` varchar(30) DEFAULT NULL,
  `alamat_email` varchar(100) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `alamat_rumah` varchar(100) DEFAULT NULL,
  `sakit_berat` varchar(100) DEFAULT NULL,
  `pendidikan_terakhir` enum('SMA','SMK','D3','S1') DEFAULT NULL,
  `program` int(11) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `fotoijazah` varchar(50) DEFAULT NULL,
  `fotoktp` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` enum('unverified','verified') DEFAULT 'unverified',
  `fotokk` varchar(100) DEFAULT NULL,
  `fotoakte` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pendaftar_kerja`
--

INSERT INTO `pendaftar_kerja` (`id`, `pendaftar_pekerja`, `tempat_lahir`, `tanggal_lahir`, `berat_badan`, `jenis_kelamin`, `nikah`, `alamat_email`, `no_hp`, `alamat_rumah`, `sakit_berat`, `pendidikan_terakhir`, `program`, `foto`, `fotoijazah`, `fotoktp`, `user_id`, `status`, `fotokk`, `fotoakte`) VALUES
(21, 'tenanglah', 'Jakarta', '2004-02-12', 70, 'Laki-laki', 'Belum Menikah', 'tenang@gmail.com', '09774353', 'pondok bahar', 'tidak ada', 'SMA', 36, 'foto-21.jpg', 'ijazah-663eecc023f1e.pdf', 'ktp-663eecc022eeb.pdf', 25, 'verified', 'kk-663eecc021238.pdf', 'akte-663eecc02208e.pdf'),
(25, 'ahmad basir', 'Jakarta', '2004-02-22', 70, 'Laki-laki', 'Belum Menikah', 'ahmadbasir@gmail.com', '088654676', 'jl bakor gang villa', '-', 'SMA', 38, 'foto-664dc5f77033b.jpg', 'ijazah-664dc5f7730d5.pdf', 'ktp-664dc5f7725e0.pdf', 8, 'verified', 'kk-664dc5f770f0f.pdf', 'akte-664dc5f771ac8.pdf'),
(28, 'percobaan', 'Jakarta', '2000-07-19', 80, 'Laki-laki', 'Belum Menikah', 'percobaan@gmail.com', '088473623', 'pondok bahar', '-', 'SMA', 1, 'foto-6654599d4d18d.jpg', 'ijazah-6654599d524a5.pdf', 'ktp-6654599d51072.pdf', 30, 'verified', 'kk-6654599d4ea3e.pdf', 'akte-6654599d4fd98.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `program_belajar`
--

CREATE TABLE `program_belajar` (
  `id` int(11) NOT NULL,
  `nama_program_belajar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `program_belajar`
--

INSERT INTO `program_belajar` (`id`, `nama_program_belajar`) VALUES
(1, 'Regular-Offline'),
(2, 'Regular-Online'),
(3, 'Private - Home');

-- --------------------------------------------------------

--
-- Struktur dari tabel `program_kerja`
--

CREATE TABLE `program_kerja` (
  `id` int(11) NOT NULL,
  `nama_program` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `program_kerja`
--

INSERT INTO `program_kerja` (`id`, `nama_program`) VALUES
(1, 'Magang - Perikanan - Intensif 4 bulan'),
(33, 'Magang - Pertanian - Intensif 4 bulan'),
(34, 'Magang - Peternakan - Intensif 4 bulan'),
(35, 'Magang - Konstruksi - Intensif 4 bulan'),
(36, 'Magang - Pengolahan Makanan - Intensif 4 bulan'),
(37, 'Magang - Perawat Lansia - Intensif 4 bulan'),
(38, 'Tokutei Ginou - Perikanan'),
(39, 'Tokutei Ginou - Pertanian'),
(40, 'Tokutei Ginou - Peternakan'),
(42, 'Tokutei Ginou - Perawat Lansia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `proses_belajar`
--

CREATE TABLE `proses_belajar` (
  `id` int(11) NOT NULL,
  `nama_murid` int(11) DEFAULT NULL,
  `program_proses_belajar` int(11) DEFAULT NULL,
  `deskripsi` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `proses_belajar`
--

INSERT INTO `proses_belajar` (`id`, `nama_murid`, `program_proses_belajar`, `deskripsi`) VALUES
(1, 1, 1, '*Proses Belajar Siswa\r\n-Sudah melakukan ujian awal bulan\r\n-Sudah melakukan ujian listening awal bulan\r\n\r\n*Pembayaran\r\n-1 bulan lunas\r\n'),
(4, 2, 1, '-test');

-- --------------------------------------------------------

--
-- Struktur dari tabel `proses_kerja`
--

CREATE TABLE `proses_kerja` (
  `id` int(11) NOT NULL,
  `nama_pekerja` int(11) DEFAULT NULL,
  `program_proses_kerja` int(11) DEFAULT NULL,
  `deskripsi` varchar(225) DEFAULT NULL,
  `sertifikasi` varchar(100) DEFAULT NULL,
  `kebahasaan` varchar(100) DEFAULT NULL,
  `proses1` varchar(70) DEFAULT NULL,
  `proses2` varchar(70) DEFAULT NULL,
  `nilai` varchar(50) DEFAULT NULL,
  `proses3` varchar(70) DEFAULT NULL,
  `proses4` varchar(70) DEFAULT NULL,
  `proses5` varchar(70) DEFAULT NULL,
  `proses6` varchar(70) DEFAULT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `proses7` varchar(70) DEFAULT NULL,
  `perusahaan` varchar(100) DEFAULT NULL,
  `proses8` varchar(70) DEFAULT NULL,
  `proses9` varchar(70) DEFAULT NULL,
  `proses10` varchar(70) DEFAULT NULL,
  `proses11` varchar(70) DEFAULT NULL,
  `proses12` varchar(70) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `proses_kerja`
--

INSERT INTO `proses_kerja` (`id`, `nama_pekerja`, `program_proses_kerja`, `deskripsi`, `sertifikasi`, `kebahasaan`, `proses1`, `proses2`, `nilai`, `proses3`, `proses4`, `proses5`, `proses6`, `bulan`, `proses7`, `perusahaan`, `proses8`, `proses9`, `proses10`, `proses11`, `proses12`, `user_id`) VALUES
(21, 21, 1, NULL, 'sertifikasi-21.pdf', 'kebahasaan-21.pdf', 'Belum', 'Belum', '90', 'Belum', 'Belum', 'Belum', 'Belum', NULL, 'Belum', NULL, 'Belum', 'Belum', 'Belum', 'Belum', 'Menunggu keputusan', 25),
(33, 28, 1, NULL, '', '', 'Memenuhi', 'Memenuhi', '300', 'Memenuhi', 'Belum', 'Belum', 'Belum', '4', 'Belum', NULL, 'Belum', 'Belum', 'Belum', 'Belum', NULL, 30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','siswa','penguji') NOT NULL DEFAULT 'siswa',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, 'admin', '$2y$10$cZ1Ey5zOGIHMb8Qo.olLZ.gv5Iqlb95b4HVUPFjMwAODhfB5/0t9O', NULL, '2024-04-21 23:58:20', '2024-04-21 23:58:20'),
(3, 'penguji', 'penguji@gmail.com', NULL, 'penguji', '$2y$10$0oQ9yP6Re4dA/VBbUYvzNOs2kmAhIukFjCKkjXhcOxQOBQKifLk.i', NULL, '2024-04-21 23:58:20', '2024-04-21 23:58:20'),
(8, 'Ahmad Basir', 'ahmadbasir@gmail.com', NULL, 'siswa', '$2y$10$/jDJY6N7cncNRsrYbzxNf.sI80aOzT7pFDKq/GpLbiHKW.LJ0xijS', NULL, NULL, NULL),
(23, 'admin2', 'admin2@gmail.com', NULL, 'admin', '$2y$10$wfCLvUNK9TAcHSk77Mg.P.Gb8GVdPM38GIyfDw/ojXYYwiyn0JRUW', NULL, NULL, NULL),
(25, 'tenanglah', NULL, NULL, 'siswa', '$2y$10$Ep0bU9O7.WesMKJIU6bA2eaYiqRiQOGzSz3VYg7vzL628ekUUIMtW', NULL, NULL, '2024-05-20 02:05:06'),
(30, 'percobaan', NULL, NULL, 'siswa', '$2y$10$6fM523QmnyG3t5eUmsEbreWOe4OGJD3SqcIUTxRnoMF8b6p2R/Ey2', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akademik`
--
ALTER TABLE `akademik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `pendaftar_belajar`
--
ALTER TABLE `pendaftar_belajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_program_belajar` (`program_belajar`);

--
-- Indeks untuk tabel `pendaftar_kerja`
--
ALTER TABLE `pendaftar_kerja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_program` (`program`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `program_belajar`
--
ALTER TABLE `program_belajar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `program_kerja`
--
ALTER TABLE `program_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `proses_belajar`
--
ALTER TABLE `proses_belajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pendaftar_belajar` (`nama_murid`),
  ADD KEY `fk_nama_program_belajar` (`program_proses_belajar`);

--
-- Indeks untuk tabel `proses_kerja`
--
ALTER TABLE `proses_kerja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pendaftar_pekerja` (`nama_pekerja`),
  ADD KEY `fk_nama_program` (`program_proses_kerja`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akademik`
--
ALTER TABLE `akademik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `pendaftar_belajar`
--
ALTER TABLE `pendaftar_belajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pendaftar_kerja`
--
ALTER TABLE `pendaftar_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `program_belajar`
--
ALTER TABLE `program_belajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `program_kerja`
--
ALTER TABLE `program_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `proses_belajar`
--
ALTER TABLE `proses_belajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `proses_kerja`
--
ALTER TABLE `proses_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `akademik`
--
ALTER TABLE `akademik`
  ADD CONSTRAINT `akademik_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `pendaftar_belajar`
--
ALTER TABLE `pendaftar_belajar`
  ADD CONSTRAINT `fk_program_belajar` FOREIGN KEY (`program_belajar`) REFERENCES `program_belajar` (`id`);

--
-- Ketidakleluasaan untuk tabel `pendaftar_kerja`
--
ALTER TABLE `pendaftar_kerja`
  ADD CONSTRAINT `fk_program` FOREIGN KEY (`program`) REFERENCES `program_kerja` (`id`),
  ADD CONSTRAINT `pendaftar_kerja_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `proses_belajar`
--
ALTER TABLE `proses_belajar`
  ADD CONSTRAINT `fk_nama_program_belajar` FOREIGN KEY (`program_proses_belajar`) REFERENCES `program_belajar` (`id`),
  ADD CONSTRAINT `fk_pendaftar_belajar` FOREIGN KEY (`nama_murid`) REFERENCES `pendaftar_belajar` (`id`);

--
-- Ketidakleluasaan untuk tabel `proses_kerja`
--
ALTER TABLE `proses_kerja`
  ADD CONSTRAINT `fk_nama_program` FOREIGN KEY (`program_proses_kerja`) REFERENCES `program_kerja` (`id`),
  ADD CONSTRAINT `fk_pendaftar_pekerja` FOREIGN KEY (`nama_pekerja`) REFERENCES `pendaftar_kerja` (`id`),
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
