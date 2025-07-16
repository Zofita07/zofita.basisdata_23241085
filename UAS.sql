USE pti_mart2;
-- soal 1 
-- munculkan kode pelanggan , nama produk, kuantitinya, harga dan total dari semua produk yg pernh di transaksikan namun output yg di minta adalah total harga minimal 200.000 dan di urutkan berdasarkan total harga terkecil

select 
  kode_pelanggan, 
  nama_produk, 
  qty, 
  harga, 
  (qty * harga) AS total_harga
FROM 
  tr_penjualan_dqlab
WHERE 
  (qty * harga) >= 200000
ORDER BY 
  total_harga ASC;

-- soal 2
-- tampilkan nama produk, kategori, dan harga dari semua produk yg tidak pernh terjual

SELECT 
  mp.nama_produk, 
  mp.kategori_produk, 
  mp.harga
FROM 
  ms_produk_dqlab AS mp
  LEFT JOIN tr_penjualan_dqlab AS tp ON mp.kode_produk = tp.kode_produk
WHERE 
  tp.kode_transaksi IS NULL;

-- soal 3
-- munculkan kode pelanggan, nama pelanggan , alamat, dan nilai transaksi dari pelanggan AMBIL 1 yg paling tingga nilai transaksinya.
SELECT 
  tp.kode_pelanggan, 
  mp.nama_pelanggan, 
  mp.alamat, 
  SUM(tp.qty * tp.harga) AS nilai_transaksi
FROM 
  tr_penjualan_dqlab AS tp
  JOIN ms_pelanggan_dqlab AS mp ON tp.kode_pelanggan = mp.kode_pelanggan
GROUP BY 
  tp.kode_pelanggan, 
  mp.nama_pelanggan, 
  mp.alamat
ORDER BY 
  nilai_transaksi DESC;
CALL pelanggan_tertinggi();





