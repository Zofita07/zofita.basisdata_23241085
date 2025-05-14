-- Modul    : 3 Nilai Literal, Operator, Fungsi, Date, dan Klausal WHERE
-- Nama     : Zainul Haqqi MR
-- NIM      : 23241115
-- Kelas    : C

-- Gunakan database PTI Mart
USE pti_mart;

-- Praktek A
-- Menampilkan nilai literal menggunakan SELECT
SELECT 99;
SELECT 99 AS nilai_angka;

-- Praktek B
-- Menampilkan beberapa nilai literal dengan tipe berbeda
SELECT 2025 AS tahun, FALSE AS logika, 'Informatika' AS jurusan;

-- Praktek C
-- Menampilkan nilai NULL
SELECT NULL AS nilai_null;

-- Praktek D
-- Operasi matematika dasar dalam SELECT
SELECT 10 % 3 AS sisa_bagi, 10 / 3 AS pembagian_float, 10 DIV 3 AS pembagian_bulat;

-- Latihan Mandiri A
-- Hitung hasil dari operasi berikut:
SELECT 6*3 AS hasil_kali;
SELECT (6*5)%4 AS hasil_modulo;
SELECT (6*5) MOD 4 AS hasil_modulo_2;

-- Praktek E
-- Mengalikan kolom qty dan harga untuk menghitung total pembelian
SELECT qty * harga AS total_pembelian FROM tr_penjualan;

-- Praktek F
-- Operasi perbandingan logika
SELECT 10=10, 10<>9, 10!=10, 10>9;

-- Latihan Mandiri B
-- Coba bandingkan beberapa nilai
SELECT 1 = TRUE;
SELECT 0 = FALSE;
SELECT 6 >= 6;
SELECT 7.0 = 7.000;
SELECT NULL = 2;
SELECT NULL = NULL;

-- Praktek G
-- Bandingkan kolom qty dengan angka tertentu
SELECT nama_produk, qty > 4 AS lebih_dari_empat FROM tr_penjualan;

-- Praktek H
-- Menggunakan fungsi-fungsi numerik dan pembulatan
SELECT 
  POW(4,2), 
  ROUND(4.65), 
  ROUND(4.55, 1), 
  FLOOR(5.91), 
  CEILING(5.12);

-- Praktek I
-- Fungsi tanggal dalam SELECT
SELECT 
  NOW(), 
  YEAR('2023-06-15'), 
  DATEDIFF('2023-08-01', '2023-06-15'), 
  DAY('2023-06-15');

-- Latihan Mandiri C
-- Operasi tanggal
SELECT DATEDIFF('2022-07-23', NOW()) AS selisih_tanggal;
SELECT YEAR('2022-07-23') AS tahun;
SELECT MONTH('2022-07-23') AS bulan;
SELECT DAY('2022-07-23') AS hari;
SELECT YEAR(NOW()) AS tahun_ini;

-- Praktek J
-- Ambil data berdasarkan kondisi qty
SELECT nama_produk, qty 
FROM tr_penjualan_dqlab 
WHERE qty > 4;

-- Praktek K
-- Ambil data penjualan bulan Juli dengan qty > 4
SELECT nama_produk, qty, tgl_transaksi 
FROM tr_penjualan_dqlab 
WHERE qty > 4 AND MONTH(tgl_transaksi) = 7;

-- Praktek L
-- Cari data produk tertentu
SELECT nama_produk, qty, tgl_transaksi 
FROM tr_penjualan_dqlab 
WHERE nama_produk = 'Keyboard Wireless';

-- Praktek M
-- Cari nama produk yang dimulai dengan huruf 'k'
SELECT nama_produk 
FROM tr_penjualan_dqlab 
WHERE nama_produk LIKE 'k%';

-- Latihan Mandiri D
-- Cari nama produk dengan karakter kedua 'l'
SELECT nama_produk 
FROM tr_penjualan 
WHERE nama_produk LIKE '_l%';

-- Cari kategori_produk yang mengandung huruf 'o'
SELECT kategori_produk 
FROM ms_produk 
WHERE kategori_produk LIKE '%o%';

-- Cari kategori_produk yang mengandung kata 'tek'
SELECT kategori_produk 
FROM ms_produk 
WHERE kategori_produk LIKE '%tek%';

-- Praktek N
-- Cari produk dengan pola nama dan syarat qty
SELECT nama_produk 
FROM tr_penjualan_dqlab 
WHERE nama_produk LIKE 'k%' AND qty > 3;
