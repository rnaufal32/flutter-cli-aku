# Struktur Folder "Toyamilindo MR"

Setelah saya analisis, projek ini menggunakan struktur folder Clean Architecture dengan pendekatan Domain-Driven Design (DDD). Aplikasi ini adalah aplikasi mobile Flutter untuk Medical Representative (MR) dari perusahaan Toyamilindo. Aplikasi ini menggunakan state management Riverpod dan routing dengan auto_route.

## Daftar Folder, File dan Penjelasannya

### Folder Utama

| Folder/File | Deskripsi                                           |
| ----------- | --------------------------------------------------- |
| lib         | Folder utama yang berisi semua kode sumber aplikasi |
| main.dart   | File utama yang menjadi entry point aplikasi        |

### Struktur lib/src

| Folder/File  | Deskripsi                                                                         |
| ------------ | --------------------------------------------------------------------------------- |
| core         | Berisi komponen inti aplikasi seperti konfigurasi, router, services, dan utilitas |
| data         | Berisi implementasi data layer (datasources, models, repositories)                |
| domain       | Berisi kontrak/interface repository dan entity (business logic)                   |
| presentation | Berisi UI dan controllers (views, controllers)                                    |
| widgets      | Berisi komponen UI yang dapat digunakan kembali                                   |

### Folder core

| Folder/File           | Deskripsi                                                   |
| --------------------- | ----------------------------------------------------------- |
| bootstrap.dart        | Inisialisasi aplikasi seperti Hive, Provider Container, dll |
| toyamilindo_mr.dart   | Konfigurasi aplikasi Flutter (MaterialApp)                  |
| config                | Berisi file konfigurasi aplikasi                            |
| config/assets.dart    | Konfigurasi assets aplikasi                                 |
| config/failures.dart  | Definisi error/failure aplikasi                             |
| config/icons.dart     | Definisi icon yang digunakan                                |
| config/providers.dart | Konfigurasi provider Riverpod                               |
| config/strings.dart   | Konstanta string aplikasi                                   |
| router                | Konfigurasi routing aplikasi                                |
| router/router.dart    | Definisi router menggunakan auto_route                      |
| router/router.gr.dart | File yang digenerate oleh auto_route                        |
| services              | Layanan aplikasi                                            |
| services/http         | Layanan HTTP client                                         |
| services/state        | State management services                                   |
| utils                 | Fungsi utilitas                                             |
| utils/currency.dart   | Utilitas untuk format currency                              |
| utils/loading.dart    | Utilitas untuk loading state                                |
| utils/repository.dart | Utilitas untuk repository                                   |
| utils/rupiah.dart     | Utilitas untuk format rupiah                                |
| utils/sizes.dart      | Konstanta ukuran untuk UI                                   |
| utils/theme.dart      | Konfigurasi tema aplikasi                                   |

### Folder data

| Folder/File                            | Deskripsi                                     |
| -------------------------------------- | --------------------------------------------- |
| datasources                            | Sumber data aplikasi                          |
| datasources/remote_data_source.dart    | Implementasi sumber data dari API             |
| datasources/remote_data_source.g.dart  | File yang digenerate untuk remote data source |
| models                                 | Model data aplikasi                           |
| models/product_model.dart              | Model untuk produk                            |
| models/report_model.dart               | Model untuk laporan                           |
| models/response_model.dart             | Model untuk response API                      |
| models/store_model.dart                | Model untuk toko                              |
| models/user_model.dart                 | Model untuk user                              |
| repositories                           | Implementasi repository                       |
| repositories/auth_repository_impl.dart | Implementasi repository autentikasi           |
| repositories/mr_repository_impl.dart   | Implementasi repository MR                    |

### Folder domain

| Folder/File                       | Deskripsi                        |
| --------------------------------- | -------------------------------- |
| repositories                      | Interface repository             |
| repositories/auth_repository.dart | Interface repository autentikasi |
| repositories/mr_repository.dart   | Interface repository MR          |

### Folder presentation

| Folder/File                          | Deskripsi                                     |
| ------------------------------------ | --------------------------------------------- |
| controllers                          | Controller untuk mengelola state dan logic UI |
| controllers/auth                     | Controller untuk autentikasi                  |
| controllers/account                  | Controller untuk akun                         |
| controllers/products_controller.dart | Controller untuk produk                       |
| controllers/report_controller.dart   | Controller untuk laporan                      |
| controllers/sign_in_controller.dart  | Controller untuk sign in                      |
| controllers/store_controller.dart    | Controller untuk toko                         |
| controllers/user_controller.dart     | Controller untuk user                         |
| controllers/visit_controller.dart    | Controller untuk kunjungan                    |
| views                                | Tampilan UI aplikasi                          |
| views/account                        | Halaman akun                                  |
| views/check_in                       | Halaman check in                              |
| views/dashboard                      | Halaman dashboard                             |
| views/main                           | Halaman utama                                 |
| views/report                         | Halaman laporan                               |
| views/report_detail                  | Halaman detail laporan                        |
| views/sign_in                        | Halaman sign in                               |
| views/store_create                   | Halaman membuat toko                          |
| views/store_detail                   | Halaman detail toko                           |
| views/store_list                     | Halaman daftar toko                           |
| views/store_search                   | Halaman pencarian toko                        |
| views/transaction                    | Halaman transaksi                             |
| views/visit_input_toko               | Halaman input kunjungan toko                  |
| views/visit_no_order                 | Halaman kunjungan tanpa order                 |
| views/visit_order                    | Halaman order kunjungan                       |
| views/visit_order_summary            | Halaman ringkasan order kunjungan             |
| views/visit_product                  | Halaman produk kunjungan                      |
| views/visit_schedule                 | Halaman jadwal kunjungan                      |

### Folder widgets

| Folder/File            | Deskripsi                        |
| ---------------------- | -------------------------------- |
| buttons                | Komponen button                  |
| buttons/button.dart    | Implementasi custom button       |
| dialogs                | Komponen dialog                  |
| dialogs/dialogs.dart   | Implementasi custom dialog       |
| failures               | Komponen untuk menampilkan error |
| failures/failures.dart | Implementasi tampilan error      |

## Teknologi dan Library yang Digunakan

- Flutter - Framework UI
- Riverpod (hooks_riverpod) - State Management
- auto_route - Navigasi dan routing
- dio - HTTP client
- hive_ce - Local storage
- reactive_forms - Form management
- freezed - Code generation untuk immutable classes
- retrofit - REST API client generator
- scaled_app - Scaling UI untuk berbagai ukuran layar
- flutter_hooks - Hooks untuk Flutter
