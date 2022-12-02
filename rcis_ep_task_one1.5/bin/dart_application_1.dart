import 'package:dart_application_1/dart_application_1.dart'as dart_application_1;
import 'dart:io';
import 'dart:core';

// 1.5

// ZADANIE 1
void main() {
  List<int> num = [];
  List<String> input = File("numsTask1.txt").readAsLinesSync();
  for (var h in input) {
    input = h.split(' ');
  }
  try {
    num = input.map(int.parse).toList();
  } catch (e) {
    print('Введено не число');
    return;
  }
  int min = num[0], index = 0;

  for (int i = 0; i < num.length; i++) {
    if (num[i] < min) {
      min = num[i];
      index = i;
    }
  }
  print('Минимальный элемент $min');
  int prois = 1;
  for (int i = index + 1; i < num.length; i++) {
    prois *= num[i];
  }
  print('Произведение $prois ');
}

// ZADANIE 2
void main() {
  List<double> num = [];
  List<String> input = File("numsTask2.txt").readAsLinesSync();
  try {
    for (var h in input) {
      input = h.split(';');
    }
    try {
      num = input.map(double.parse).toList();
      // return;

      double a = 0;
      for (var i = 0; i < num.length; i++) {
        for (var j = 0; j < num.length - i - 1; ++j) {
          if (num[j] > num[j + 1]) {
            a = num[j];
            num[j] = num[j + 1];
            num[j + 1] = a;
          }
        }
      }
      String res = num.toString();
      var output = File('numsTask2.txt').writeAsString(res);
    } catch (e) {
      print('Введено не число');
      print(e);
    }
  } catch (e) {
    print("Файл отсутствует. Программа завершена");
  }
}

// ZADANIE 3
void main() {
  List<int> num = [];
  List<String> input = File("numsTask3.txt").readAsLinesSync();
  for (var h in input) {
    input = h.split(' ');
  }
  try {
    num = input.map(int.parse).toList();
  } catch (e) {
    print('Введено не число');
    return;
  }
  int min = num[0];
  int index = 0;

  for (int i = 0; i < num.length; i++) {
    if (num[i] < min) {
      min = num[i];
      index = i;
    }
  }
  print('Минимальный элемент $min');
  double avg = 0;
  for (int i = 0; i < index; i++) {
    avg += num[i];
  }
  avg /= index;
  print(avg);
}


// ZADANIE 4
void main() {
  List<int> num = [];
  List<String> input = File("numsTask4.txt").readAsLinesSync();
  for (var h in input) {
    input = h.split(' ');
  }
  num = input.map(int.parse).toList();
  int max = num[0];
  int index = 0;
  for (int i = 1; i < num.length; i++) {
    if (num[i] > max) {
      max = num[i];
      index = i;
    }
  }
  int sum = 0;
  for (int i = 0; i < num.length; i++) {
    if (num[i] == (max - 1)) {
      sum += num[i];
    }
  }
  print('$sum - сумма чисел.');
}


// ZADANIE 5
void main() {
  List<int> num = [];
  List<String> input = File("numsTask5.txt").readAsLinesSync();
  for (var h in input) {
    input = h.split(' ');
  }
  try {
    num = input.map(int.parse).toList();
  } catch (e) {
    print('Введено не число');
    return;
  }
  int min = num[0];
  int max = num[0];
  int indexmin = 0;
  int indexmax = 0;
  int index = 0;

  for (int i = 1; i < num.length; i++) {
    if (num[i] < min) {
      min = num[i];
      indexmin = i;
    }
  }
  for (int i = 0; i < num.length; i++) {
    if (num[i] > max) {
      max = num[i];
      indexmax = i;
    }
  }
  print('Минимальный элемент $min');
  print('Максимальный элемент $max');

  int avg = 0;
  if (indexmin < indexmax) {
    for (int i = indexmin + 1; i < indexmax; i++) {
      avg += num[i];
      index++;
    }
  } else {
    for (int i = indexmax; i < indexmin; i++) {
      avg += num[i];
      index++;
    }
  }
  print(avg / index);
}