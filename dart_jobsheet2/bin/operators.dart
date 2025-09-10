import 'dart:io';

void main() {
  print("=====================================");
  print("      Demo Program Semua Operator     ");
  print("=====================================\n");

  // Input angka
  stdout.write("Masukkan angka pertama (a): ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan angka kedua (b): ");
  int b = int.parse(stdin.readLineSync()!);

  // 1. Operator Aritmatika
  print("\n========= Operator Aritmatika =========");
  print("a + b  = ${a + b}");
  print("a - b  = ${a - b}");
  print("a * b  = ${a * b}");
  print("a / b  = ${(a / b).toStringAsFixed(2)}");
  print("a % b  = ${a % b}");

  // 2. Operator Penugasan
  print("\n========= Operator Penugasan =========");
  int c = a;
  print("c = $c");
  c += b; print("c += b → $c");
  c -= b; print("c -= b → $c");
  c *= b; print("c *= b → $c");
  c ~/= b; print("c ~/= b → $c");
  c %= b; print("c %= b → $c");

  // 3. Operator Perbandingan
  print("\n========= Operator Perbandingan =========");
  print("a == b  → ${a == b}");
  print("a != b  → ${a != b}");
  print("a > b   → ${a > b}");
  print("a < b   → ${a < b}");
  print("a >= b  → ${a >= b}");
  print("a <= b  → ${a <= b}");

  // 4. Operator Logika
  print("\n========= Operator Logika =========");
  bool x = (a > 5);
  bool y = (b > 5);
  print("x = (a > 5) → $x");
  print("y = (b > 5) → $y");
  print("x && y  → ${x && y}");
  print("x || y  → ${x || y}");
  print("!x      → ${!x}");

  // 5. Increment & Decrement
  print("\n========= Increment & Decrement =========");
  int d = a;
  print("d = $d");
  print("d++   → ${d++} (setelahnya d = $d)");
  print("++d   → ${++d}");
  print("d--   → ${d--} (setelahnya d = $d)");
  print("--d   → ${--d}");

  // 6. Operator Ternary
  print("\n========= Operator Ternary =========");
  String hasil = (a > b) ? "a lebih besar dari b" : "a tidak lebih besar dari b";
  print("Hasil ternary: $hasil");

  // 7. Operator Bitwise
  print("\n========= Operator Bitwise =========");
  print("a & b   (AND)  → ${a & b}");
  print("a | b   (OR)   → ${a | b}");
  print("a ^ b   (XOR)  → ${a ^ b}");
  print("~a      (NOT)  → ${~a}");
  print("a << 1  (Left Shift)  → ${a << 1}");
  print("a >> 1  (Right Shift) → ${a >> 1}");

  print("\n=====================================");
  print("          Program Selesai             ");
  print("=====================================");
}
