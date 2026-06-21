# Prototype Analisis Performa State Management GetX dan Redux pada Flutter

Prototype aplikasi ini dibuat untuk kebutuhan penelitian Tugas Akhir
dengan judul:

**"Analisis Performa State Management Library GetX dan Redux pada
Flutter"**

Aplikasi ini digunakan untuk membandingkan performa state management
**GetX** dan **Redux** pada Flutter menggunakan data film dari **The
Movie Database (TMDB) API**.

Pengujian dilakukan dengan variasi jumlah data film yaitu:

- 1000 data film
- 5000 data film
- 10000 data film

---

# Download Prototype Apk

## APK GetX

Link APK:

[Download APK GetX di Sini](https://github.com/FaustaAkbar/Prototype_TugasAkhir/releases/download/v1/GetX-app.apk)

---

## APK Redux

Link APK:

[Download APK Redux di Sini](https://github.com/FaustaAkbar/Prototype_TugasAkhir/releases/download/V1/Redux-app.apk)

---

# Struktur Project

Repository ini memiliki dua aplikasi Flutter:

    Flutter-State-Management-Analysis

    ├── getxapp
    │   └── Implementasi menggunakan GetX
    │
    └── reduxapp
        └── Implementasi menggunakan Redux

---

# Cara Menjalankan Project

## 1. Clone Repository

Clone repository:

```bash
git clone <repository-url>
```

Masuk ke folder repository:

```bash
cd Flutter-State-Management-Analysis
```

---

# Menjalankan Aplikasi GetX

## 2. Masuk ke Folder GetX

```bash
cd getxapp
```

Install dependency:

```bash
flutter pub get
```

---

## 3. Konfigurasi TMDB API Key

Buka file:

    lib/services/api_service.dart

Cari bagian:

```dart
final String apiKey = '';
```

Masukkan API Key dari TMDB:

```dart
final String apiKey = 'YOUR_TMDB_API_KEY';
```

Contoh:

```dart
final String apiKey = '123456789abcdef';
```

---

## 4. Menentukan Jumlah Data Film

Jumlah data film yang digunakan untuk pengujian dapat diatur pada file:

    lib/controllers/controller.dart

Cari bagian:

```dart
fetchMovies(10000);
```

Parameter tersebut menentukan jumlah data film yang akan diambil.

Contoh:

### Pengujian 1000 data

```dart
FetchMoviesAction(1000)
```

### Pengujian 5000 data

```dart
FetchMoviesAction(5000)
```

### Pengujian 10000 data

```dart
FetchMoviesAction(10000)
```

---

## 5. Jalankan Aplikasi GetX

```bash
flutter run
```

---

# Menjalankan Aplikasi Redux

## 6. Masuk ke Folder Redux

Dari folder utama repository:

```bash
cd reduxapp
```

Install dependency:

```bash
flutter pub get
```

---

## 7. Konfigurasi TMDB API Key

Buka file:

    lib/services/api_service.dart

Cari:

```dart
final String apiKey = '';
```

Masukkan API Key TMDB:

```dart
final String apiKey = 'YOUR_TMDB_API_KEY';
```

---

## 8. Menentukan Jumlah Data Film Redux

Buka:

    lib/redux/middleware.dart

Cari:

```dart
ApiService.fetchMovies(25)
```

Ubah sesuai skenario pengujian.

## 9. Jalankan Aplikasi Redux

```bash
flutter run
```

---

# Skenario Pengujian

Prototype menggunakan data film dari TMDB API dengan tiga variasi jumlah
data:

## 1. Pengujian 1000 Data

Aplikasi mengambil sebanyak 1000 data film dari TMDB API.

Tujuan:

Mengukur performa state management pada jumlah data yang relatif kecil.

---

## 2. Pengujian 5000 Data

Aplikasi mengambil sebanyak 5000 data film dari TMDB API.

Tujuan:

Melihat perubahan performa ketika jumlah data meningkat.

---

## 3. Pengujian 10000 Data

Aplikasi mengambil sebanyak 10000 data film dari TMDB API.

Tujuan:

Menguji kemampuan state management dalam menangani jumlah data besar.

---

## GetX

Perubahan state dilakukan menggunakan:

    RxList (.obs)

## Redux

Perubahan state dilakukan menggunakan:

    Action → Reducer → Store

---

# Teknologi yang Digunakan

- Flutter
- Dart
- TMDB API
- Dio

## GetX

Dependency utama:

- get

## Redux

Dependency utama:

- redux
- flutter_redux

---

# Requirements

Sebelum menjalankan aplikasi, pastikan memiliki:

- Flutter SDK
- Dart SDK
- Android Studio / VS Code
- Emulator Android atau perangkat fisik
- TMDB API Key

Cek instalasi Flutter:

```bash
flutter doctor
```

---

# License

Project ini dibuat untuk kebutuhan penelitian akademik Tugas Akhir.
