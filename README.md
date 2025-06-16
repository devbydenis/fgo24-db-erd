# Markdown

```mermaid
erDiagram
  direction lr
  buku ||--o{ kategori : termasuk_dalam
  buku ||--o{ rak_buku: disimpan
  buku ||--o{ petugas: mengelola
  peminjam }o--|| transaksi: meminjam
  transaksi ||--o{ buku: dipinjam
  
  buku {
    string    id            PK
    string    judul
    string    isbn
    string    penulis
    date      rilis
    string    penerbit
    string    cetakan
    string    sinopsis
    int       halaman
    string    id_kategori   FK
    string    id_rak_buku   FK
    string    id_petugas    FK
  }
  kategori {
    string    id
    string    nama
  }
  
  rak_buku{
    string    id
    string    no_rak
    int       kapasitas
  }

  petugas {
    string    id
    string    nama
  }

  peminjam {
    string    id
    string    nama
    string    no_hp
    string    alamat
  }

  transaksi {
    string    id
    string    id_peminjam
    string    id_buku
    string    dikembalikan
  }

```