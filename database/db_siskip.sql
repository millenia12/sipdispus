-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jan 2023 pada 07.35
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_siskip`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `komponen`
--

CREATE TABLE `komponen` (
  `id_komponen` int(11) NOT NULL,
  `komponen` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `komponen`
--

INSERT INTO `komponen` (`id_komponen`, `komponen`) VALUES
(1, 'Perencanaan Kinerja'),
(2, 'Pengukuran Kinerja'),
(3, 'Pelaporan Kinerja'),
(4, 'Evaluasi Akuntabilitas Kinerja Internal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `opd`
--

CREATE TABLE `opd` (
  `id_opd` int(20) NOT NULL,
  `jabatan` varchar(1024) NOT NULL,
  `bidang` varchar(255) NOT NULL,
  `nama_lengkap` varchar(1024) NOT NULL,
  `nip` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `opd`
--

INSERT INTO `opd` (`id_opd`, `jabatan`, `bidang`, `nama_lengkap`, `nip`) VALUES
(1, 'Kepala Dinas', 'Ketua Kepala', 'Ir. B. Eko Yunianto, M.Si.', '1929210310'),
(2, 'Sekretaris Dinas', 'Sekretaris 1', 'Ir. Siti Nurul Hidayati', '8120391031'),
(3, 'Kepala Bidang Pelayanan Perpustakaan', 'Kepala Bidang', 'Penta Lianawati, S.E, M.Si.', '102910293103'),
(5, 'Kepala Bidang Arsip Statis', 'Kepala Statis', 'Tri, S.H.', '102910293103');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_u` int(11) NOT NULL,
  `id_opd` int(11) NOT NULL,
  `id_subkomponen` int(11) NOT NULL,
  `tanggal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nilai` float NOT NULL,
  `kualitas` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hasil` float NOT NULL,
  `kualitas_hasil` varchar(10) NOT NULL,
  `predikat` varchar(50) NOT NULL,
  `catatan` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `daftar_evidence` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kesimpulan_evaluasi` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_u`, `id_opd`, `id_subkomponen`, `tanggal`, `nilai`, `kualitas`, `hasil`, `kualitas_hasil`, `predikat`, `catatan`, `daftar_evidence`, `kesimpulan_evaluasi`) VALUES
(25, 2, 3, 1, '11/01/2023', 80, 'BB', 78.33, 'BB', 'Sangat Baik', '-', '-', 'Tingkatkan kinerjanya lagi'),
(26, 2, 3, 2, '11/01/2023', 70, 'B', 78.33, 'BB', 'Sangat Baik', '-', '-', 'Tingkatkan kinerjanya lagi'),
(27, 2, 3, 3, '11/01/2023', 90, 'A', 78.33, 'BB', 'Sangat Baik', '-', '-', 'Tingkatkan kinerjanya lagi'),
(28, 2, 3, 4, '11/01/2023', 99, 'AA', 78.33, 'BB', 'Sangat Baik', '-', '-', 'Tingkatkan kinerjanya lagi'),
(29, 2, 3, 5, '11/01/2023', 60, 'CC', 78.33, 'BB', 'Sangat Baik', '-', '-', 'Tingkatkan kinerjanya lagi'),
(30, 2, 3, 6, '11/01/2023', 80, 'BB', 78.33, 'BB', 'Sangat Baik', '-', '-', 'Tingkatkan kinerjanya lagi'),
(31, 2, 3, 7, '11/01/2023', 60, 'CC', 78.33, 'BB', 'Sangat Baik', '-', '-', 'Tingkatkan kinerjanya lagi'),
(32, 2, 3, 8, '11/01/2023', 80, 'BB', 78.33, 'BB', 'Sangat Baik', '-', '-', 'Tingkatkan kinerjanya lagi'),
(33, 2, 3, 9, '11/01/2023', 88, 'A', 78.33, 'BB', 'Sangat Baik', '-', '-', 'Tingkatkan kinerjanya lagi'),
(34, 2, 3, 10, '11/01/2023', 88, 'A', 78.33, 'BB', 'Sangat Baik', '-', '-', 'Tingkatkan kinerjanya lagi'),
(35, 2, 3, 11, '11/01/2023', 55, 'CC', 78.33, 'BB', 'Sangat Baik', '-', '-', 'Tingkatkan kinerjanya lagi'),
(36, 2, 3, 12, '11/01/2023', 90, 'A', 78.33, 'BB', 'Sangat Baik', '-', '-', 'Tingkatkan kinerjanya lagi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkomponen`
--

