**NAMA LENGKAP : AQILA NUR AZZA**
<br>**KELAS : 3C**
<br>**NIM : 2341760022**
<br>**JOBSHEET 5 FLUTTER 2: LAYOUT DAN NAVIGASI**

--------------------------------------------------------------------------------------------------------------------------------------

**Praktikum 5: Membangun Navigasi di Flutter**

<br>Langkah 1: Buat Project Baru
<br>Sebelum melanjutkan praktikum, buatlah sebuah project baru Flutter dengan nama belanja dan susunan folder seperti pada gambar berikut. Penyusunan ini dimaksudkan untuk mengorganisasi kode dan widget yang lebih mudah.
<p align="center"><img src="./images/praktikum05/01.png"  width="400"/></p>
<br>Langkah 2: Mendefinisikan Route
<br>Buatlah dua buah file dart dengan nama home_page.dart dan item_page.dart pada folder pages. Untuk masing-masing file, deklarasikan class HomePage pada file home_page.dart dan ItemPage pada item_page.dart. Turunkan class dari StatelessWidget. Gambaran potongan kode dapat anda lihat sebagai berikut.
<br>pages/home_page
<p align="center"><img src="./images/praktikum05/02-1.png"  width="400"/></p>
<br>pages/item_page
<p align="center"><img src="./images/praktikum05/02-2.png"  width="400"/></p>
<br>Langkah 3: Lengkapi Kode di main.dart
<br>Setelah kedua halaman telah dibuat dan didefinisikan, bukalah file main.dart. Pada langkah ini anda akan mendefinisikan Route untuk kedua halaman tersebut. Definisi penamaan route harus bersifat unique. Halaman HomePage didefinisikan sebagai /. Dan halaman ItemPage didefinisikan sebagai /item. Untuk mendefinisikan halaman awal, anda dapat menggunakan named argument initialRoute. Gambaran tahapan ini, dapat anda lihat pada potongan kode berikut.
<p align="center"><img src="./images/praktikum05/03.png"  width="400"/></p>
<br>Langkah 4: Membuat data model
<br>Sebelum melakukan perpindahan halaman dari HomePage ke ItemPage, dibutuhkan proses pemodelan data. Pada desain mockup, dibutuhkan dua informasi yaitu nama dan harga. Untuk menangani hal ini, buatlah sebuah file dengan nama item.dart dan letakkan pada folder models. Pada file ini didefinisikan pemodelan data yang dibutuhkan. Ilustrasi kode yang dibutuhkan, dapat anda lihat pada potongan kode berikut.
<p align="center"><img src="./images/praktikum05/04.png"  width="400"/></p>
<br>Langkah 5: Lengkapi kode di class HomePage
<br>Pada halaman HomePage terdapat ListView widget. Sumber data ListView diambil dari model List dari object Item. Gambaran kode yang dibutuhkan untuk melakukan definisi model dapat anda lihat sebagai berikut.
<p align="center"><img src="./images/praktikum05/05.png"  width="400"/></p>
<br>Langkah 6: Membuat ListView dan itemBuilder
<br>Untuk menampilkan ListView pada praktikum ini digunakan itemBuilder. Data diambil dari definisi model yang telah dibuat sebelumnya. Untuk menunjukkan batas data satu dan berikutnya digunakan widget Card. Kode yang telah umum pada bagian ini tidak ditampilkan. Gambaran kode yang dibutuhkan dapat anda lihat sebagai berikut.
<p align="center"><img src="./images/praktikum05/06.png"  width="400"/></p>
<br>Jalankan aplikasi pada emulator atau pada device anda.
<br>Langkah 7: Menambahkan aksi pada ListView
<br>Item pada ListView saat ini ketika ditekan masih belum memberikan aksi tertentu. Untuk menambahkan aksi pada ListView dapat digunakan widget InkWell atau GestureDetector. Perbedaan utamanya InkWell merupakan material widget yang memberikan efek ketika ditekan. Sedangkan GestureDetector bersifat umum dan bisa juga digunakan untuk gesture lain selain sentuhan. Pada praktikum ini akan digunakan widget InkWell.
<br>Untuk menambahkan sentuhan, letakkan cursor pada widget pembuka Card. Kemudian gunakan shortcut quick fix dari VSCode (Ctrl + . pada Windows atau Cmd + . pada MacOS). Sorot menu wrap with widget... Ubah nilai widget menjadi InkWell serta tambahkan named argument onTap yang berisi fungsi untuk berpindah ke halaman ItemPage. Ilustrasi potongan kode dapat anda lihat pada potongan berikut.
<p align="center"><img src="./images/praktikum05/07.png"  width="400"/></p>
<br>Jalankan aplikasi kembali dan pastikan ListView dapat disentuh dan berpindah ke halaman berikutnya. Periksa kembali jika terdapat kesalahan.
<p align="center">
  <video width="400" controls>
    <source src="./images/praktikum05/08.mp4" type="video/mp4">
  </video>
</p>
