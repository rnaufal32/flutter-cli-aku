# Struktur Folder "Customer"

Setelah saya analisis, projek ini menggunakan struktur folder berbasis fitur dengan arsitektur MVP (Model-View-Presenter) yang diimplementasikan menggunakan Riverpod dan Flutter Hooks untuk manajemen state. Struktur ini memisahkan kode berdasarkan fungsi dan domain bisnis, memudahkan pengembangan dan pemeliharaan aplikasi.

## Daftar Folder, File dan Penjelasannya

### Folder Utama

| Folder/File   | Deskripsi                                                        |
| ------------- | ---------------------------------------------------------------- |
| lib           | Folder utama yang berisi semua kode Dart                         |
| lib/main.dart | File entry point aplikasi yang menginisialisasi aplikasi Flutter |

### Struktur lib/src

| Folder/File | Deskripsi                                                     |
| ----------- | ------------------------------------------------------------- |
| controller  | Berisi presenter/controller yang menghubungkan Model dan View |
| core        | Berisi kode inti yang digunakan di seluruh aplikasi           |
| datasource  | Sumber data aplikasi (local dan remote)                       |
| model       | Model data aplikasi                                           |
| repository  | Repository untuk akses data                                   |
| route       | Routing aplikasi                                              |
| service     | Layanan aplikasi                                              |
| view        | Layer presentasi (View dalam MVP)                             |
| widget      | Widget umum yang digunakan di seluruh aplikasi                |

### Folder controller

| Folder/File                     | Deskripsi                                    |
| ------------------------------- | -------------------------------------------- |
| address_controller.dart         | Controller untuk manajemen alamat            |
| auth_controller.dart            | Controller untuk autentikasi                 |
| cart_controller.dart            | Controller untuk manajemen keranjang belanja |
| checkout_controller.dart        | Controller untuk proses checkout             |
| location_controller.dart        | Controller untuk manajemen lokasi            |
| merchant_controller.dart        | Controller untuk data merchant               |
| merchant_detail_controller.dart | Controller untuk detail merchant             |
| signin_controller.dart          | Controller untuk proses sign in              |
| upload_controller.dart          | Controller untuk upload file/gambar          |
| zone_controller.dart            | Controller untuk manajemen zona              |

### Folder core

| Folder/File    | Deskripsi                                  |
| -------------- | ------------------------------------------ |
| bootstrap.dart | Inisialisasi dan konfigurasi awal aplikasi |
| umkmgo.dart    | Komponen utama aplikasi (root widget)      |
| colors.dart    | Konfigurasi warna aplikasi                 |
| strings.dart   | Konfigurasi string aplikasi                |
| error.dart     | Konfigurasi penanganan error               |
| assets.dart    | Konfigurasi asset aplikasi                 |
| icons.dart     | Konfigurasi icon aplikasi                  |
| providers.dart | Konfigurasi provider Riverpod              |
| utils          | Utilitas aplikasi                          |

### Folder core/utils

| Folder/File     | Deskripsi                 |
| --------------- | ------------------------- |
| currency.dart   | Utilitas format mata uang |
| loading.dart    | Utilitas loading state    |
| repository.dart | Utilitas repository       |
| sizes.dart      | Utilitas ukuran UI        |
| theme.dart      | Utilitas tema aplikasi    |
| rupiah.dart     | Utilitas format rupiah    |

### Folder datasource

| Folder/File | Deskripsi                |
| ----------- | ------------------------ |
| local       | Sumber data lokal        |
| remote      | Sumber data remote (API) |

### Folder datasource/local

| Folder/File                | Deskripsi                                   |
| -------------------------- | ------------------------------------------- |
| local_datasource.dart      | Implementasi sumber data lokal              |
| local_datasource_impl.dart | Implementasi konkret untuk local datasource |

### Folder datasource/remote

