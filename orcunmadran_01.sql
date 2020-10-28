-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 28 Eki 2020, 13:22:44
-- Sunucu sürümü: 10.4.13-MariaDB
-- PHP Sürümü: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `orcunmadran_01`
--
CREATE DATABASE IF NOT EXISTS `orcunmadran_01` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `orcunmadran_01`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap`
--

CREATE TABLE `kitap` (
  `kitapKayitNo` smallint(6) NOT NULL COMMENT 'Kitap tablosunun anahtar alanı',
  `kitapKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Kitabın VT kayıt tarihi',
  `kitapKayitGuncel` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kitapAdi` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın tam adı',
  `kitapISBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın standart numarası',
  `kitapBasimYer` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın basım yeri',
  `kitapBasimTarih` year(4) NOT NULL COMMENT 'Kitabın basım yılı'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Kitap tablosu';

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`kitapKayitNo`, `kitapKayitTarih`, `kitapKayitGuncel`, `kitapAdi`, `kitapISBN`, `kitapBasimYer`, `kitapBasimTarih`) VALUES
(1, '2020-10-28 11:34:37', '2020-10-28 11:54:24', 'Yeni Dünya Yeni Ağ', '9786053118336', 'İstanbul', 2020),
(2, '2020-10-28 11:36:10', '2020-10-28 11:55:01', 'Test123', '1111111111111', 'Test', 1990);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `yayineviKayitNo` int(11) NOT NULL COMMENT 'Yayınevi tablosunun anahtar alanı',
  `yayineviKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Yayınevi VT giriş tarihi',
  `yayineviAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi tam adı',
  `yayineviURL` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi web sitesi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yayınevi tablosu';

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`yayineviKayitNo`, `yayineviKayitTarih`, `yayineviAdi`, `yayineviURL`) VALUES
(1, '2020-10-28 11:47:21', 'Destek Yayınları', 'https://destekmedyagrubu.com/');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `yazarKayitNo` smallint(6) NOT NULL COMMENT 'Yazar tablosunun anahtar alanı',
  `yazarKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Yazar kayıt tarihi',
  `yazarAdi` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar tam adı',
  `yazarSoyadi` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar tam soyadı',
  `yazarURL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yazar ek bilgi adresi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yazar tablosu';

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`yazarKayitNo`, `yazarKayitTarih`, `yazarAdi`, `yazarSoyadi`, `yazarURL`) VALUES
(1, '2020-10-28 11:42:38', 'Cem', 'Say', 'https://www.cmpe.boun.edu.tr/tr/people/cem.say');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitap`
--
ALTER TABLE `kitap`
  ADD PRIMARY KEY (`kitapKayitNo`);

--
-- Tablo için indeksler `yayinevi`
--
ALTER TABLE `yayinevi`
  ADD PRIMARY KEY (`yayineviKayitNo`);

--
-- Tablo için indeksler `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`yazarKayitNo`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitap`
--
ALTER TABLE `kitap`
  MODIFY `kitapKayitNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Kitap tablosunun anahtar alanı', AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `yayineviKayitNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi tablosunun anahtar alanı', AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `yazarKayitNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yazar tablosunun anahtar alanı', AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
