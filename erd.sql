CREATE TABLE peminjam (
  id_peminjam VARCHAR(255) PRIMARY KEY,
  nama VARCHAR(255),
  no_hp VARCHAR(55),
  alamat VARCHAR(255)
);

CREATE TABLE transaksi (
  id_transakasi VARCHAR(255) PRIMARY KEY,
  id_peminjam VARCHAR(255),
  id_buku VARCHAR(255),
  dikembalikan BOOLEAN
);
CREATE TABLE kategori (
  id_kategori VARCHAR(255) PRIMARY KEY,
  nama_kategori VARCHAR(255)
);

CREATE TABLE buku (
  id_buku VARCHAR(255) PRIMARY KEY,
  judul VARCHAR(255),
  isbn VARCHAR(255),
  penulis VARCHAR(255),
  rilis DATE,
  penerbit VARCHAR(255),
  cetakan varchar(255),
  sinopsis VARCHAR(255),
  halaman INT,
  id_kategori VARCHAR(255),
  id_rak_buku VARCHAR(255),
  id_petugas VARCHAR(255)
);

CREATE TABLE rak_buku (
  id_rak_buku VARCHAR(255) PRIMARY KEY,
  no_rak VARCHAR(255),
  kapasitas INT
);

CREATE TABLE petugas (
  id_petugas VARCHAR(255) PRIMARY KEY,
  nama VARCHAR(255)
);

ALTER TABLE buku
ADD CONSTRAINT fk_kategori
FOREIGN KEY (id_kategori)
REFERENCES kategori(id_kategori);

ALTER TABLE buku
ADD CONSTRAINT fk_rak_buku
FOREIGN KEY (id_rak_buku)
REFERENCES rak_buku(id_rak_buku);

ALTER TABLE buku
ADD CONSTRAINT fk_petugas
FOREIGN KEY (id_petugas)
REFERENCES petugas(id_petugas);

ALTER TABLE transaksi
ADD CONSTRAINT fk_peminjam
FOREIGN KEY (id_peminjam)
REFERENCES peminjam(id_peminjam);

ALTER TABLE transaksi
ADD CONSTRAINT fk_buku
FOREIGN KEY (id_buku)
REFERENCES buku(id_buku);

-- DROP TABLE kategori, peminjam, transaksi

INSERT INTO peminjam(id_peminjam, nama, no_hp, alamat) VALUES
  ('1', 'Budi', '08123456789', 'Jl. Raya, Kota A'),
  ('2', 'Andi', '08123456790', 'Jl. Raya, Kota B'),
  ('3', 'Cindy', '08123456791', 'Jl. Raya, Kota C'),
  ('4', 'Dina', '08123456792', 'Jl. Raya, Kota D'),
  ('5', 'Eka', '08123456793', 'Jl. Raya, Kota E'),
  ('6', 'Feri', '08123456794', 'Jl. Raya, Kota F'),
  ('7', 'Gina', '08123456795', 'Jl. Raya, Kota G'),
  ('8', 'Hani', '08123456796', 'Jl. Raya, Kota H'),
  ('9', 'Ika', '08123456797', 'Jl. Raya, Kota I'),
  ('10', 'Joni', '08123456798', 'Jl. Raya, Kota J');

INSERT INTO buku(
  id_buku,
  judul,
  isbn,
  penulis,
  rilis,
  penerbit,
  cetakan,
  sinopsis,
  halaman,
  id_kategori,
  id_rak_buku,
  id_petugas
) VALUES
  ( '1', 'ngab owi vs Mike Tyson', '978-1234567890', 'Penulis 1', '2022-01-01', 'Penerbit 1', 'Cetakan 1', 'Sinopsis 1', 100, '1', '1', '1'),
  ( '2', 'kuda bermuka gibran', '978-2345678901', 'Penulis 2', '2022-02-01', 'Penerbit 2', 'Cetakan 2', 'Sinopsis 2', 200, '2', '2', '2'),
  ( '3', 'owo x teddy: love story', '978-3456789012', 'Penulis 3', '2022-03-01', 'Penerbit 3', 'Cetakan 3', 'Sinopsis 3', 300, '3', '3', '3'),
  ( '4', 'bahlil: the african tuyul', '978-4567890123', 'Penulis 4', '2022-04-01', 'Penerbit 4', 'Cetakan 4', 'Sinopsis 4', 400, '4', '4', '4'),
  ( '5', 'bahlil: urban legend', '978-5678901234', 'Penulis 5', '2022-05-01', 'Penerbit 5', 'Cetakan 5', 'Sinopsis 5', 500, '5', '5', '5'),
  ( '6', 'gulingkan rezim oslo', '978-5678901234', 'Penulis 6', '2022-05-01', 'Penerbit 6', 'Cetakan 6', 'Sinopsis 6', 600, '6', '6', '6'),
  ( '7', 'wapres planga-plongo', '978-5678901234', 'Penulis 7', '2022-05-01', 'Penerbit 7', 'Cetakan 7', 'Sinopsis 7', 700, '7', '7', '7'),
  ( '8', 'makan beracun gratis', '978-5678901234', 'Penulis 8', '2022-05-01', 'Penerbit 8', 'Cetakan 8', 'Sinopsis 8', 800, '8', '8', '8'),
  ( '9', 'halo dek', '978-5678901234', 'Penulis 9', '2022-05-01', 'Penerbit 9', 'Cetakan 9', 'Sinopsis 9', 900, '9', '9', '9'),
  ( '10', 'bahlul the dark mode', '978-5678901234', 'Penulis 10', '2022-05-01', 'Penerbit 10', 'Cetakan 10', 'Sinopsis 10', 1000, '10', '10', '10');

INSERT INTO kategori(id_kategori, nama_kategori) VALUES
  ('1', 'action'),
  ('2', 'comedy'),
  ('3', 'drama'),
  ('4', 'horror'),
  ('5', 'romance'),
  ('6', 'thriller'),
  ('7', 'fantasy'),
  ('8', 'mystery'),
  ('9', 'scifi'),
  ('10', 'biography');

INSERT INTO rak_buku(id_rak_buku, no_rak, kapasitas) VALUES
  ('1', 'Rak 1', 10),
  ('2', 'Rak 2', 20),
  ('3', 'Rak 3', 30),
  ('4', 'Rak 4', 40),
  ('5', 'Rak 5', 50),
  ('6', 'Rak 6', 60),
  ('7', 'Rak 7', 70),
  ('8', 'Rak 8', 80),
  ('9', 'Rak 9', 90),
  ('10', 'Rak 10', 100);

INSERT INTO transaksi(id_transakasi, id_peminjam, id_buku, dikembalikan) VALUES
  ('1', '1', '1', false),
  ('2', '2', '2', false),
  ('3', '3', '3', false),
  ('4', '4', '4', false),
  ('5', '5', '5', false),
  ('6', '6', '6', false),
  ('7', '7', '7', false),
  ('8', '8', '8', false),
  ('9', '9', '9', false),
  ('10', '10', '10', false);

SELECT * FROM buku WHERE id_buku='1'