| Folder/File                 | Deskripsi                                      |
| --------------------------- | ---------------------------------------------- |
| remote_datasource.dart      | Interface untuk remote datasource              |
| remote_datasource_impl.dart | Implementasi remote datasource dengan Retrofit |
| remote_datasource.g.dart    | File generated untuk remote_datasource         |
| api_client.dart             | Konfigurasi HTTP client (Dio)                  |
| api_endpoints.dart          | Definisi endpoint API                          |

### Folder model

| Folder/File                   | Deskripsi                 |
| ----------------------------- | ------------------------- |
| address_item_model.dart       | Model item alamat         |
| address_model.dart            | Model alamat              |
| cart_item_model.dart          | Model item keranjang      |
| cart_model.dart               | Model keranjang           |
| category_model.dart           | Model kategori            |
| checkout_model.dart           | Model checkout            |
| data_model.dart               | Model data umum           |
| delivery_address_model.dart   | Model alamat pengiriman   |
| merchant_model.dart           | Model merchant            |
| paginated_response_model.dart | Model response pagination |
| payment_method_model.dart     | Model metode pembayaran   |
| product_model.dart            | Model produk              |
| product_option_model.dart     | Model opsi produk         |
| response_model.dart           | Model response API        |
| user_model.dart               | Model user                |
| zone_model.dart               | Model zona                |

### Folder repository

| Folder/File                   | Deskripsi                           |
| ----------------------------- | ----------------------------------- |
| auth_repository.dart          | Repository untuk autentikasi        |
| auth_repository_impl.dart     | Implementasi repository autentikasi |
| cart_repository.dart          | Repository untuk keranjang belanja  |
| cart_repository_impl.dart     | Implementasi repository keranjang   |
| merchant_repository.dart      | Repository untuk merchant           |
| merchant_repository_impl.dart | Implementasi repository merchant    |
| user_repository.dart          | Repository untuk user               |
| user_repository_impl.dart     | Implementasi repository user        |
| zone_repository.dart          | Repository untuk zona               |
| zone_repository_impl.dart     | Implementasi repository zona        |

### Folder route

| Folder/File       | Deskripsi                                   |
| ----------------- | ------------------------------------------- |
| router.dart       | Konfigurasi router aplikasi                 |
| router.gr.dart    | File router yang digenerate oleh auto_route |
| route_guards.dart | Route guards untuk autentikasi              |
| route_names.dart  | Konstanta nama route                        |

### Folder service

| Folder/File               | Deskripsi                 |
| ------------------------- | ------------------------- |
| auth_service.dart         | Layanan autentikasi       |
| cart_service.dart         | Layanan keranjang belanja |
| http_service.dart         | Layanan HTTP client       |
| location_service.dart     | Layanan lokasi            |
| notification_service.dart | Layanan notifikasi        |
| storage_service.dart      | Layanan penyimpanan lokal |
| upload_service.dart       | Layanan upload file       |

### Folder view

| Folder/File         | Deskripsi                      |
| ------------------- | ------------------------------ |
| checkout            | Halaman checkout               |
| discount            | Halaman diskon                 |
| home                | Halaman utama                  |
| location_permission | Halaman izin lokasi            |
| main                | Halaman utama aplikasi         |
| merchant            | Halaman merchant               |
| notification        | Halaman notifikasi             |
| payment_gateway     | Halaman gateway pembayaran     |
| product             | Halaman produk                 |
| profile             | Halaman profil                 |
| sign_in             | Halaman sign in                |
| soon                | Halaman fitur yang akan datang |
| transaction_detail  | Halaman detail transaksi       |
| transaction_history | Halaman riwayat transaksi      |

### Folder view/main/widgets

| Folder/File     | Deskripsi                |
| --------------- | ------------------------ |
| bottom_nav.dart | Widget bottom navigation |

### Folder view/merchant/widgets

| Folder/File            | Deskripsi                |
| ---------------------- | ------------------------ |
| category_dropdown.dart | Widget dropdown kategori |
| food_item.dart         | Widget item makanan      |
| search_bar.dart        | Widget search bar        |

