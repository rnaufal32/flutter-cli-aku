# Struktur Folder "Sales App"

Setelah saya analisis, projek ini menggunakan struktur folder Clean Architecture dengan pendekatan Domain-Driven Design (DDD). Aplikasi ini adalah aplikasi mobile Flutter untuk Sales dari perusahaan yang menggunakan state management Riverpod dan routing dengan auto_route.

## Daftar Folder, File dan Penjelasannya

### Folder Utama

| Folder/File           | Deskripsi                                           |
| --------------------- | --------------------------------------------------- |
| lib                   | Folder utama yang berisi semua kode sumber aplikasi |
| main.dart             | File utama yang menjadi entry point aplikasi        |
| firebase_options.dart | Konfigurasi Firebase untuk aplikasi                 |

### Struktur lib/src

| Folder/File    | Deskripsi                                                       |
| -------------- | --------------------------------------------------------------- |
| bootstrap.dart | Inisialisasi aplikasi seperti Provider Container, dll           |
| sales.dart     | Konfigurasi aplikasi Flutter (MaterialApp)                      |
| config         | Berisi file konfigurasi aplikasi                                |
| features       | Berisi fitur-fitur aplikasi yang diorganisir berdasarkan domain |
| helper         | Berisi fungsi helper untuk aplikasi                             |
| router         | Konfigurasi routing aplikasi                                    |
| service        | Berisi layanan aplikasi seperti HTTP, GPS, dan state management |
| utils          | Berisi fungsi utilitas                                          |

### Folder config

| Folder/File    | Deskripsi                                 |
| -------------- | ----------------------------------------- |
| assets.dart    | Konfigurasi assets aplikasi               |
| colors.dart    | Definisi warna yang digunakan di aplikasi |
| failures.dart  | Definisi error/failure aplikasi           |
| icons.dart     | Definisi icon yang digunakan              |
| providers.dart | Konfigurasi provider Riverpod             |
| strings.dart   | Konstanta string aplikasi                 |

### Folder features

Setiap fitur diorganisir dengan struktur Clean Architecture:

| Folder/File  | Deskripsi                                                   |
| ------------ | ----------------------------------------------------------- |
| application  | Layer aplikasi yang berisi provider dan use case            |
| data         | Layer data yang berisi datasource, models, dan repositories |
| domain       | Layer domain yang berisi entities dan repository interfaces |
| presentation | Layer presentasi yang berisi UI dan widgets                 |

Fitur-fitur yang ada di aplikasi:

| Folder/File  | Deskripsi                                 |
| ------------ | ----------------------------------------- |
| absensi      | Fitur untuk manajemen absensi karyawan    |
| account      | Fitur untuk manajemen profil akun         |
| approval     | Fitur untuk persetujuan/approval          |
| auth         | Fitur untuk autentikasi (sign in, splash) |
| camera       | Fitur untuk penggunaan kamera             |
| finish       | Fitur untuk menyelesaikan proses          |
| main         | Fitur untuk halaman utama aplikasi        |
| merchant     | Fitur untuk manajemen merchant/toko       |
| notification | Fitur untuk notifikasi                    |
| pengajuan    | Fitur untuk pengajuan surat dan lainnya   |
| sales        | Fitur untuk manajemen penjualan           |
| shared       | Komponen UI yang dapat digunakan kembali  |
| target       | Fitur untuk manajemen target penjualan    |

### Folder helper

| Folder/File     | Deskripsi                     |
| --------------- | ----------------------------- |
| currency.dart   | Helper untuk format mata uang |
| repository.dart | Helper untuk repository       |
| sizes.dart      | Konstanta ukuran untuk UI     |
| theme.dart      | Konfigurasi tema aplikasi     |

### Folder router

| Folder/File    | Deskripsi                              |
| -------------- | -------------------------------------- |
| router.dart    | Definisi router menggunakan auto_route |
| router.gr.dart | File yang digenerate oleh auto_route   |

### Folder service

| Folder/File | Deskripsi                     |
| ----------- | ----------------------------- |
| gps         | Layanan untuk GPS dan lokasi  |
| http        | Layanan HTTP client untuk API |
| state       | Layanan state management      |

### Folder utils

| Folder/File | Deskripsi                    |
| ----------- | ---------------------------- |
| rupiah.dart | Utilitas untuk format rupiah |

### Folder shared (dalam features)

| Folder/File  | Deskripsi                                        |
| ------------ | ------------------------------------------------ |
| buttons      | Komponen button yang dapat digunakan kembali     |
| chips        | Komponen chips yang dapat digunakan kembali      |
| data         | Data yang dapat digunakan di berbagai fitur      |
| icons        | Komponen icon yang dapat digunakan kembali       |
| input        | Komponen input yang dapat digunakan kembali      |
| month_year   | Komponen pemilihan bulan dan tahun               |
| page         | Template halaman yang dapat digunakan kembali    |
| popup        | Komponen popup yang dapat digunakan kembali      |
| presentation | Komponen presentasi yang dapat digunakan kembali |

## Teknologi dan Library yang Digunakan

- Flutter - Framework UI
- Riverpod (hooks_riverpod) - State Management
- auto_route - Navigasi dan routing
- dio - HTTP client
- hive - Local storage
- reactive_forms - Form management
- freezed - Code generation untuk immutable classes
- retrofit - REST API client generator
- scaled_app - Scaling UI untuk berbagai ukuran layar
- flutter_hooks - Hooks untuk Flutter
- Firebase (Auth, Core, Messaging) - Backend services
- Geolocator & Geocoding - Layanan lokasi
- Flutter Map - Peta untuk aplikasi
- Image Picker & Flutter Image Compress - Manajemen gambar
- Lottie - Animasi
- Intl & Jiffy - Format tanggal dan internasionalisasi
