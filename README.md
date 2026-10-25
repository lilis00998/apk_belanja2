# Tugas Praktikum Navigasi Flutter (Week 3)

## Laporan Praktikum

### Perbedaan Navigator 1.0 dan GoRouter:
1. **Navigator 1.0 (Imperatif)**:
   - Menggunakan pendekatan pendorongan/penghapusan halaman secara manual dari tumpukan (*stack*) menggunakan `Navigator.push()` dan `Navigator.pop()`.
   - Lebih sederhana untuk navigasi dasar, tetapi sulit dikelola jika aplikasi memiliki struktur rute yang kompleks atau mendukung *deep linking*.

2. **GoRouter / Navigator 2.0 (Deklaratif)**:
   - Menggunakan pendekatan berbasis URL/Path deklaratif (seperti rute `/` dan `/detail/:id`).
   - Memudahkan penanganan parameter jalur (*path parameters*), penanganan error 404, serta integrasi *deep linking* di berbagai platform (Web, Android, iOS).

---

## Hasil Tampilan Aplikasi
*(Tambahkan screenshot hasil jalannya aplikasi di sini)*