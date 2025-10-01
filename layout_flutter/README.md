**NAMA LENGKAP : AQILA NUR AZZA**
<br>**KELAS : 3C**
<br>**NIM : 2341760022**
<br>**JOBSHEET 5 FLUTTER 2: LAYOUT DAN NAVIGASI**

--------------------------------------------------------------------------------------------------------------------------------------

**Praktikum 1: Membangun Layout di Flutter**

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

--------------------------------------------------------------------------------------------------------------------------------------

**Praktikum 2: Implementasi button row**

Langkah 1: Buat method Column _buildButtonColumn

Bagian tombol berisi 3 kolom yang menggunakan tata letak yang sama—sebuah ikon di atas baris teks. Kolom pada baris ini diberi jarak yang sama, dan teks serta ikon diberi warna primer.

Karena kode untuk membangun setiap kolom hampir sama, buatlah metode pembantu pribadi bernama buildButtonColumn(), yang mempunyai parameter warna, Icon dan Text, sehingga dapat mengembalikan kolom dengan widgetnya sesuai dengan warna tertentu.

lib/main.dart (_buildButtonColumn)

<p align="center"><img src="./images/praktikum02/01.png"  width="400"/></p>

Langkah 2: Buat widget buttonSection

Buat Fungsi untuk menambahkan ikon langsung ke kolom. Teks berada di dalam Container dengan margin hanya di bagian atas, yang memisahkan teks dari ikon.

Bangun baris yang berisi kolom-kolom ini dengan memanggil fungsi dan set warna, Icon, dan teks khusus melalui parameter ke kolom tersebut. Sejajarkan kolom di sepanjang sumbu utama menggunakan MainAxisAlignment.spaceEvenly untuk mengatur ruang kosong secara merata sebelum, di antara, dan setelah setiap kolom. Tambahkan kode berikut tepat di bawah deklarasi titleSection di dalam metode build():

lib/main.dart (buttonSection)

<p align="center"><img src="./images/praktikum02/02.png"  width="400"/></p>

--------------------------------------------------------------------------------------------------------------------------------------

**Langkah 3: Tambah button section ke body**

Tambahkan variabel buttonSection ke dalam body seperti berikut:

<p align="center"><img src="./images/praktikum02/03.png"  width="400"/></p>

--------------------------------------------------------------------------------------------------------------------------------------

**Praktikum 3: Implementasi text section**

Langkah 1: Buat widget textSection

Tentukan bagian teks sebagai variabel. Masukkan teks ke dalam Container dan tambahkan padding di sepanjang setiap tepinya. Tambahkan kode berikut tepat di bawah deklarasi buttonSection:

<p align="center"><img src="./images/praktikum03/01.png"  width="400"/></p>

Dengan memberi nilai softWrap = true, baris teks akan memenuhi lebar kolom sebelum membungkusnya pada batas kata.

Langkah 2: Tambahkan variabel text section ke body

Tambahkan widget variabel textSection ke dalam body seperti berikut:

<p align="center"><img src="./images/praktikum03/02.png"  width="400"/></p>
