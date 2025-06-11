-- Nama : Muhammad Azhari Zulfiansyah
-- NIM : 23241098
-- Kelas : C
-- Modul : Modul 1 Data Definition Leanguage

-- Membuat Database
create database PTI_mart;

-- Menggunakan Database
use PTI_mart;

-- Membuat Tabel
create table Pelanggan(
id_pelanggan int PRIMARY KEY NOT NULL,
nama_pelanggan VARCHAR(50),
alamat VARCHAR(100),
kota VARCHAR(15),
no_tlp VARCHAR(15)
);

create table produk(
id_produk int primary key not null,
nama_produk varchar(50),
kategori varchar(50),
harga int(15),
stok int(15)
);

-- Membuat Tabel dengan Foreign Key (relasi)
create table Transaksi(
id_transaksi int not null primary key,
tgl_transaksi date,
id_produk int,
id_pelanggan int,
qty int,
total_harga int,
foreign key (id_produk) references produk (id_produk),
foreign key (id_pelanggan) references Pelanggan (id_pelanggan)
);

-- mengisi data dalam table
insert  into Pelanggan(
id_pelanggan, nama_pelanggan, alamat, kota, no_tlp
)values
(001,"Azhari","Mataram","Kota Mataram",081),
(002,"Alpi","Sikur","Lotim",087),
(003,"Zulfi","Narmada","Sumbawa",083),
(004,"Dodi","Ampenan","Loteng",084),
(005,"Michan","Labu Api","Kota Mataram",085);

insert into produk(
id_produk, nama_produk, kategori, harga, stok
)values
(001,"pensil","alat tulis",2000,20),
(002,"pensil","alat tulis",2000,20),
(003,"pensil","alat tulis",2000,20),
(004,"pensil","alat tulis",2000,20),
(005,"pensil","alat tulis",2000,20);

-- masukkan data ke table yang ada foreign key
insert into transaksi
set id_transaksi = 1001,
tgl_transaksi = "2025-01-01",
id_produk = (
select id_produk from produk
where id_produk = 111),
id_pelanggan = (
select id_pelanggan from Pelanggan
where id_pelanggan = 001),
qty = 1,
total_harga = (
select harga from produk
where id_produk = 111) * qty;

-- cek data apkh sdh msk
select * from Pelanggan;
select * from produk;
select * from transaksi;