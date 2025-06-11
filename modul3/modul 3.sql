-- Nama: Zofita Amalia Wati
-- Nim : 23241085
-- Kelas: C
-- Modul : Modul-3 database

-- menggunakan database
use pti_mart2;

-- ORDER BY
-- menggunakan data dari sebuah field/kolo, atau hasil oleh kolom
-- Praktek 1
-- ambil nama produk dan qty, dari tabel penjualan, urutkan qty
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty;

-- Praktek 2
-- ambil nama produk, qty dari tb penjualan urutkan qty dan nama produk
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty, nama_produk;

-- Praktek 3
-- ambil nama produk, qty dari tb penjualan urutan qty besar ke kecil
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC;

-- Praktek 4
-- ambil nama produk, qty dari tb penjualan urut qty DESC, nama produk asc
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC, nama_produk ASC;
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC, nama_produk DESC;

-- Praktek 5
-- menggunakan ORDER BY dari hasil perhitungan kolom
-- ambil nama produk, qty, harga dan perkalian qty*harga, urut qty*harga
SELECT nama_produk, qty, harga, qty*harga AS total FROM tr_penjualan_dqlab ORDER BY total DESC;

-- praktek 6
-- ambil nama produk dan qty untuk produk yg berawalan dri huruf f urut dari besar ke kecil
select nama_produk, qty from tr_penjualan_dqlab where nama_produk like 'f%' order by qty desc;
 
 -- fungsi agregasi
 -- digunakan untuk mengolah beberapa baris dalam kolom data 
 -- praktek 7
 -- sum = jumlah/ terjual
 -- hitung jumlah qty terjual pada penjualan
 select qty from tr_penjualan_dqlab;
 select sum(qty) from tr_penjualan_dqlab; -- ada 42 produk yg terjual
 
 -- praktek 8 
 -- count = penjualan/transaksi
 -- hitung semua transaksi yg terjual
 select count(*) from tr_penjualan_dqlab;
 
 -- praktek 9
 -- hitung qty terjual dan hitung transaksi yg terjadi
 select sum(qty), count(*) from tr_penjualan_dqlab;
 
 -- praktek 10
 -- hitung rata rata qty terjual per transaksi (avg)
 -- hitung qty terbanyak terjual per transaksi (max)
 -- hiyung qty pasling sedikit terjual pertransaksi  (min)
 select avg(qty), max(qty), min(qty) from tr_penjualan_dqlab;
 
 -- count (distnet)
 -- digunakann untuk menghitung nilai unik yang yg terdapat pad sebuah kolom 
 -- praktik 11
 select count(nama_produk) from tr_penjualan_dqlab; -- ada 15 produk
 select count(distinct nama_produk) from tr_penjualan_dqlab;
 
 -- praktek 12
 select count(nama_produk), count(distinct nama_produk) from tr_penjualan_dqlab;
 -- praktek 13
 -- ambilNm PEODUK, HITung nilai terbanyak dari qty
 select nama_produk, max(qty) from tr_penjualan_dqlab;
 
 -- gruop by
 -- digunakan untuk mengelompokkan isi data satu atau banyak kolom
 -- biasanya di gabungkan dengan fungsi agregasi 
 -- praktek 14
 -- menampilkan nama produk daari hasil pengelompokan berdasarkan nama produk
 select nama_produk from tr_penjualan_dqlab group by nama_produk;
 
 -- praktek 15
 -- menampilkan nama produk dan qty dari hasil kelompok nama produk 
 select nama_produk, qty
 from tr_penjualan_dqlab group by nama_produk,qty;
 
 -- praktek 16
 -- tampilkan semua produk dan total qty terjual
 select nama_produk, sum(qty)
 from tr_penjualan_dqlab group by nama_produk;
 
 -- praktek 17 
  -- tampilkan semua produk dan total qty terjual urut  dari qty terbanyak
  select nsma_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk order by sum(qty) desc;
  
  -- having
  -- digunakan untuk melakukan filterasi
  -- dari hasil fungsi agregasi dan group by
  -- praktek 18
  -- ambil nama produk yg total qty  terjualannya di atas 2
  select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk having sum(qty)>2 order by sum(qty) desc;
  
-- LATIHAN MANDIRI 1
-- a. tampilkan semua kolom dari table tr penjualan dengan mengurutkan berdasarkan qty dan tgl_transaksi
select * from tr_penjualan_dqlab order by qty, tgl_transaksi;

-- b. tampilkan semua kolom dari table ms pelanggan dengan mengurutkan berdasarkan nama_pelanggan
select * from ms_pelanggan_dqlab order by nama_pelanggan;

-- c. tampilkan semua kolom dari table ms pelanggan dengan mengurutkan berdasarkan alamat
select * from ms_pelanggan_dqlab order by alamat;

-- Latihan mandiri 2
-- a. tampilkan semua kolom dari table tr penjualan dengan mengurutkan berdasarkan tgl transaksi secara DESC dan qty secara ASC
select * from tr_penjualan_dqlab order by tgl_transaksi desc, qty asc;

-- b. tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan nama pelanggan secara DESC
select * from ms_pelanggan_dqlab order by nama_pelanggan desc;

-- c. tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan alamat secara DESC
select * from ms_pelanggan_dqlab order by alamat desc;

-- Latihan mandiri 3
-- Pengurutan dengan ekspresi total harga menggunakan rumusan jumlah barang dikali harga barang dikurangi diskon
select nama_produk, qty, harga, diskon_persen, (qty * harga - diskon_persen) as total_harga 
from tr_penjualan_dqlab order by total_harga desc;

-- latihan mandiri 4
-- tampilkan semua kolom dari transaksi penjualan yang memilikki diskon dan urutkan dari harga yang tertinggi
SELECT *
FROM tr_penjualan_dqlab
WHERE diskon_persen > 0
ORDER BY harga DESC;









 
 
 
 