CREATE TABLE `subkomponen` (
  `id_subkomponen` int(11) NOT NULL,
  `id_komponen` int(11) NOT NULL,
  `subkomponen` varchar(1024) NOT NULL,
  `kriteria` varchar(5000) NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `subkomponen`
--

INSERT INTO `subkomponen` (`id_subkomponen`, `id_komponen`, `subkomponen`, `kriteria`, `bobot`) VALUES
(1, 1, 'Dokumen Perencanaan Kinerja telah Tersedia', '<p>1.&nbsp;Terdapat pedoman teknis perencanaan kinerja.</p>\r\n\r\n<p>2.&nbsp;Terdapat dokumen perencanaan kinerja jangka panjang.</p>\r\n\r\n<p>3.&nbsp;Terdapat dokumen perencanaan kinerja jangka menengah.</p>\r\n\r\n<p>4.&nbsp;Terdapat dokumen perencanaan kinerja jangka pendek.</p>\r\n\r\n<p>5.&nbsp;Terdapat dokumen perencanaan aktivitas yang mendukung kinerja.</p>\r\n\r\n<p>6.&nbsp;Terdapat dokumen perencanaan anggaran yang mendukung kinerja.</p>\r\n', 6),
(2, 1, 'Dokumen Perencanaan kinerja telah memenuhi standar yang baik, yaitu untuk mencapai hasil, dengan ukuran kinerja yang SMART, menggunakan penyelarasan (cascading) disetiap level secara logis, serta memperhatikan kinerja bidang lain (crosscutting)', '<p>1.&nbsp;Dokumen Perencanaan Kinerja telah diformalkan.</p>\r\n\r\n<p>2.&nbsp;Dokumen Perencanaan Kinerja telah dipublikasikan tepat waktu.</p>\r\n\r\n<p>3.&nbsp;Dokumen Perencanaan Kinerja telah menggambarkan Kebutuhan atas Kinerja sebenarnya yang perlu dicapai.</p>\r\n\r\n<p>4.&nbsp;Kualitas Rumusan Hasil (Tujuan/Sasaran) telah jelas menggambarkan kondisi kinerja yang akan dicapai.</p>\r\n\r\n<p>5.&nbsp;Ukuran Keberhasilan (Indikator Kinerja) telah memenuhi kriteria SMART.</p>\r\n\r\n<p>6.&nbsp;Indikator Kinerja Utama (IKU) telah menggambarkan kondisi Kinerja Utama yang harus dicapai, tertuang secara berkelanjutan (sustainable - tidak sering diganti dalam 1 periode Perencanaan Strategis).</p>\r\n\r\n<p>7.&nbsp;Target yang ditetapkan dalam Perencanaan Kinerja dapat dicapai (achievable), menantang, dan realistis.</p>\r\n\r\n<p>8.&nbsp;Setiap Dokumen Perencanaan Kinerja menggambarkan hubungan yang berkesinambungan, serta selaras antara Kondisi/Hasil yang akan dicapai di setiap level jabatan (Cascading).</p>\r\n\r\n<p>9.&nbsp;Perencanaan kinerja dapat memberikan informasi tentang hubungan kinerja, strategi, kebijakan, bahkan aktivitas antar bidang/dengan tugas dan fungsi lain yang berkaitan (Crosscutting).</p>\r\n\r\n<p>10.&nbsp;Setiap unit/satuan kerja merumuskan dan menetapkan Perencanaan Kinerja.</p>\r\n\r\n<p>11.&nbsp;Setiap pegawai merumuskan dan menetapkan Perencanaan Kinerja.</p>\r\n', 9),
(3, 1, 'Perencanaan Kinerja telah dimanfaatkan untuk mewujudkan hasil yang berkesinambungan', '<p>1.&nbsp;Anggaran yang ditetapkan telah mengacu pada Kinerja yang ingin dicapai.</p>\r\n\r\n<p>2.&nbsp;Aktivitas yang dilaksanakan telah mendukung Kinerja yang ingin dicapai.</p>\r\n\r\n<p>3.&nbsp;Target yang ditetapkan dalam Perencanaan Kinerja telah dicapai dengan baik, atau setidaknya masih on the right track.</p>\r\n\r\n<p>4.&nbsp;Rencana aksi kinerja dapat berjalan dinamis karena capaian kinerja selalu dipantau secara berkala.</p>\r\n\r\n<p>5.&nbsp;Terdapat perbaikan/penyempurnaan Dokumen Perencanaan Kinerja yang ditetapkan dari hasil analisis perbaikan kinerja sebelumnya.</p>\r\n\r\n<p>6.&nbsp;Terdapat perbaikan/penyempurnaan Dokumen Perencanaan Kinerja dalam mewujudkan kondisi/hasil yang lebih baik.</p>\r\n\r\n<p>7.&nbsp;Setiap unit/satuan kerja memahami dan peduli, serta berkomitmen dalam mencapai kinerja yang telah direncanakan.</p>\r\n\r\n<p>8.&nbsp;Setiap Pegawai memahami dan peduli, serta berkomitmen dalam mencapai kinerja yang telah direncanakan.</p>\r\n', 15),
(4, 2, 'Pengukuran Kinerja telah dilakukan', '<p>1.&nbsp;Terdapat pedoman teknis pengukuran kinerja dan pengumpulan data kinerja.</p>\r\n\r\n<p>2.&nbsp;Terdapat Definisi Operasional yang jelas atas kinerja dan cara mengukur indikator kinerja.</p>\r\n\r\n<p>3.&nbsp;Terdapat mekanisme yang jelas terhadap pengumpulan data kinerja yang dapat diandalkan.</p>\r\n', 6),
(5, 2, 'Pengukuran Kinerja telah menjadi kebutuhan dalam mewujudkan Kinerja secara Efektif dan Efisien dan telah dilakukan secara berjenjang dan berkelanjutan', '<p>1.&nbsp;Pimpinan selalu teribat sebagai pengambil keputusan (Decision Maker) dalam mengukur capaian kinerja.</p>\r\n\r\n<p>2.&nbsp;Data kinerja yang dikumpulkan telah relevan untuk mengukur capaian kinerja yang diharapkan.</p>\r\n\r\n<p>3.&nbsp;Data kinerja yang dikumpulkan telah mendukung capaian kinerja yang diharapkan.</p>\r\n\r\n<p>4.&nbsp;Pengukuran kinerja telah dilakukan secara berkala.</p>\r\n\r\n<p>5.&nbsp;Setiap level organisasi melakukan pemantauan atas pengukuran capaian kinerja unit dibawahnya secara berjenjang.</p>\r\n\r\n<p>6.&nbsp;Pengumpulan data kinerja telah memanfaatkan Teknologi Informasi (Aplikasi).</p>\r\n\r\n<p>7.&nbsp;Pengukuran capaian kinerja telah memanfaatkan Teknologi Informasi (Aplikasi).</p>\r\n', 9),
(6, 2, 'Pengukuran Kinerja telah dijadikan dasar dalam pemberian Reward dan Punishment, serta penyesuaian strategi dalam mencapai kinerja yang efektif dan efisien', '<p>1.&nbsp;Pengukuran Kinerja telah menjadi dasar dalam penyesuaian (pemberian/pengurangan) tunjangan kinerja/penghasilan.</p>\r\n\r\n<p>2.&nbsp;Pengukuran Kinerja telah menjadi dasar dalam penempatan/penghapusan Jabatan baik struktural maupun fungsional.</p>\r\n\r\n<p>3.&nbsp;Pengukuran kinerja telah mempengaruhi penyesuaian (Refocusing) Organisasi.</p>\r\n\r\n<p>4.&nbsp;Pengukuran kinerja telah mempengaruhi penyesuaian Strategi dalam mencapai kinerja.</p>\r\n\r\n<p>5.&nbsp;Pengukuran kinerja telah mempengaruhi penyesuaian Kebijakan dalam mencapai kinerja.</p>\r\n\r\n<p>6.&nbsp;Pengukuran kinerja telah mempengaruhi penyesuaian Aktivitas dalam mencapai kinerja.</p>\r\n\r\n<p>7.&nbsp;Pengukuran kinerja telah mempengaruhi penyesuaian Anggaran dalam mencapai kinerja.</p>\r\n\r\n<p>8.&nbsp;Terdapat efisiensi atas penggunaan anggaran dalam mencapai kinerja.</p>\r\n\r\n<p>9.&nbsp;Setiap unit/satuan kerja memahami dan peduli atas hasil pengukuran kinerja.</p>\r\n\r\n<p>10.&nbsp;Setiap pegawai memahami dan peduli atas hasil pengukuran kinerja.</p>\r\n', 15),
(7, 3, 'Terdapat Dokumen Laporan yang menggambarkan ', '<p>1.&nbsp;Dokumen Laporan Kinerja telah disusun.</p>\r\n\r\n<p>2.&nbsp;Dokumen Laporan Kinerja telah disusun secara berkala.</p>\r\n\r\n<p>3.&nbsp;Dokumen Laporan Kinerja telah diformalkan.</p>\r\n\r\n<p>4.&nbsp;Dokumen Laporan Kinerja telah direviu.</p>\r\n\r\n<p>5.&nbsp;Dokumen Laporan Kinerja telah dipublikasikan.</p>\r\n\r\n<p>6.&nbsp;Dokumen Laporan Kinerja telah disampaikan tepat waktu.</p>\r\n', 3),
(8, 3, 'Dokumen Laporan Kinerja telah memenuhi Standar menggambarkan Kualitas atas Pencapaian Kinerja, informasi keberhasilan/kegagalan kinerja serta upaya perbaikan/penyempurnaannya', '<p>1.&nbsp;Dokumen Laporan Kinerja disusun secara berkualitas sesuai dengan standar.</p>\r\n\r\n<p>2.&nbsp;Dokumen Laporan Kinerja telah mengungkap seluruh informasi tentang pencapaian kinerja.</p>\r\n\r\n<p>3.&nbsp;Dokumen Laporan Kinerja telah menginfokan analisis dan evaluasi realisasi kinerja dengan target tahunan.</p>\r\n\r\n<p>4.&nbsp;Dokumen Laporan Kinerja telah menginfokan analisis dan evaluasi realisasi kinerja dengan target jangka menengah.</p>\r\n\r\n<p>5.&nbsp;Dokumen Laporan Kinerja telah menginfokan analisis dan evaluasi realisasi kinerja dengan realisasi kinerja tahun-tahun sebelumnya.</p>\r\n\r\n<p>6.&nbsp;Dokumen Laporan Kinerja telah menginfokan analisis dan evaluasi realisasi kinerja dengan realiasi kinerja di level nasional/internasional (Benchmark Kinerja).</p>\r\n\r\n<p>7.&nbsp;Dokumen Laporan Kinerja telah menginfokan kualitas atas keberhasilan/kegagalan mencapai target kinerja beserta upaya nyata dan/atau hambatannya.</p>\r\n\r\n<p>8.&nbsp;Dokumen Laporan Kinerja telah menginfokan efisiensi atas penggunaan sumber daya dalam mencapai kinerja.</p>\r\n\r\n<p>9.&nbsp;Dokumen Laporan Kinerja telah menginfokan upaya perbaikan dan penyempurnaan kinerja ke depan (Rekomendasi perbaikan kinerja).</p>\r\n\r\n<p>10.&nbsp;Dokumen Laporan Kinerja telah menginfokan efisiensi atas penggunaan sumber daya dalam mencapai kinerja.</p>\r\n', 4.5),
(9, 3, 'Pelaporan Kinerja telah memberikan dampak yang besar dalam penyesuaian strategi/kebijakan dalam mencapai kinerja berikutnya', '<p>1.&nbsp;Informasi dalam laporan kinerja selalu menjadi perhatian utama pimpinan (Bertanggung Jawab).</p>\r\n\r\n<p>2.&nbsp;Penyajian informasi dalam laporan kinerja menjadi kepedulian seluruh pegawai.</p>\r\n\r\n<p>3.&nbsp;Informasi dalam laporan kinerja berkala telah digunakan dalam penyesuaian aktivitas untuk mencapai kinerja.</p>\r\n\r\n<p>4.&nbsp;Informasi dalam laporan kinerja berkala telah digunakan dalam penyesuaian penggunaan anggaran untuk mencapai kinerja.</p>\r\n\r\n<p>5.&nbsp;Informasi dalam laporan kinerja telah digunakan dalam evaluasi pencapaian keberhasilan kinerja.</p>\r\n\r\n<p>6.&nbsp;Informasi dalam laporan kinerja telah digunakan dalam penyesuaian perencanaan kinerja yang akan dihadapi berikutnya.</p>\r\n\r\n<p>7.&nbsp;Informasi dalam laporan kinerja selalu mempengaruhi perubahan budaya kinerja organisasi.</p>\r\n', 7.5),
(10, 4, 'Evaluasi Akuntabilitas Kinerja Internal telah dilaksanakan ', '<p>1.&nbsp;Terdapat pedoman teknis Evaluasi Akuntabilitas Kinerja Internal.</p>\r\n\r\n<p>2.&nbsp;Evaluasi Akuntabilitas Kinerja Internal telah dilaksanakan pada seluruh unit kerja/perangkat daerah.</p>\r\n\r\n<p>3.&nbsp;Evaluasi Akuntabilitas Kinerja Internal telah dilaksanakan secara berjenjang.</p>\r\n', 5),
(11, 4, 'Evaluasi Akuntabilitas Kinerja Internal telah dilaksanakan secara berkualitas dengan Sumber Daya yang memadai', '<p>1.&nbsp;Evaluasi Akuntabilitas Kinerja Internal telah dilaksanakan sesuai standar.</p>\r\n\r\n<p>2.&nbsp;Evaluasi Akuntabilitas Kinerja Internal telah dilaksanakan oleh SDM yang memadai.</p>\r\n\r\n<p>3.&nbsp;Evaluasi Akuntabilitas Kinerja Internal telah dilaksanakan dengan pendalaman yang memadai.</p>\r\n\r\n<p>4.&nbsp;Evaluasi Akuntabilitas Kinerja Internal telah dilaksanakan pada seluruh unit kerja/perangkat daerah.</p>\r\n\r\n<p>5.&nbsp;Evaluasi Akuntabilitas Kinerja Internal telah dilaksanakan menggunakan Teknologi Informasi (Aplikasi).</p>\r\n', 7.5),
(12, 4, 'Implementasi SAKIP telah meningkat karena evaluasi Akuntabilitas Kinerja Internal sehingga memberikan kesan yang nyata (dampak) dalam efektifitas dan efisiensi Kinerja', '<p>1.&nbsp;Seluruh rekomendasi atas hasil evaluasi akuntablitas kinerja internal telah ditindaklanjuti.</p>\r\n\r\n<p>2.&nbsp;Telah terjadi peningkatan implementasi SAKIP dengan melaksanakan tindak lanjut atas rerkomendasi hasil evaluasi akuntablitas Kinerja internal.</p>\r\n\r\n<p>3.&nbsp;Hasil Evaluasi Akuntabilitas Kinerja Internal telah dimanfaatkan untuk perbaikan dan peningkatan akuntabilitas kinerja.</p>\r\n\r\n<p>4.&nbsp;Hasil dari Evaluasi Akuntabilitas Kinerja Internal telah dimanfaatkan dalam mendukung efektifitas dan efisiensi kinerja.</p>\r\n\r\n<p>5.&nbsp;Telah terjadi perbaikan dan peningkatan kinerja dengan memanfaatkan hasil evaluasi akuntablitas kinerja internal.</p>\r\n', 12.5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_u` int(50) NOT NULL,
  `id_opd` int(11) NOT NULL,
  `nama_user` varchar(1024) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL,
  `foto_profil` varchar(255) NOT NULL,
  `level` varchar(1024) NOT NULL,
  `is_trash` tinyint(2) NOT NULL DEFAULT 1 COMMENT '1 = aktif | 2 = nonaktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_u`, `id_opd`, `nama_user`, `username`, `password`, `foto_profil`, `level`, `is_trash`) VALUES
(1, 0, 'Admin Pertama', 'admin', '21232f297a57a5a743894a0e4a801fc3', '208dce70684235288c39bc639bef3e8f.jpeg', 'Admin', 1),
(8, 0, 'Penta Lianawati, S.E, M.Si.', 'pentalianawati', '3a58b44ddebce27b15fae5b0260228cd', 'b0136d52bd4b3fde2ce8ceb86f5f2acb.jpg', 'Penilai', 1),
(10, 0, 'Yustina Ratri Cahyani, S.Sos', 'yustinaratri', 'd41d8cd98f00b204e9800998ecf8427e', '73dd513f085a1d1f6095ad607b2c235e.jpg', 'Penilai', 1),
(11, 0, 'Tri, S.H.', 'tri', 'd41d8cd98f00b204e9800998ecf8427e', 'fc71683b2c5474bb3f324507c9de1ef3.jpg', 'Penilai', 1),
(13, 2, 'Ir. Siti Nurul Hidayat', 'sitinurul02', 'd41d8cd98f00b204e9800998ecf8427e', 'cb49d64d5b964a831b583c6f0551770a.png', 'Instansi', 1),
(14, 3, 'Penta Lianawati, S.E, M.Si.', 'pentalianawati02', 'a3b650ff87fc1627ed128448b3fb9fc7', 'c87c05777973f83de264acf03ee16ad1.jpg', 'Instansi', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komponen`
--
ALTER TABLE `komponen`
  ADD PRIMARY KEY (`id_komponen`);

--
-- Indeks untuk tabel `opd`
--
ALTER TABLE `opd`
  ADD PRIMARY KEY (`id_opd`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_subkomponen` (`id_subkomponen`),
  ADD KEY `id_opd` (`id_opd`),
  ADD KEY `id_u` (`id_u`);

--
-- Indeks untuk tabel `subkomponen`
--
ALTER TABLE `subkomponen`
  ADD PRIMARY KEY (`id_subkomponen`),
  ADD KEY `id_komponen` (`id_komponen`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_u`),
  ADD KEY `id_opd` (`id_opd`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komponen`
--
ALTER TABLE `komponen`
  MODIFY `id_komponen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `opd`
--
ALTER TABLE `opd`
  MODIFY `id_opd` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `subkomponen`
--
ALTER TABLE `subkomponen`
  MODIFY `id_subkomponen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_u` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
