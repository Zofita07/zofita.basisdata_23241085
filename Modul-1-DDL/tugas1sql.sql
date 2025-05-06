-- Tabel Pelanggan
CREATE TABLE Pelanggan (
    id_pelanggan INT PRIMARY KEY,
    nama_depan VARCHAR(50),
    nama_tengah VARCHAR(50),
    nama_belakang VARCHAR(50),
    no_hp VARCHAR(20),
    email VARCHAR(100),
    jalan VARCHAR(100),
    kecamatan VARCHAR(50),
    kota_kabupaten VARCHAR(50)
);

-- Tabel Kategori
CREATE TABLE Kategori (
    id_kategori INT PRIMARY KEY,
    nama_kategori VARCHAR(50)
);

-- Tabel Produk
CREATE TABLE Produk (
    id_produk INT PRIMARY KEY,
    nama_produk VARCHAR(100),
    harga DECIMAL(10,2),
    deskripsi TEXT,
    stok INT,
    id_kategori INT,
    FOREIGN KEY (id_kategori) REFERENCES Kategori(id_kategori)
);

-- Tabel Produksi
CREATE TABLE Produksi (
    id_produksi INT PRIMARY KEY,
    nama_tailor VARCHAR(100),
    kapasitas INT
);

-- Relasi Produk dan Produksi (membuat)
CREATE TABLE Produksi_Produk (
    id_produk INT,
    id_produksi INT,
    PRIMARY KEY (id_produk, id_produksi),
    FOREIGN KEY (id_produk) REFERENCES Produk(id_produk),
    FOREIGN KEY (id_produksi) REFERENCES Produksi(id_produksi)
);

-- Tabel Pemesanan (relasi beli)
CREATE TABLE Pemesanan (
    id_pemesanan INT PRIMARY KEY,
    id_pelanggan INT,
    id_produk INT,
    jumlah INT,
    tanggal_pemesanan DATE,
    metode_pembayaran VARCHAR(50),
    ulasan TEXT,
    FOREIGN KEY (id_pelanggan) REFERENCES Pelanggan(id_pelanggan),
    FOREIGN KEY (id_produk) REFERENCES Produk(id_produk)
);