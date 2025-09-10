import 'dart:io'; // Untuk input dan output

void main() {
  print("=================================");
  print("       Body Mass Index (BMI)     ");
  print("=================================\n");

  // Input berat badan
  stdout.write("Masukkan berat badan (kg): ");
  double berat = double.parse(stdin.readLineSync()!);

  // Input tinggi badan
  stdout.write("Masukkan tinggi badan (cm): ");
  double tinggiCm = double.parse(stdin.readLineSync()!);

  // Konversi tinggi cm -> meter
  double tinggiMeter = tinggiCm / 100;

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
  print("\n=================================");
  print("         Hasil Perhitungan       ");
  print("=================================");
  print("Berat Badan : ${berat.toStringAsFixed(1)} kg");
  print("Tinggi Badan: ${tinggiCm.toStringAsFixed(1)} cm");
  print("BMI         : ${bmi.toStringAsFixed(2)}");
  print("Kategori    : $kategori");
  print("=================================");
}
