**NAMA LENGKAP : AQILA NUR AZZA**
<br>**KELAS : 3C**
<br>**NIM : 2341760022**
<br>**JOBSHEET 6: MANAJEMEN PLUGIN**

--------------------------------------------------------------------------------------------------------------------------------------

**Praktikum Menerapkan Plugin di Project Flutter**
<br>Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda.
<br>Perhatian: Diasumsikan Anda telah berhasil melakukan setup environment Flutter SDK, VS Code, Flutter Plugin, dan Android SDK pada pertemuan pertama.
<br>Langkah 1: Buat Project Baru
<br>Buatlah sebuah project flutter baru dengan nama flutter_plugin_pubdev. Lalu jadikan repository di GitHub Anda dengan nama flutter_plugin_pubdev.
<p align="center"><img src="./image/praktikum01/01.png"  width="400"/></p>
<br>Langkah 2: Menambahkan Plugin
<br>Tambahkan plugin auto_size_text menggunakan perintah berikut di terminal 'flutter pub add auto_size_text'
<p align="center"><img src="./image/praktikum01/02.png"  width="400"/></p>
<br>Jika berhasil, maka akan tampil nama plugin beserta versinya di file pubspec.yaml pada bagian dependencies.
<br>Tampilan pada file pubspec_yaml

```dart
auto_size_text: ^3.0.0
```
<br>Tampilan pada file pubspec_lock

```dart
  auto_size_text:
    dependency: "direct main"
    description:
      name: auto_size_text
      sha256: "3f5261cd3fb5f2a9ab4e2fc3fba84fd9fcaac8821f20a1d4e71f557521b22599"
      url: "https://pub.dev"
    source: hosted
    version: "3.0.0"
```
<br>Langkah 3: Buat file red_text_widget.dart
<br>Buat file baru bernama red_text_widget.dart di dalam folder lib lalu isi kode seperti berikut.

<br>Setelah Anda menambahkan kode di atas, Anda akan mendapatkan info error. Mengapa demikian? Jelaskan dalam laporan praktikum Anda!
<br>Langkah 5: Buat Variabel text dan parameter di constructor
<br>Tambahkan variabel text dan parameter di constructor seperti berikut.
<br>Langkah 6: Tambahkan widget di main.dart
<br>Buka file main.dart lalu tambahkan di dalam children: pada class _MyHomePageState

<br>Run aplikasi tersebut dengan tekan F5, maka hasilnya akan seperti berikut.

