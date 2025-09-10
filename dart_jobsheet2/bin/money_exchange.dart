import 'dart:io';

void main() {
  // Kurs sederhana (dummy rate per 1 mata uang asing ke Rupiah)
  const double kursUSD = 15500;  // 1 USD = Rp15.500
  const double kursEUR = 17000;  // 1 EUR = Rp17.000
  const double kursSGD = 11500;  // 1 SGD = Rp11.500
  const double kursCHF = 17500;  // 1 CHF = Rp17.500
  const double kursCNY = 2200;   // 1 CNY = Rp2.200

  print("=== Kalkulator Konversi Mata Uang ===");
  print("1. Rupiah (IDR)");
  print("2. Dollar Amerika (USD)");
  print("3. Euro (EUR)");
  print("4. Dollar Singapura (SGD)");
  print("5. Franc Swiss (CHF)");
  print("6. Yuan China (CNY)");

  // Input mata uang asal
  stdout.write("Pilih mata uang asal (1-6): ");
  int asal = int.parse(stdin.readLineSync()!); // Input pilihan mata uang asal

  // Input jumlah uang
  stdout.write("Masukkan jumlah uang: ");
  double jumlah = double.parse(stdin.readLineSync()!); // Input jumlah uang

  // Input mata uang tujuan
  stdout.write("Pilih mata uang tujuan (1-6): ");
  int tujuan = int.parse(stdin.readLineSync()!); // Input pilihan mata uang tujuan

  // Konversi ke Rupiah sebagai perantara
  double dalamRupiah; // Jumlah dalam Rupiah
  switch (asal) {
    case 1: dalamRupiah = jumlah; break; // IDR
    case 2: dalamRupiah = jumlah * kursUSD; break; // USD -> IDR
    case 3: dalamRupiah = jumlah * kursEUR; break; // EUR -> IDR
    case 4: dalamRupiah = jumlah * kursSGD; break; // SGD -> IDR
    case 5: dalamRupiah = jumlah * kursCHF; break; // CHF -> IDR
    case 6: dalamRupiah = jumlah * kursCNY; break; // CNY -> IDR
    default: 
      print("Pilihan asal tidak valid."); 
      return;
  }

  // Konversi dari Rupiah ke mata uang tujuan
  double hasil;
  String simbol;
  switch (tujuan) { // Tujuan konversi
    case 1: hasil = dalamRupiah; simbol = "Rp"; break;
    case 2: hasil = dalamRupiah / kursUSD; simbol = "\$"; break;
    case 3: hasil = dalamRupiah / kursEUR; simbol = "€"; break;
    case 4: hasil = dalamRupiah / kursSGD; simbol = "S\$"; break;
    case 5: hasil = dalamRupiah / kursCHF; simbol = "CHF"; break;
    case 6: hasil = dalamRupiah / kursCNY; simbol = "¥"; break;
    default: 
      print("Pilihan tujuan tidak valid."); 
      return;
  }

  print("\n=== Hasil Konversi ===");
  print("Jumlah awal : $jumlah"); // Menampilkan jumlah awal
  print("Hasil akhir : $simbol${hasil.toStringAsFixed(2)}"); // Menampilkan hasil akhir dengan 2 desimal
}
