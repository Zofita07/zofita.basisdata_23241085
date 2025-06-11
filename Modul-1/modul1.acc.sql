-- Nama  : Angga Saputra
-- NIM   : 23241084
-- Kelas : C  
-- Modul : Modul 2 SELECT, PREFIX dan ALIAS

-- Menggunakan database
USE ptic_mart2;

-- SELECT statment
-- praktek 1
-- Ambil kolom nama produk dari tabel produk
SELECT nama_produk FROM ms_produk_dqlab;

-- Praktek 2
-- Ambil kolom nama produk dan harga dari tabel produk
SELECT nama_produk, harga FROM ms_produk_dqlab;

-- Praktek 3
-- Ambil semua kolom dari tabel
SELECT *FROM ms_produk_dqlab;

-- Praktek 4
-- Ambil kolom kode_Produk, nama_Produk dari tabel ms_produk
SELECT kode_produk, nama_produk FROM ms_produk_dqlab;

-- Praktek 5
-- Ambil nama produk dari tabel produk, gunakan tabel sebagai prefix
SELECT ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;


-- Praktek 6
-- Ambil nama Produk dari tabel produk dan gunakan tabel dan database
select nama_produk as pd from ms_produk_dqlab;
-- Tanpa 'as'
select nama_produk pd from ms_produk_dqlab;

-- ALIAS
-- Praktek 7
-- Ambil nama produk dari tabel produk, aliaskan nama produk dengan np
SELECT nama_produk AS np FROM ms_produk_dqlab;
SELECT nama_produk np FROM ms_produk_dqlab;

-- Praktek 8
-- ambil nama produk dari tabel produk, Aliaskan tabel produk dengan msp
SELECT nama_produk FROM ms_produk_dqlab AS msp;

-- Praktek 9
-- menggunakan alias dan prefix secara bersamaan
-- ambil nama produk dari tabel produk, aliaskan tabel produk dengan msp, dan jadikan prefix untuk kolom
SELECT msp.nama_produk FROM ms_produk_dqlab AS msp;

-- CASE 1
-- ambil nama pelanggan dan alamat dari tabel ms_pelanggan
SELECT nama_pelanggan, alamat FROM ms_pelanggan_dqlab;

-- CASE 2
-- ambil produk dan harga dari tabel ms_produk
SELECT nama_produk, harga FROM ms_produk_dqlab;


