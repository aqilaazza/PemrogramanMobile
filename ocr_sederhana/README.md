**NAMA LENGKAP : AQILA NUR AZZA**
<br>**KELAS : 3C**
<br>**NIM : 2341760022**
<br>**JOBSHEET 6: MANAJEMEN PLUGIN**

--------------------------------------------------------------------------------------------------------------------------------------

**4.1. Langkah 1: Buat Proyek Baru**

Buka terminal, lalu jalankan:

<p align="center">
  <img src="Images/01.png" width="400">
</p>

<p align="center">
  <img src="Images/02.png" width="400">
</p>
 
**4.2. Langkah 2: Tambahkan Plugin**

Buka file pubspec.yaml, lalu tambahkan dependensi berikut di bawah bagian dependencies:
```dart
  dependencies:
    flutter:
        sdk: flutter
    google _ mlkit _ text _ recognition : ˆ0.10.0
    camera : ˆ0.10.5+5
    path _ provider : ˆ2.1.2
    path : ˆ1.8.3
```

**4.2. Langkah 2: Tambahkan Plugin**

Buka file pubspec.yaml, lalu tambahkan dependensi berikut di bawah bagian dependencies:


**4.3. Langkah 3: Tambahkan Izin Kamera (Android)**

Buka file: android/app/src/main/AndroidManifest.xml
Tambahkan baris berikut di dalam tag <manifest>, sebelum <application>:

**4.4. Langkah 4: Buat Struktur Folder**

Di dalam folder lib/, buat struktur berikut:
5. KODE PROGRAM

5.1. File: lib/main.dart
5.2. File: lib/screens/splash screen.dart
5.3. File: lib/screens/home screen.dart
5.4. File: lib/screens/scan screen.dart
5.5. File: lib/screens/result screen.dart

--------------------------------------------------------------------------------------------------------------------------------------

6. TUGAS PRAKTIKUM
1. Jalankan aplikasi di emulator atau HP.
2. Lakukan scan terhadap teks cetak (misal: buku, koran, atau layar HP).
3. Amati hasil OCR yang muncul.
4. Jawab pertanyaan berikut:
a. Apakah semua teks terbaca dengan akurat? Mengapa?
b. Apa kegunaan fitur OCR dalam kehidupan sehari-hari?
c. Sebutkan 2 contoh aplikasi nyata yang menggunakan OCR!
