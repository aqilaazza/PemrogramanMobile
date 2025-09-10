import 'dart:io'; // Untuk input dan output

void main() {
  // Input berat badan
  stdout.write("Masukkan berat badan (kg): "); // Prompt input
  double berat = double.parse(stdin.readLineSync()!); // Baca input dan konversi ke double

  // Input tinggi badan
  stdout.write("Masukkan tinggi badan (cm): "); // Prompt input
  double tinggiCm = double.parse(stdin.readLineSync()!); // Baca input dan konversi ke double

  // Konversi tinggi cm -> meter
  double tinggiMeter = tinggiCm / 100; // 1 meter = 100 cm

  // Hitung BMI
  double bmi = berat / (tinggiMeter * tinggiMeter); 

  // Tentukan kategori
  String kategori;
  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 24.9) {
    kategori = "Normal";
  } else if (bmi < 29.9) {
    kategori = "Gemuk (Overweight)";
  } else {
    kategori = "Obesitas";
  }

  // Tampilkan hasil
  print("\n=== Hasil Perhitungan BMI ===");
  print("Berat Badan : $berat kg");
  print("Tinggi Badan: $tinggiCm cm");
  print("BMI         : ${bmi.toStringAsFixed(2)}");
  print("Kategori    : $kategori");
}