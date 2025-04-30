-- nama : zofita amalia wati
-- NIM : 32341098
-- kelas : C 
-- Modul : Modul 1 data definition lenguage

-- membuat database
create database PTI_mart;

-- menggunakan database
use PTI_mart;

-- membuat tabel
create table pelanggan(
id_pelanggan int primary key not null,
nama_pelanggan varchar (100),
alamat_pelanggan varchar (50),
kota varchar (10),
no_tlp varchar (20)
);

create table produk(
id_produk int primary key not null,
nama_produk varchar (50),
kategori varchar (50),
harga int (20),
stok int (30)
);

-- membuat table dengan foreign key (relasi)
create table transaksi(
id_transaksi int not null primary key,
tgl_transaksi date,
id_produk int,
id_pelanggan int,
foreign key (id_produk) references produk (id_produk),
foreign key (id_pelanggan) references pelanggan (id_pelanggan)
);
 
 -- mengisi data dalam table
 insert into pelanggan (
 id_pelanggan, alamat, kota, no_tlp
 )values
 (1, "zofita", "gomong", "mataram", "087756141851"),
 (2, "fita", "punia", "mataram", "087709292024"),
 (3, "ita", "ampenan", "mataram", "087756141850"),
 (4, "tita", "cakranegara", "mataram", "087756141840"),
 (5, "amalia", "pagesangan", "mataram", "087756141860");
 
 insert into produk (
 id_produk, nama_produk, kategori, harga, stok
 )values
 (01, "buku", "perlengkapan sekolah", 5000, 100),
 (02, "pulpen", "perlengkapan sekolah", 5000, 100),
 (03, "pensil", "perlengkapan sekolah", 5000, 100),
 (04, "penggaris", "perlengkapan sekolah", 5000, 100),
 (05, "penghapus", "perlengkapan sekolah", 5000, 100);
 
 insert into transaksi 
 set id_transaksi = 100,
 tgl_transaksi = "2025-01-01",
 id_produk = (
 select id_produk from produk
 where id_produk = 1),
 id_pelanggan = (
 select id_pelanggan from pelanggan
 where id_pelanggan = 1),
 qty = 1,
 total_harga = (
 select harga from produk
 where id_produk = 111) * qty;

 -- cek data apakah sudah masuk
 select * from pelanggan;
 select * from produk;
 select * from transaksi;
 
 
 




