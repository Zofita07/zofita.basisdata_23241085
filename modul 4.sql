-- Nama  : zofita amalia wati
-- NIM   : 23241085
-- Kelas : C  
-- Modul : Modul 4 JOIN(menggabungkan data), UNION(, dan LIMIT

-- menggunakan databse alter

use pti_mart2;

-- join menggabungkan dua buah tabel saling berelasi
-- tujuannya adalah untuk mendapatkan informasi yg lebih komplek

-- praktek 1
-- Ambil nama pelanggan yg pernh bertransaksi beserta qty
-- artinya kita join tabel penjualan dan tabel pelanggan
-- ambil kode pelanggan nama pelanggan dan qty

select tp.kode_pelanggan, mp.nama_pelanggan, qty
from tr_penjualan_dqlab as tp join ms_pelanggan_dqlab as mp 
on tp.kode_pelanggan = mp.kode_pelanggan;

-- praktek 2 cross join
-- menggabungkan dua buah tabel tanpa ekspesi filter
select tp.kode_pelanggan, mp.nama_pelanggan, qty
from tr_penjualan_dqlab as tp join ms_pelanggan_dqlab as mp 
on true;

-- praktek 3 iner join
-- ambil pelanggan yg pernh bertransaksii berserta nama produk dan qty
-- artinya join tabel penjualan dan pelanggan
-- ambil kode oelanggan, nama pelanggan, nama produk, dan qty
select tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_produk, tp.qty
from tr_penjualan_dqlab as tp inner join ms_pelanggan_dqlab as mp 
on tp.kode_pelanggan = mp.kode_pelanggan;

-- praktek 4 left join
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp left join ms_pelanggan_dqlab as mp 
on tp.kode_pelanggan = mp.kode_pelanggan;

-- praktek 5 right join
-- ambil semua nama pelanggan yg pernah bertransaksi
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
from tr.tr_penjualan_dqlab as tp right join ms_pelanggan_dqlab as mp 
on tp.kode_pelanggan = mp.kode_pelanggan;

-- ambil semua nama pelanggan yg tidak pernah bertransaksi
select tp.kode_pelanggan, ms.nama_pelanggan as mp
from tr.tr_penjualan_dqlab as tp right join ms_pelanggan_dqlab as mp 
on tp.kode_pelanggan = mp.kode_pelanggan is null;







