**NAMA LENGKAP : AQILA NUR AZZA**
<br>**KELAS : 3C**
<br>**NIM : 2341760022**
<br>**JOBSHEET 5 FLUTTER 2: LAYOUT DAN NAVIGASI**

--------------------------------------------------------------------------------------------------------------------------------------

Praktikum 1: Membangun Layout di Flutter

<br>Langkah 1: Buat Project Baru
<br>Buatlah sebuah project flutter baru dengan nama layout_flutter. Atau sesuaikan style laporan praktikum yang Anda buat.
<p align="center"><img src="./images/praktikum01/01.png"  width="400"/></p>
<br>Langkah 2: Buka file lib/main.dart
<br>Buka file main.dart lalu ganti dengan kode berikut. Isi nama dan NIM Anda di text title.
<p align="center"><img src="./images/praktikum01/02.png"  width="400"/></p>
<br>Langkah 3: Identifikasi layout diagram
<br>Langkah pertama adalah memecah tata letak menjadi elemen dasarnya:
<br>  Identifikasi baris dan kolom.
<br>  Apakah tata letaknya menyertakan kisi-kisi (grid)?
<br>  Apakah ada elemen yang tumpang tindih?
<br>  Apakah UI memerlukan tab?
<br>  Perhatikan area yang memerlukan alignment, padding, atau borders.

<br>Pertama, identifikasi elemen yang lebih besar. Dalam contoh ini, empat elemen disusun menjadi sebuah kolom: sebuah gambar, dua baris, dan satu blok teks.
<p align="center"><img src="./images/praktikum01/03-1.png"  width="400"/></p>
<br>Selanjutnya, buat diagram setiap baris. Baris pertama, disebut bagian Judul, memiliki 3 anak: kolom teks, ikon bintang, dan angka. Anak pertamanya, kolom, berisi 2 baris teks. Kolom pertama itu memakan banyak ruang, sehingga harus dibungkus dengan widget yang Diperluas.
<p align="center"><img src="./images/praktikum01/03-2.png"  width="400"/></p>
<br>Baris kedua, disebut bagian Tombol, juga memiliki 3 anak: setiap anak merupakan kolom yang berisi ikon dan teks.
<p align="center"><img src="./images/praktikum01/03-3.png"  width="400"/></p>
<br>Setelah tata letak telah dibuat diagramnya, cara termudah adalah dengan menerapkan pendekatan bottom-up. Untuk meminimalkan kebingungan visual dari kode tata letak yang banyak bertumpuk, tempatkan beberapa implementasi dalam variabel dan fungsi.
<br>Langkah 4: Implementasi title row
<br>Pertama, Anda akan membuat kolom bagian kiri pada judul. Tambahkan kode berikut di bagian atas metode build() di dalam kelas MyApp:
<p align="center"><img src="./images/praktikum01/04.png"  width="400"/></p>
/* soal 1 */ Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.

/* soal 2 */ Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks ‘Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.

/* soal 3 */ Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi body text ‘Hello World' dengan variabel titleSection seperti berikut:

<p align="center"><img src="./images/praktikum01/04-2.png"  width="400"/></p>