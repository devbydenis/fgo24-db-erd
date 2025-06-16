# ERD: Sistem Perpustakaan

```mermaid
erDiagram
  direction lr
  buku ||--o{ kategori : termasuk_dalam
  buku ||--o{ rak_buku: disimpan
  buku ||--o{ petugas: mengelola
  peminjam }o--|| transaksi: meminjam
  transaksi ||--o{ buku: dipinjam
  
  buku {
    string    id_buku        PK
    string    judul
    string    isbn
    string    penulis
    date      rilis
    string    penerbit
    string    cetakan
    string    sinopsis
    int       halaman
    string    id_kategori    FK
    string    id_rak_buku    FK
    string    id_petugas     FK
  }
  kategori {
    string    id_kategori    PK
    string    nama
  }
  
  rak_buku{
    string    id_rak_buku    PK
    string    no_rak
    int       kapasitas
  }

  petugas {
    string    id_petugas     PK
    string    nama
  }

  peminjam {
    string    id_peminjam    PK
    string    nama
    string    no_hp
    string    alamat
  }

  transaksi {
    string    id_transaksi   PK
    string    id_peminjam
    string    id_buku
    string    dikembalikan
  }

```