### Folder widget

| Folder/File | Deskripsi                      |
| ----------- | ------------------------------ |
| dialogs     | Widget dialog                  |
| failures    | Widget untuk menampilkan error |
| buttons     | Komponen button                |
| cards       | Komponen card                  |
| forms       | Komponen form                  |

### Folder widget/dialogs

| Folder/File                     | Deskripsi                 |
| ------------------------------- | ------------------------- |
| dialogs.dart                    | Widget dialog umum        |
| location_permission_dialog.dart | Widget dialog izin lokasi |

### Folder widget/failures

| Folder/File   | Deskripsi                      |
| ------------- | ------------------------------ |
| failures.dart | Widget untuk menampilkan error |

### Folder widget/buttons

| Folder/File           | Deskripsi              |
| --------------------- | ---------------------- |
| button.dart           | Komponen button custom |
| primary_button.dart   | Button primary         |
| secondary_button.dart | Button secondary       |

### Folder widget/cards

| Folder/File        | Deskripsi            |
| ------------------ | -------------------- |
| card.dart          | Komponen card custom |
| product_card.dart  | Card untuk produk    |
| merchant_card.dart | Card untuk merchant  |

### Folder widget/forms

| Folder/File         | Deskripsi                  |
| ------------------- | -------------------------- |
| input.dart          | Komponen input text custom |
| input_file.dart     | Komponen input file custom |
| form_validator.dart | Validator untuk form       |

## Teknologi dan Library Utama

- Flutter - Framework UI
- Riverpod (hooks_riverpod) - State Management
- flutter_hooks - Hooks untuk Flutter
- auto_route - Navigasi dan routing
- freezed - Code generation untuk immutable classes
- json_serializable - Untuk serialisasi/deserialisasi JSON
- dio - HTTP client
- retrofit - REST API client generator
- google_fonts - Custom fonts
- cached_network_image - Caching gambar
- skeletonizer - Skeleton loading
- carousel_slider - Slider/carousel
- reactive_forms - Form management
- geolocator - Mendapatkan lokasi perangkat
- geocoding - Mengkonversi koordinat ke alamat
- hive_ce - Penyimpanan lokal

## Arsitektur Aplikasi

Aplikasi ini mengimplementasikan arsitektur MVP (Model-View-Presenter) dengan pendekatan berbasis fitur:

1. **Model** (lib/src/model/):

   - Bertanggung jawab untuk struktur data
   - Berisi model data dengan JSON serialization

2. **View** (lib/src/view/):

   - Bertanggung jawab untuk UI dan interaksi pengguna
   - Menggunakan HookConsumerWidget untuk mengakses state dan hooks

3. **Presenter** (lib/src/controller/):

   - Menghubungkan Model dan View
   - Menangani logika presentasi menggunakan Riverpod providers

4. **Repository** (lib/src/repository/):

   - Berisi implementasi repository untuk akses data
   - Menjembatani antara datasource dan controller

5. **Datasource** (lib/src/datasource/):

   - Berisi implementasi akses data (local dan remote)
   - Menggunakan Retrofit untuk API calls

6. **Service** (lib/src/service/):

   - Berisi layanan aplikasi untuk business logic
   - Menyediakan fungsi-fungsi yang dapat digunakan di seluruh aplikasi

7. **Core** (lib/src/core/):

   - Berisi konfigurasi, utilitas, dan komponen yang digunakan di seluruh aplikasi
   - Menyediakan layanan umum seperti HTTP client, router, dll.

8. **Route** (lib/src/route/):
   - Berisi konfigurasi routing dan navigasi
   - Menggunakan auto_route untuk type-safe navigation

Aplikasi ini juga menerapkan prinsip Clean Architecture dengan memisahkan kode berdasarkan tanggung jawab dan domain bisnis, memudahkan pengembangan dan pemeliharaan aplikasi.
