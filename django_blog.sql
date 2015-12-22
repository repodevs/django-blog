-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 22, 2015 at 10:08 AM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.6.16-2+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `django_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `article_category`
--

CREATE TABLE IF NOT EXISTS `article_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `created_on` datetime NOT NULL,
  `last_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `article_category`
--

INSERT INTO `article_category` (`id`, `name`, `description`, `created_on`, `last_modified`) VALUES
(1, 'root', 'root article', '2015-10-23 09:38:42', '2015-10-23 09:38:42'),
(2, 'tutorial', 'semua tentang tutorial', '2015-12-18 06:58:27', '2015-12-18 06:58:27'),
(3, 'berita', 'semua tentang berita', '2015-12-18 06:58:43', '2015-12-18 06:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `article_post`
--

CREATE TABLE IF NOT EXISTS `article_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `created_on` datetime NOT NULL,
  `last_modified` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_post_category_id_7e8b8db9_fk_article_category_id` (`category_id`),
  KEY `article_post_2dbcba41` (`slug`),
  KEY `article_post_3700153c` (`creator_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `article_post`
--

INSERT INTO `article_post` (`id`, `title`, `slug`, `content`, `created_on`, `last_modified`, `category_id`, `creator_id`, `status`) VALUES
(3, 'Camat Sambirejo Dipenjaraz', 'camat-sambirejo-dipenjaraz-965516', '<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;"><strong style="margin: 0px; padding: 0px; border: 0px;">Solopos.com, SRAGEN&ndash;</strong>Camat Sambirejo, Suhariyanto, resmi menjalani hukuman pidana kurungan penjara selama sebulan di Lembaga Pemasyarakatan (LP) Kelas II A Sragen mulai Kamis (17/12/2015).</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Kejaksaan Negeri (Kejari) Sragen mengeksekusi Suhariyanto tiga hari setelah menerima putusan dari Pengadilan Tinggi (PT) Jawa Tengah yang menolak banding yang diajukan Suhariyanto. Putusan PT Jateng menguatkan putusan Pengadilan Negeri (PN) Sragen yang menjatuhkan saksi pidana selama sebulan dan denda senilai Rp1,5 juta kepada Suhariyanto setelah terbukti bersalah dalam kasus pelanggaran pilkada.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">&ldquo;Putusan dari PT tertanggal 7 Desember itu baru kami terima pada Selasa [15/12/2015]. Setelah menerima putusan itu, kami memberi tahu terpidana. Kami menawarkan kapan dia siap untuk dieksekusi. Kami minta secepatnya. Eksekusi pada hari ini itu sudah sesuai permintaan dia,&rdquo; kata Kasi Pidana Umum (Pidum) Kejari Sragen, Hanung Widyatmaka, saat ditemui wartawan di kantornya.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Suhariyanto tiba di Kantor Kejari Sragen sekitar pukul 10.00 WIB didampingi kuasa hukum dan keluarganya. Setelah menyelesaikan urusan administrasi dan membayar denda senilai Rp1,5 juta, dia diantar ke LP Kelas II A Sragen sekitar satu jam kemudian.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">&rdquo;Untuk barang bukti berupa sembako yang pernah ditempeli stiker bergambar pasangan calon nomor urut 2 sudah kita kembalikan ke Pemerintah Kecamatan Sambirejo. Untuk stikernya, nanti akan kami musnahkan. Sementara barang bukti mobil pikap sudah dikembalikan kepada pemiliknya yang bernama Purwaluyo,&rdquo; jelas Hanung.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Sementara itu, Kuasa Hukum Suhariyanto, Edi Sutomo, mengatakan kliennya menghormati keputusan PT Jawa Tengah yang menolak banding atas keputusan PN Sragen. Edi mengaku sudah tidak memiliki upaya hukum yang harus ditempuh mengingat penolakan banding itu sudah menjadi keputusan tetap.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">&rdquo;Ini salah satu perbedaan antara pidana pada umumnya dengan pidana pemilu. Kalau pidana pemilu, hanya bisa melakukan banding. Kita tidak bisa lakukan kasasi atau upaya PK [peninjauan kembali],&rdquo; terang Edi.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Majelis Hakim PN Sragen menjatuhkan vonis pidana sebulan penjara kepada Suhariyanto karena terbukti melakukan tindak pidana pelanggaran pilkada. Suhariyanto juga diwajibkan membayar denda senilai Rp1,5 juta rupiah dengan subsider satu bulan.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Majelis Hakim menilai terdakwa secara sah dan meyakinkan terbukti bersalah karena membuat keputusan yang menguntungkan atau merugikan salah satu pasangan calon selama masa kampanye. Orang nomor satu di Kecamatan Sambirejo itu dinilai telah menciderai iklim demokrasi yang dibangun menjelang pilkada. Perbuatan terdakwa yang meminta sekretaris kecamatan dan sejumlah staf untuk memasang stiker pasangan calon nomor urut dua pada paket sembako yang dibungkus di kantor kecamatan tidak dibenarkan Majelis Hakim PN Sragen.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Majelis Hakim menyatakan perbuatan Suhariyanto sudah memenuhi unsur pidana sebagaimana diatur dalam Pasal 188 Jo. Pasal 71 ayat (1) UU No. 8/2015 tentang Perubahan atas UU No. 1/2015 tentang Penetapan PP Pengganti UU No. 1/2014 tentang Pemilihan Gubernur, Bupati, dan Wali Kota.</p>', '2015-12-18 07:01:10', '2015-12-21 08:02:40', 3, 1, 'p'),
(4, 'Ini 5 Alasan Anda Wajib ke Museum Sangiran!', 'ini-5-alasan-anda-wajib-ke-museum-sangiran', '<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;"><strong style="margin: 0px; padding: 0px; border: 0px;">Solopos.com, SRAGEN &ndash;</strong>&nbsp;Museum Sangiran Sragen layak Anda kunjungi untuk mengisi liburan. Selain bisa belajar wisata sejarah kehidupan zaman purba, Anda bisa menemukan lokasi-lokasi spot selfie unik.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Berikut ini lima alasan Anda harus ke Museum Sangiran sebagaimana dihimpun Solopos.com:</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;"><strong style="margin: 0px; padding: 0px; border: 0px;">Menimba Ilmu dari Teori Big Bang hingga Evolusi</strong><br style="margin: 0px; padding: 0px;" />Youngers, dengan membayar tiket masuk senilai Rp5.000, kamu bisa mendapatkan banyak ilmu. Teori Big Bang hingga Evolusi bisa kamu peroleh di musium ini. Kamu juga dpat belajar mengenai kehidupan manusia dan hewan pra sejarah.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;"><strong style="margin: 0px; padding: 0px; border: 0px;">Menyentuh Fosil Berumur Jutaan Tahun</strong></p>\r\n<div id="attachment_670774" class="wp-caption alignleft" style="margin: 0px 10px 10px 0px; padding: 0px; border: none; font-size: 12px; float: left; max-width: 320px; height: auto; color: #777777; overflow: hidden; font-family: ''Open Sans'', sans-serif; width: 380px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><a style="margin: 0px; padding: 0px; color: #005f96; text-decoration: none; border: 0px;" href="http://images.harianjogja.com/2015/12/Sangiran-Manusia-purba-tinggal-di-gua.jpg"><img class="size-medium wp-image-670774" style="margin: 0px; padding: 0px; border: 0px; font-size: 0px; color: transparent; vertical-align: middle;" src="http://images.harianjogja.com/2015/12/Sangiran-Manusia-purba-tinggal-di-gua-370x246.jpg" alt="Diaroma manusia purba tinggal di gua, di Museum Sangiran (Mariyana Ricky/JIBI/Solopos)" width="370" height="246" /></a>\r\n<p class="wp-caption-text" style="margin: 5px 0px 0px; padding: 3px; line-height: 16px; border-width: 0px 0px 0px 2px; border-left-style: solid; border-left-color: #cccccc; font-style: italic;">Diaroma manusia purba tinggal di gua, di Museum Sangiran (Mariyana Ricky/JIBI/Solopos)</p>\r\n</div>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Beberapa dari ratusan koleksi yang terpajang di museum bisa kamu sentuh. Mayoritas fosil tersebut utuh, sehingga kamu bisa membayangkan betapa besarnya hewan tersebut di masa lampau. Aktivitas ini bisa menjadi pengalaman menarik dan enggak terlupakan.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;"><strong style="margin: 0px; padding: 0px; border: 0px;">Lebih Menghargai Kebesaran Tuhan</strong><br style="margin: 0px; padding: 0px;" />Temuan fosil sisa-sisa prasejarah bakal membuatmu lebih menghargai kebesaran Tuhan. Merasakan hidup di masa sekarang yang jauh lebih baik dibanding masa silam. Youngers juga bisa mengagumi ciptaan Tuhan jauh sebelum era manusia modern ada.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;"><strong style="margin: 0px; padding: 0px; border: 0px;">Mengunjungi Salah Satu Warisan Kekayaan Dunia</strong></p>\r\n<div id="attachment_670778" class="wp-caption alignleft" style="margin: 0px 10px 10px 0px; padding: 0px; border: none; font-size: 12px; float: left; max-width: 320px; height: auto; color: #777777; overflow: hidden; font-family: ''Open Sans'', sans-serif; width: 380px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><a style="margin: 0px; padding: 0px; color: #005f96; text-decoration: none; border: 0px;" href="http://images.harianjogja.com/2015/12/Sangiran-Rangka-Hewan-Purba.jpg"><img class="size-medium wp-image-670778" style="margin: 0px; padding: 0px; border: 0px; font-size: 0px; color: transparent; vertical-align: middle;" src="http://images.harianjogja.com/2015/12/Sangiran-Rangka-Hewan-Purba-370x246.jpg" alt="Rangka binatang purba di Museum Sangiran Sragen (Mariyana Ricky/JIBI/Solopos)" width="370" height="246" /></a>\r\n<p class="wp-caption-text" style="margin: 5px 0px 0px; padding: 3px; line-height: 16px; border-width: 0px 0px 0px 2px; border-left-style: solid; border-left-color: #cccccc; font-style: italic;">Rangka binatang purba di Museum Sangiran Sragen (Mariyana Ricky/JIBI/Solopos)</p>\r\n</div>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Menurut laporan UNESCO (1995), Sangiran diakui oleh para ilmuwan untuk menjadi salah satu situs yang paling penting di dunia untuk mempelajari fosil manusia, disejajarkan bersama situs Zhoukoudian (Cina), Willandra Lakes (Australia), Olduvai Gorge (Tanzania), dan Sterkfontein (Afrika Selatan), dan lebih baik dalam penemuan daripada yang lain.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;"><strong style="margin: 0px; padding: 0px; border: 0px;">Lokasi Selfie Unik</strong><br style="margin: 0px; padding: 0px;" />Bangunan Museum Sangiran yang megah bakal menjadi background swa-foto yang menarik. Kamu juga bisa berfoto dengan Homo Floresiensis atau gading gajah purba sepanjang dua meter.</p>', '2015-12-18 07:18:01', '2015-12-18 07:18:01', 3, 1, 'p'),
(5, 'Penyaluran PIP di SDN 1 Dawung Ricuh, Ini Penyebabnya', 'penyaluran-pip-di-sdn-1-dawung-ricuh-ini-penyebabnya', '<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Solopos.com, SRAGEN&ndash;Penyaluran bantuan Program Indonesia Pintar (PIP) di SDN 1 Dawung, Kecamatan Sambirejo, Sragen, diwarnai keributan, Selasa (15/12/2015).&nbsp; Sebuah kaca meja pecah setelah dipukul orang tua siswa yang memprotes kebijakan sekolah yang berencana menyalurkan PIP secara kolektif.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Purwanto, salah satu orang tua siswa mengatakan ratusan warga mendatangi SDN 1 Dawung pada Selasa pagi. Mereka mempertanyakan kebijakan Kepala SDN 1 Dawung, Suparno, yang ingin menyalurkan PIP secara kolektif oleh sekolah.&nbsp; Orang tua siswa menginginkan PIP bisa dicairkan sendiri untuk memenuhi kebutuhan siswa. Orang tua siswa beralasan penyaluran PIP oleh siswa secara langsung bisa lebih efektif. Belajar dari pengamalan, kata Purwanto, penyaluran bantuan siswa miskin (BSM) pada tahun lalu dilakukan secara kolektif oleh sekolah. BSM itu tersimpan bank atas nama siswa, sementara buku rekening dipegang pihak sekolah.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">&ldquo;Kalau butuh sepatu atau tas sekolah, siswa tersebut diajak mengambil uang ke bank lalu diajak ke pasar atau toko untuk membelanjakannya. Itu lebih ribet. Apalagi kalau ada sisa tabungan di buku rekening, ternyata tidak bisa diambil. Itu kan muspra,&rdquo; jelas Purwanto saat ditemui&nbsp;<em style="margin: 0px; padding: 0px; border: 0px;">Solopos.com</em>&nbsp;di rumahnya di Dusun Jatiwangi, Desa Dawung, Rabu (16/12/2015).</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Atas dasar itu, orang tua siswa mendesak Suparno bisa menyalurkan PIP secara langsung kepada siswa. Akan tetapi, keinginan orang tua siswa itu ditentang Suparno saat mereka menggelar audiensi.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">&ldquo;Saat itu, Pak Suparno berkukuh akan menyalurkan PIP secara kolektif. Karena tidak mendapat jawaban yang memuaskan, ada salah satu orang tua siswa yang terpengaruh emosi sesaat. Dia menyenggol kaca meja hingga pecah,&rdquo; kata Purwanto.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Setelah insiden itu, pihak sekolah menghubungi Polsek Sambirejo. Suparno bermaksud melaporkan kasus perusakan perabotan sekolah itu ke polisi. Polisi juga sudah memeriksa kondisi meja kaca yang dipecah orang tua siswa. &rdquo;Karena insiden itu dilaporkan ke polisi, kami mendatangi Mapolsek Sambirejo. Di sana kami dimediasi oleh Kapolsek dan Pak Camat. Akhirnya, kepala sekolah bersedia memenuhi keinginan orang tua siswa. Kasus perusakan meja kaca itu juga tidak diproses hukum,&rdquo; terang Purwanto.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Ditemui di kantornya, Kepala SDN 1 Dawung, Suparno, mengatakan masalah yang terjadi antara pihak sekolah dengan orang tua siswa sudah diselesaikan secara kekeluargaan.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">&rdquo;Sudah selesai. Saya tidak ingin memperpanjang masalah itu. Saya masih membutuhkan orang tua siswa dan mungkin orang tua siswa juga masih membutuhkan sekolah,&rdquo; kata Suparno.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Soal penolakan penyaluran PIP secara kolektif, Suparno berdalih kebijakan itu sudah dilakukan sekolah dari tahun lalu atau sejak ada program BSM. Dia tidak mempermasalahkan orang tua siswa menginginkan pencairan PIP secara langsung kepada siswa.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">&rdquo;Yang jelas tidak ada indikasi negatif dari saya pribadi maupun dari pihak sekolah,&rdquo; ujarnya.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Suparno menjelaskan jumlah siswa yang mendapat PIP mencapai 149 anak. Sebelumnya dia mengajukan berkas sebanyak 160 anak untuk mendapat PIP, namun hanya 149 yang disetujui.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">&rdquo;Masing-masing siswa mendapat PIP berbeda-beda. Ada yang dapat Rp450.000, tapi ada juga yang dapat Rp225.000. Besaran PIP itu ditentukan sesuai kriteria,&rdquo; jelasnya.</p>', '2015-12-18 07:18:47', '2015-12-18 07:18:47', 3, 1, 'p'),
(6, 'Kuartal III, Pangsa Pasar Samsung Kalahkan Apple', 'kuartal-iii-pangsa-pasar-samsung-kalahkan-apple-280369', '<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;"><strong style="margin: 0px; padding: 0px; border: 0px;">Solopos.com, SOLO</strong>&nbsp;&mdash; Vendor asal Korea Selatan, Samsung, menduduki posisi teratas dalam penjualan<em style="margin: 0px; padding: 0px; border: 0px;">&nbsp;smartphone</em>&nbsp;di kuartal III 2015, diikuti oleh rivalnya perusahaan asal Amerika Serikat, Apple, di posisi kedua.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Hasil itu dapat dari laporan terbaru dari perusahaan riset Digitimes Research. Sebagaimana dikutip dari&nbsp;<em style="margin: 0px; padding: 0px; border: 0px;">Gsmarena,</em>&nbsp;Minggu (20/12/2015), perusahaan asal Korea Selatan itu menguasi pangsa pasar dengan persentase 25,6% di kuartal III, sedangkan Apple hanya menguasai 14,5% pangsa pasar.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Sementara itu, Huawei, Lenovo, dan LG, berada di peringkat ketiga, keempat dan kelima dengan pangsa pasar penjualan<em style="margin: 0px; padding: 0px; border: 0px;">&nbsp;smartphone</em>&nbsp;masing-masing 7,4%, 4,8% dan 4,5%.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Vendor asal Tiongkok, Xiaomi, berada di posisi keenam dengan pangsa pasar 3,8%, sementara Sony dan Microsoft berada di posisi ke-11 dan 12 dengan pangsa pasar masing-masing 2% dan 1,7%.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Dari 15 top vendor&nbsp;<em style="margin: 0px; padding: 0px; border: 0px;">smartphone</em>&nbsp;yang disebutkan dalam laporan Digitimes Reasearch, sembilan di antaranya berasal dari Tiongkok, dua dari Amerika Serikat dan Korea Selatan dan satu dari Jepang serta Taiwan.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Secara keseluruhan, total 331,9 juta&nbsp;<em style="margin: 0px; padding: 0px; border: 0px;">smartphone</em>&nbsp;terjual secara global pada kuartal terakhir, yang diterjemahkan ke dalam peningkatan&nbsp;<em style="margin: 0px; padding: 0px; border: 0px;">year-on-year</em>&nbsp;(y-o-y) sebesar 7,7% dan peningkatan&nbsp;<em style="margin: 0px; padding: 0px; border: 0px;">quarter-on-quarter</em>&nbsp;(q-o-q) sebesar 10,5%.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Laporan tersebut juga memperkirakan 396,8 juta unit akan terjual pada kuartal IV yang berarti total penjualan&nbsp;<em style="margin: 0px; padding: 0px; border: 0px;">smartphone</em>&nbsp;2015 akan mencapai 1,326 miliar, meningkat sebesar 10,1% dari tahun lalu.</p>', '2015-12-21 00:50:36', '2015-12-21 00:50:36', 3, 1, 'p'),
(7, 'Firefox Hentikan Sistem Operasi Firefox OS Smartphone', 'firefox-hentikan-sistem-operasi-firefox-os-smartphone-8987', '<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;"><strong style="margin: 0px; padding: 0px; border: 0px;">Solopos.com, SOLO</strong>&nbsp;&mdash; Perusahaan berbasis web, Mozilla, resmi menghentikan bisnis<em style="margin: 0px; padding: 0px; border: 0px;">smartphone</em>&nbsp;berbasis OS Firefox. Mozilla terpaksa menghentikannya karena sulit bersaing dengan<em style="margin: 0px; padding: 0px; border: 0px;">smartphone</em>&nbsp;<em style="margin: 0px; padding: 0px; border: 0px;">platform</em>&nbsp;IOS dan Android.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Sebagaimana dikutip dari&nbsp;<em style="margin: 0px; padding: 0px; border: 0px;">Digitaltimes</em>, Kamis (12/10/2015), tujuan awal Mozilla meluncurkan Firefox OS adalah menyasar negara berkembang dengan menjual&nbsp;<em style="margin: 0px; padding: 0px; border: 0px;">smartphone</em>&nbsp;dengan harga murah.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Bahkan Mozilla pernah menjual&nbsp;<em style="margin: 0px; padding: 0px; border: 0px;">smatphone</em>&nbsp;dengan harga murah, yakni US$25 atau Rp345.262. Tapi semakin lama Mozilla harus kalah bersaing dengan Android yang juga menyasar pasar negara berkembang dengan meluncurkan<em style="margin: 0px; padding: 0px; border: 0px;">&nbsp;smartphone&nbsp;</em>murah.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Semakin kuatnya dominasi sistem operasi Android dan banyaknya pengguna Google membuat Mozilla harus menyerah kalah dan terpaksa menghentikan bisnis&nbsp;<em style="margin: 0px; padding: 0px; border: 0px;">smartphone</em>&nbsp;Firefox OS.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Tapi untuk menutupi kegagalan, Mozilla beralasan tak mampu memberikan pengalaman terbaik bagi pengguna sehingga bisnis<em style="margin: 0px; padding: 0px; border: 0px;">&nbsp;smartphone</em>&nbsp;dengan Firefoz OS harus dihentikan.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Meski begitu, Firefox OS tetap akan digunakan di perangkat lain di luar&nbsp;<em style="margin: 0px; padding: 0px; border: 0px;">smartphone</em>. Menurut Senior VP Connected Devices Mozilla, Ari Jaaksi, OS itu akan disematkan di perangkat pintar lain agar semakin berkembang.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Mozilla sepertinya akan masuk teknologi Internet of Things (IoT) menggunakan Firefox OS. Untuk uji coba sepertinya perusahaan Internet tersebut akan menggunakannya di televisi atau perangkat Internet lain.</p>', '2015-12-21 00:51:20', '2015-12-21 00:51:20', 3, 1, 'p'),
(8, ' Ini Alasan Kenapa 4G Boros Data', 'ini-alasan-kenapa-4g-boros-data-371598', '<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;"><strong style="margin: 0px; padding: 0px; border: 0px;">Solopos.com, PEKANBARU</strong>&nbsp;&mdash; Layanan 4G LTE memang diakui membuat pelanggan seluler jadi lebih boros dalam hal pemakaian akses data. Bahkan, bisa dua sampai tiga kali lipat dari biasanya ketika dibandingkan penggunaan pada era 3G.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Meskipun jadi lebih boros, itu bukan berarti karena tarifnya yang mahal. Tapi karena pitanya saja yang lebih lebar sehingga aksesnya jadi lebih cepat. Alhasil, membuat kuota bandwidth yang terpakai jadi lebih cepat habis.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">&ldquo;Pelanggan 4G jauh lebih konsumtif dibandingkan pelanggan 3G. Kecepatan akses yang diakomodir 4G membuat pengguna kami jadi ketagihan,&rdquo; kata Vice President LTE Commercial Telkomsel Lindayanti Harjono di Pekanbaru, Sabtu (19/12/2015).</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Saat membuka aplikasi seperti YouTube, misalnya. Dari yang biasanya cuma 30 menit saat menggunakan 3G, kini dengan 4G bisa jadi dua sampai tiga jam karena aksesnya lebih cepat. Rasa ketagihan itu yang menurut Linda membuat pemakaian jadi lebih boros.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Di jaringan Telkomsel sendiri saat ini tercatat ada 2,2 juta pelanggan yang sudah beralih ke 4G. Angka itu memang kecil jika dibandingkan total 70 juta pengguna data di operator itu. Apalagi jika dibandingkan 150 juta pelanggan secara keseluruhan.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Walau penetrasinya terhitung masih kecil, namun prospek bisnis 4G jelas lebih menguntungkan dan akan cepat berkembang seiring makin luasnya cakupan jaringan dan penetrasi ketersediaan handset 4G.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Telkomsel sendiri menargetkan pelanggan data 4G LTE meningkat tiga sampai empat kali lipat dari saat ini menjadi 8 juta pengguna. Salah satu upaya untuk mencapai target itu adalah mendorong penetrasi handset 4G dengan harga terjangkau lewat strategi bundling.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">&ldquo;Kami bundling dengan hampir semua vendor. Banyak yang akan mengeluarkan handset di kisaran harga Rp 1 jutaan,&rdquo; kata Direktur Utama Telkomsel Ririek Ardiansyah saat ditemui pada kesempatan yang sama.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Selain itu, Telkomsel juga memotivasi produktivitas digital pengguna melalui aplikasi-aplikasi inovatif. Beberapa aplikasi yang saat ini berada di dalam ekosistem digital Telkomsel, mulai dari sisi hiburan hingga bisnis diantaranya Moovigo, LangitMusik, Magisto, T-Cash, Destinasia, dan layanan M2M.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Wilayah jangkauan layanan 4G juga akan diperluas minimal dua kali lipat dari yang ada saat ini. &ldquo;Setidaknya 30 kota bisa menikmati jaringan internet cepat tahun depan,&rdquo; kata Ririek saat ditanya rencana ekspansi 4G Telkomsel saat mengarungi 2016 nanti.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; line-height: 22px; border: 0px; font-size: 14px; color: #333333; font-family: ''Open Sans'', sans-serif;">Menutup ekspansinya di tahun 2015 ini, jaringan 4G LTE telah dihadirkan Telkomsel di 14 kota. Masing-masing di Jakarta, Bali, Bandung, Medan, Surabaya, Makassar, Lombok, Manado, Batam, Yogyakarta, Balikpapan, Malang, Pekanbaru, dan Banjarmasin.</p>', '2015-12-21 00:51:56', '2015-12-21 00:51:56', 3, 1, 'p'),
(9, 'DONOR DARAH 100 KALI, WARGA SRAGEN MENERIMA PENGHARGAAN DARI PRESIDEN RI', 'donor-darah-100-kali-warga-sragen-menerima-penghargaan-dari-presiden-ri-23149', '<table style="font-family: verdana, arial, helvetica, sans-serif;" border="0">\r\n<tbody>\r\n<tr>\r\n<td class="V12Hitam" style="color: #555555; font-family: Arial; font-size: 8pt;" valign="top">\r\n<div style="margin: 0px; padding: 0px;" align="justify">SRAGEN - Dua warga Sragen, Dwi Sriyatno (52 tahun) dan Alip (51), Jumat pagi (18/12) diundang ke Istana Bogor untuk menerima anugerah Satya Lancana Satya Kebaktian Sosial dari Presiden RI. Penganugerahan ini diberikan lantaran yang bersangkutan telah menjadi donor darah sukarela (DDS) sebanyak seratus kali.&nbsp;\r\n<div style="margin: 0px; padding: 0px;">&nbsp; &nbsp; &nbsp; &nbsp;Dwi Sriyatno, sesaat sebelum berangkat ke Istana Bogor menjelaskan, dirinya dan Alip akan menerima anugerah Satya Lancana Satya Kebakti Sosial dari Presiden RI bersama 73 orang DDS 100 kali dari Jawa Tengah. Sedangkan dari seluruh Indonesia sebanyak 893 orang, berasal dari 26 provinsi.&nbsp;</div>\r\n<div style="margin: 0px; padding: 0px;">&nbsp; &nbsp; &nbsp; &nbsp;Ditemui di markas Palang Merah Indonesia (PMI) Sragen, Dwi Sriyatno bercerita, dirinya menjadi DDS sejak tahun 1986. Ketika itu, sebagai petugas PMI ia menyaksikan langsung seorang pasien di RSUD Sragen yang mengalami muntah darah dan segera membutuhkan darah. Ia terketuk hatinya untuk menolong pasien tersebut dengan menjadi donor darah.&nbsp;</div>\r\n<div style="margin: 0px; padding: 0px;">&nbsp; &nbsp; &nbsp; &nbsp;&ldquo;Sejak saat itu, saya menjadi donor darah sukarela secara rutin setiap tiga bulan sekali. Kadang saya donor darah dalam rentang waktu dua bulan karena &nbsp;ada pasien darurat yang membutuhkan bantuan&rdquo;, ujar Yatno, panggilan Dwi Sriyatno, mengenang.&nbsp;</div>\r\n<div style="margin: 0px; padding: 0px;">&nbsp; &nbsp; &nbsp; &nbsp;Pria kelahiran 13 Agustus 1963 dengan golongan darah O ini, sekarang&nbsp; bertugas di Bank Darah RSUD dr.Soehadi Prijonegoro Sragen. Tinggal bersama isteri dan tiga orang anaknya di Dukuh Bangoan RT. 18, Desa Toyogo, Kecamatan Sambungmacan, Kab. Sragen, Yatno bertekad terus menjadi donor darah sukarela. &ldquo;Disamping berkesempatan menolong sesama, dengan donor darah tubuh saya menjadi sehat&rdquo;, katanya.&nbsp;</div>\r\n<div style="margin: 0px; padding: 0px;">&nbsp; &nbsp; &nbsp; &nbsp;Menurut Yatno, ada rasa bahagia dan kepuasan batin ketika bisa menolong orang lain melalui donor darah sukarela. Yatno&nbsp; berharap, masyarakat Sragen, khususnya teman-teman karyawan RSUD bisa menjadi donor darah sukarela tetap.&nbsp;</div>\r\n</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class="V12Hitam" style="color: #555555; font-family: Arial; font-size: 8pt;" colspan="3" valign="top">\r\n<div style="margin: 0px; padding: 0px;" align="justify"><strong>Alip Ke Markas PMI Kayuh Sepeda 20 Kilometer</strong>&nbsp;\r\n<div style="margin: 0px; padding: 0px;">&nbsp; &nbsp; &nbsp; &nbsp;Sementara itu, Alip, lelaki asal dukuh Ngrombo RT. 15 Desa Ngrombo, Kec. Plupuh Sragen ini boleh dibilang manusia langka. Betapa tidak. Selama tiga puluh tahun, setiap tiga bulan sekali ia selalu mendonorkan darahnya secara sukarela di markas Palang Merah Indonesia (PMI) Sragen, meski harus mengayuh sepeda onthel sejauh 20 kilometer dari rumahnya.&nbsp;</div>\r\n<div style="margin: 0px; padding: 0px;">&nbsp; &nbsp; &nbsp; &nbsp;Sosok Alip tidak asing bagi kalangan petugas Unit Donor Darah (UDD) PMI Sragen. Ia dianggap seperti&nbsp; keluarga. Ketika Alip datang untuk donor darah, mereka langsung menyiapkan minuman untuknya. &ldquo;Kasihan, beliau mengayuh sepeda onthel cukup jauh, keringatnya sampai berleleran&rdquo;, cerita Wahdadi, petugas UDD Sragen tentang Alip.&nbsp;</div>\r\n<div style="margin: 0px; padding: 0px;">&nbsp; &nbsp; &nbsp; &nbsp;Tahun lalu,&nbsp; Pengurus PMI Sragen menghadiahi Alip sebuah sepeda onthel&nbsp; karena kegigihannya menjadi relawan donor darah. Ketika itu, Pengurus tidak langsung membelikannya tetapi mengajak Alip ke toko sepeda. Alip dipersilahkan memilih sepeda yang diinginkannya dengan kisaran harga Rp. 3 juta. Namun di luar dugaan, Alip justru memilih sepeda merk Phoenik model pit kebo dengan harga yang lebih murah.&nbsp;&nbsp;</div>\r\n<div style="margin: 0px; padding: 0px;">&nbsp; &nbsp; &nbsp; &nbsp;Alip mengisahkan, pertama kali menjadi donor darah sukarela ketika tetangganya membutuhkan darah saat menjalani operasi di sebuah rumah sakit. Saat itu dirinya diminta menjadi donor darah untuk membantu tetangganya. Sewaktu petugas medis menyatakan golongan darahnya cocok dan memenuhi syarat, ia pun siap. Setelah donor darah pertama kali itu, ternyata ia merasakan tubuhnya makin sehat. Sesudah itu ia rutin mendonorkan darahnya melalui PMI Sragen.&nbsp;</div>\r\n<div style="margin: 0px; padding: 0px;">&nbsp; &nbsp; &nbsp; &nbsp;Jarak yang cukup jauh dan kendala transportasi tidak menghalangi niat Alip mendatangi markas PMI. Tiap tiga bulan, ia kayuh sepeda onthel menempuh jarak 20 kilometer. Padahal tahun 1980-an dulu kondisi jalan tidak semulus sekarang. &ldquo;Seingat saya,&nbsp; dari seratus kali donor darah di PMI Sragen, hanya dua kali saya naik Bus. Selebihnya saya selalu ngonthel&nbsp; pit jengki merk Phoenik dari rumah&rdquo;, ujar Alip polos.&nbsp;</div>\r\n<div style="margin: 0px; padding: 0px;">&nbsp; &nbsp; &nbsp; &nbsp;Itulah Alip, ketika banyak orang meminta fasilitas pelayanan untuk memberikan sumbangan, wong ndeso kelahiran 2 April 1964 dari pasangan Painem dan Bisri ini menunjukkan teladan nyata. Ia tak menunggu dijemput petugas PMI untuk mendonorkan darahnya bagi kemanusiaan.&nbsp; Dengan penuh semangat ia berangkat sendiri dengan mengayuh sepeda onthel dari pelosok desa yang tandus di utara Bengawan Solo ke Kota Sragen.</div>\r\n<div style="margin: 0px; padding: 0px;">&nbsp; &nbsp; &nbsp; &nbsp;Semoga Yatno dan Alip, pengabdi kemanusiaan yang Jumat ini menerima anugerah Satya Lancana Satya Kebakti Sosial dari Presiden RI, menginspirasi dan menjadi teladan bagi kehidupan kita untuk selalu peduli kepada sesama. (<strong>Suparto -&nbsp; Sragen</strong>).&nbsp;</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', '2015-12-21 00:53:22', '2015-12-21 00:54:06', 3, 1, 'p');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add category', 7, 'add_category'),
(20, 'Can change category', 7, 'change_category'),
(21, 'Can delete category', 7, 'delete_category'),
(22, 'Can add post', 8, 'add_post'),
(23, 'Can change post', 8, 'change_post'),
(24, 'Can delete post', 8, 'delete_post');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$20000$0P52WsWIyQII$tVfhSAgQxEoiokNn/StpXFEJVwnb2iQmwyo6wVucgTo=', '2015-12-22 03:07:38', 1, 'repodev', '', '', 'repodevs@gmail.com', 1, 1, '2015-10-23 09:33:39'),
(2, 'pbkdf2_sha256$20000$DwgNWWmQFlX5$7dzL1dRl7Ji6Cnw2sp1d3/HohzsUYLRJ+Bs/Q37FoUY=', '2015-12-21 00:19:49', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2015-12-18 07:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 2, 19),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2015-10-23 09:38:42', '1', 'root', 1, '', 7, 1),
(2, '2015-10-23 09:39:00', '1', 'bla', 1, '', 8, 1),
(3, '2015-10-30 07:28:44', '1', 'bla-bla', 2, 'Changed title.', 8, 1),
(4, '2015-10-30 07:30:12', '2', 'haha', 1, '', 8, 1),
(5, '2015-10-30 07:38:17', '2', 'haha', 2, 'Changed slug.', 8, 1),
(6, '2015-10-30 07:38:42', '1', 'bla-bla', 2, 'Changed slug.', 8, 1),
(7, '2015-12-18 06:58:27', '2', 'tutorial', 1, '', 7, 1),
(8, '2015-12-18 06:58:43', '3', 'berita', 1, '', 7, 1),
(9, '2015-12-18 07:01:10', '3', 'Camat Sambirejo Dipenjara', 1, '', 8, 1),
(10, '2015-12-18 07:04:29', '3', 'Camat Sambirejo Dipenjara', 2, 'No fields changed.', 8, 1),
(11, '2015-12-18 07:08:09', '3', 'Camat Sambirejo Dipenjara', 2, 'No fields changed.', 8, 1),
(12, '2015-12-18 07:08:57', '3', 'Camat Sambirejo Dipenjara', 2, 'Changed content.', 8, 1),
(13, '2015-12-18 07:11:04', '3', 'Camat Sambirejo Dipenjara', 2, 'Changed content.', 8, 1),
(14, '2015-12-18 07:16:56', '2', 'haha', 3, '', 8, 1),
(15, '2015-12-18 07:16:56', '1', 'bla-bla', 3, '', 8, 1),
(16, '2015-12-18 07:18:01', '4', 'Ini 5 Alasan Anda Wajib ke Museum Sangiran!', 1, '', 8, 1),
(17, '2015-12-18 07:18:47', '5', 'Penyaluran PIP di SDN 1 Dawung Ricuh, Ini Penyebabnya', 1, '', 8, 1),
(18, '2015-12-19 03:49:53', '39', 'ini bla title ya broh', 3, '', 8, 1),
(19, '2015-12-19 03:49:53', '38', 'ini bla title ya broh', 3, '', 8, 1),
(20, '2015-12-19 03:49:53', '37', 'ini bla title ya broh', 3, '', 8, 1),
(21, '2015-12-19 03:49:53', '36', 'ini bla title ya broh', 3, '', 8, 1),
(22, '2015-12-19 03:49:53', '35', 'ini bla title ya broh', 3, '', 8, 1),
(23, '2015-12-19 03:49:53', '34', 'ini bla title ya broh', 3, '', 8, 1),
(24, '2015-12-19 03:49:53', '33', 'ini bla title ya broh', 3, '', 8, 1),
(25, '2015-12-19 03:49:53', '32', 'ini bla title ya broh', 3, '', 8, 1),
(26, '2015-12-19 03:49:53', '31', 'ini bla title ya broh', 3, '', 8, 1),
(27, '2015-12-19 03:49:53', '30', 'ini bla title ya broh', 3, '', 8, 1),
(28, '2015-12-19 03:49:54', '29', 'ini bla title ya broh', 3, '', 8, 1),
(29, '2015-12-19 03:49:54', '28', 'ini bla title ya broh', 3, '', 8, 1),
(30, '2015-12-19 03:49:54', '27', 'ini bla title ya broh', 3, '', 8, 1),
(31, '2015-12-19 03:49:54', '26', 'ini bla title ya broh', 3, '', 8, 1),
(32, '2015-12-19 03:49:54', '25', 'ini bla title ya broh', 3, '', 8, 1),
(33, '2015-12-19 03:49:54', '24', 'ini bla title ya broh', 3, '', 8, 1),
(34, '2015-12-19 03:49:54', '23', 'ini bla title ya broh', 3, '', 8, 1),
(35, '2015-12-19 03:49:54', '22', 'ini bla title ya broh', 3, '', 8, 1),
(36, '2015-12-19 03:49:54', '21', 'ini bla title ya broh', 3, '', 8, 1),
(37, '2015-12-19 03:49:54', '20', 'ini bla title ya broh', 3, '', 8, 1),
(38, '2015-12-19 03:49:54', '19', 'ini bla title ya broh', 3, '', 8, 1),
(39, '2015-12-19 03:49:54', '18', 'ini bla title ya broh', 3, '', 8, 1),
(40, '2015-12-19 03:49:54', '17', 'ini bla title ya broh', 3, '', 8, 1),
(41, '2015-12-19 03:49:54', '16', 'ini bla title ya broh', 3, '', 8, 1),
(42, '2015-12-19 03:49:55', '15', 'ini bla title ya broh', 3, '', 8, 1),
(43, '2015-12-19 03:49:55', '14', 'ini bla title ya broh', 3, '', 8, 1),
(44, '2015-12-19 03:49:55', '13', 'ini bla title ya broh', 3, '', 8, 1),
(45, '2015-12-19 03:49:55', '12', 'ini bla title ya broh', 3, '', 8, 1),
(46, '2015-12-19 03:49:55', '11', 'ini bla title ya broh', 3, '', 8, 1),
(47, '2015-12-19 03:49:55', '10', 'ini bla title ya broh', 3, '', 8, 1),
(48, '2015-12-19 03:49:55', '9', 'ini bla title ya broh', 3, '', 8, 1),
(49, '2015-12-19 03:49:55', '8', 'ini bla title ya broh', 3, '', 8, 1),
(50, '2015-12-19 03:49:55', '7', 'ini bla title ya broh', 3, '', 8, 1),
(51, '2015-12-19 03:49:55', '6', '', 3, '', 8, 1),
(52, '2015-12-21 00:18:38', '2', 'admin', 2, 'Changed password.', 4, 1),
(53, '2015-12-21 00:19:40', '2', 'admin', 2, 'Changed is_superuser and user_permissions.', 4, 1),
(54, '2015-12-21 00:50:36', '6', 'Kuartal III, Pangsa Pasar Samsung Kalahkan Apple', 1, '', 8, 2),
(55, '2015-12-21 00:51:20', '7', 'Firefox Hentikan Sistem Operasi Firefox OS Smartphone', 1, '', 8, 2),
(56, '2015-12-21 00:51:56', '8', ' Ini Alasan Kenapa 4G Boros Data', 1, '', 8, 2),
(57, '2015-12-21 00:53:22', '9', 'DONOR DARAH 100 KALI, WARGA SRAGEN MENERIMA PENGHARGAAN DARI PRESIDEN RI', 1, '', 8, 2),
(58, '2015-12-21 00:54:06', '9', 'DONOR DARAH 100 KALI, WARGA SRAGEN MENERIMA PENGHARGAAN DARI PRESIDEN RI', 2, 'Changed content.', 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'article', 'category'),
(8, 'article', 'post'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2015-10-23 09:29:38'),
(2, 'auth', '0001_initial', '2015-10-23 09:29:42'),
(3, 'admin', '0001_initial', '2015-10-23 09:29:43'),
(4, 'article', '0001_initial', '2015-10-23 09:29:44'),
(5, 'article', '0002_auto_20151023_0902', '2015-10-23 09:29:44'),
(6, 'article', '0003_auto_20151023_0903', '2015-10-23 09:29:44'),
(7, 'contenttypes', '0002_remove_content_type_name', '2015-10-23 09:29:45'),
(8, 'auth', '0002_alter_permission_name_max_length', '2015-10-23 09:29:45'),
(9, 'auth', '0003_alter_user_email_max_length', '2015-10-23 09:29:46'),
(10, 'auth', '0004_alter_user_username_opts', '2015-10-23 09:29:46'),
(11, 'auth', '0005_alter_user_last_login_null', '2015-10-23 09:29:47'),
(12, 'auth', '0006_require_contenttypes_0002', '2015-10-23 09:29:47'),
(13, 'sessions', '0001_initial', '2015-10-23 09:29:47'),
(14, 'article', '0004_post_creator', '2015-10-23 09:35:30'),
(15, 'article', '0005_auto_20151030_0738', '2015-10-30 07:38:01'),
(16, 'article', '0006_auto_20151120_0719', '2015-11-20 07:19:45'),
(17, 'article', '0007_auto_20151120_0851', '2015-11-20 08:51:44'),
(18, 'article', '0008_auto_20151219_0124', '2015-12-19 01:24:40'),
(19, 'article', '0009_auto_20151221_0755', '2015-12-21 07:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('78s8qzucwxju7oh84jhs4otdw8dfjhsl', 'NGYwODEzZWI0YWYyMzIyNDUwODJkNGU2YjI1YzQ3NTVhYWQxMGEyZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlYzVhYmE2MDNhMzFjY2JmZTgwM2UyOGI3YmVmM2Y0ZWZjZjMyODUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-01-05 03:07:38'),
('h7grrgtd76x8x9in8toiiliep0b429ve', 'NGYwODEzZWI0YWYyMzIyNDUwODJkNGU2YjI1YzQ3NTVhYWQxMGEyZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlYzVhYmE2MDNhMzFjY2JmZTgwM2UyOGI3YmVmM2Y0ZWZjZjMyODUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-11-06 09:33:44'),
('lpkynwjul6guqet8by1bt00pnyzf38bt', 'NGYwODEzZWI0YWYyMzIyNDUwODJkNGU2YjI1YzQ3NTVhYWQxMGEyZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlYzVhYmE2MDNhMzFjY2JmZTgwM2UyOGI3YmVmM2Y0ZWZjZjMyODUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-11-20 07:14:15'),
('pitukvb5hwepn54dnsx5b8c20a1a0vuu', 'NGYwODEzZWI0YWYyMzIyNDUwODJkNGU2YjI1YzQ3NTVhYWQxMGEyZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlYzVhYmE2MDNhMzFjY2JmZTgwM2UyOGI3YmVmM2Y0ZWZjZjMyODUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-12-04 06:52:28'),
('vigg9oweud2k2sxkd5d5k5p8dgdy7omn', 'NGYwODEzZWI0YWYyMzIyNDUwODJkNGU2YjI1YzQ3NTVhYWQxMGEyZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlYzVhYmE2MDNhMzFjY2JmZTgwM2UyOGI3YmVmM2Y0ZWZjZjMyODUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-11-13 07:28:25');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_post`
--
ALTER TABLE `article_post`
  ADD CONSTRAINT `article_post_category_id_7e8b8db9_fk_article_category_id` FOREIGN KEY (`category_id`) REFERENCES `article_category` (`id`),
  ADD CONSTRAINT `article_post_creator_id_1390e23e_fk_auth_user_id` FOREIGN KEY (`creator_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
