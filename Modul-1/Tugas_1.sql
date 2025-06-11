-- Nama : zofita amalia wati
-- NIM : 23241085
-- Kelas : C
-- Modul : Modul 1 Data Definition Leanguage

-- Membuat Database
create database pti_mart2;

-- Menggunakan Database
use PTI_mart2;

-- Membuat Tabel
create table ms_pelanggan_dqlab(
id_pelanggan int PRIMARY KEY NOT NULL,
nama_pelanggan VARCHAR(50),
alamat VARCHAR(100),
kota VARCHAR(15),
no_tlp VARCHAR(15)
);

create table ms_produk_dqlab(
id_produk int primary key not null,
nama_produk varchar(50),
kategori varchar(50),
harga int(15),
stok int(15)
);

-- Membuat Tabel dengan Foreign Key (relasi)
create table tr_penjualan_dqlab(
id_transaksi int not null primary key,
tgl_transaksi date,
id_produk int,
id_pelanggan int,
qty int,
total_harga int,
foreign key (id_produk) references produk (id_produk),
foreign key (id_pelanggan) references tr_penjualan_dqlab (id_pelanggan)
);

-- mengisi data dalam table
insert  into ms_pelanggan_dqlab(
kode_pelanggan, no_urut, nama_pelanggan, alamat
)values
(001,"zof","Mataram","Kota Mataram",081),
(002,"zofi","Sikur","Lotim",087),
(003,"fita","Narmada","Sumbawa",083),
(004,"ita","Ampenan","Loteng",084),
(005,"fita","Labu Api","Kota Mataram",085);

insert into ms_produk_dqlab(
id_produk, nama_produk, kategori, harga, stok
)values
(001,"fashion","kaos",2000,20),
(002,"fashion","kemeja",2000,20),
(003,"fashion","celana",2000,20),
(004,"fashion","rok",2000,20),
(005,"fashion","jaket",2000,20);

-- masukkan data ke table yang ada foreign key
insert into tr_penjualan_dqlab
set id_transaksi = 1001,
tgl_transaksi = "2025-01-01",
id_produk = (
select id_produk from ms_produk_dqlab
where id_produk = 111),
id_pelanggan = (
select id_pelanggan from ms_pelanggan_dqlab
where id_pelanggan = 001),
qty = 1,
total_harga = (
select harga from ms_produk_dqlab
where id_produk = 111) * qty;

-- cek data apkh sdh msk
select * from ms_pelanggan_dqlab;
select * from ms_produk_dqlab;
select * from tr_penjualan_dqlab;