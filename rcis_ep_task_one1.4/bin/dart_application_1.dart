import 'package:dart_application_1/dart_application_1.dart'as dart_application_1;
import 'dart:io';
import 'dart:core';

// 1.4

//  1 ZADANIE
void main(List<String> arguments) {
  stdout.write('Введите число: ');
  int n = int.parse(stdin.readLineSync()!);
  int a = 1;
  for (int i = 1; i <= n; i++) {
    if ((i % 3) == 0) {
      a *= i;
    }
  }
  print(a);
}

// 2 ZADANIE
void main() {
  List<double> num = [];
  List<String> input = File("numsTask2.txt").readAsLinesSync();
  for (var h in input) {
    input = h.split(';');
  }
  try {
    num = input.map(double.parse).toList();
  } catch (e) {
    print('Введено не число');
  }
  double c = 0;
  for (int i = 0; i < num.length; i++) {
    if (num[i] > 0) {
      c += num[i];
    }
    if (num[i] == 0) {
      break;
    }
  }
  print(c);
}

// 3 ZADANIE
void main() {
  List<int> num = [];
  List<String> input = File("numsTask3.txt").readAsLinesSync();
  for (var h in input) {
    input = h.split(',');
  }
  try {
    num = input.map(int.parse).toList();
  } catch (e) {
    print('Введено не число');
  }
  int v = num[0];
  int m = num[0];
  for (var i = 1; i < num.length; i++) {
    if (num[i] == 0) {
      break;
    }
    if (v < num[i]) {
      v = num[i];
    }
    if (m > num[i]) {
      m = num[i];
    }
  }
  print('$v - максимальный элемент');
  print('$m - минимальный элемент');
  var ot = v / m;
  print('$v больше $m в $ot раз');
}

// ZADANIE 4
void main(List<String> arguments) {
  List<String> input = File("numsTask4.txt").readAsLinesSync();
  for (var h in input) {
    input = h.split(' ');
  }
  int v = 0;
  List<int> num = input.map(int.parse).toList();
  for (var i = 0; i < num.length - 1; i++) {
    if (num[i] == num[i + 1]) {
      v++;
    }
  }
  print('Количество одинаковых рядом стоящих чисел $v');
}

// ZADANIE 5
void main(List<String> args) {
  print('введите число A');
  int a = int.parse(stdin.readLineSync()!);
  print('введите число B');
  int b = int.parse(stdin.readLineSync()!);
  if ((a <= 3) && (b <= 4) && (a >= -1) && (b >= -2)) {
    print('Точка $a и $b пренадлежит координатам заштрихованной области');
  } else {
    print('Точка $a и $b за координатой');
  // }
}

// ZADANIE 6
void main(List<String> args) {
  stdout.write('введите число А: ');
  double a = double.parse(stdin.readLineSync()!);
  stdout.write('введите число В: ');
  double b = double.parse(stdin.readLineSync()!);
  double i = (-2 - a) * (2 - -3) - (0 - -2) * (-3 - b);
  double j = (0 - a) * (-3 - 2) - (-2 - 2) * (-3 - b);
  double c = (2 - a) * (-3 - 3) - (-2 - 2) * (-3 - b);
  if ((i >= 0 && j >= 0 && c >= 0) || (i <= 0 && j <= 0 && c <= 0)) {
    print('Точка пренадлежит координатам заштрихованной области: ');
  } else {
    print('Точка за координатой');
  }
}
