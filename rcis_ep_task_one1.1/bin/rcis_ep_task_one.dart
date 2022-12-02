// import 'package:rcis_ep_task_one/rcis_ep_task_one.dart' as rcis_ep_task_one;

// import 'dart:io';
// import 'dart:convert';
// import 'dart:async';
// import 'dart:math';

// void main() {

// //   ЗАДАНИЕ 1
//   List<int> nums = List.generate(10, (i) => Random().nextInt(100) + 0);
//   int min = 0;
//   for (int i = 1; i < nums.length; i++) {
//     if (nums[i] < nums[min]) {
//       min = i;
//     }
//   }
//   print(nums);
//   print('Число - ${nums[min]}');
//   print('Индекс числа - $min');
// }

// Задание 2
//   List<int> mass = [];
//   int num = 1;
//   int sum = 0;
//   int proiz = 1;
//   try {
//     while (num != 0) {
//       stdout.write('Введите число в массив: ');
//       int a = int.parse(stdin.readLineSync()!);
//       mass.add(a);
//       if (a == 0) {
//         break;
//       } else {
//         sum += a;
//         proiz *= a;
//       }
//     }
//     double avg = sum / (mass.length - 1);
//     print(mass);
//     print('$sum - Сумма \n$proiz - Произведение \n$avg - Среднее');
//   } catch (exception) {
//     print('Вы не ввели число! ');
//   } finally {
//     print('Завершение работы.');
//   }
// }

//  ЗАДАНИЕ 3
//   List<String> mass = [];
//   int num = 1;
//   int max = 0;
//   int min = 0;
//   try {
//     while (num != 0) {
//       stdout.write('Введите число в массив: ');
//       String a = stdin.readLineSync()!;
//       if (a == '') {
//         break;
//       }
//       mass.add(a);
//     }
//     for (int i = 1; i < mass.length; ++i) {
//       if (mass[i].length < mass[min].length) {
//         min = i;
//       }
//       if (mass[i].length > mass[max].length) {
//         max = i;
//       }
//     }
//     print(mass);
//     print(
//         '${mass[min]}- Самый короткий элемент \n${mass[max]} - Самый длинный элемент');
//   } finally {
//     print('Завершение работы.');
//   }
// }

// ЗАДАНИЕ 4

//   try {
//     stdout.write('введите минимальный число: ');
//     int min = int.parse(stdin.readLineSync()!);
//     stdout.write('введите максимальное число: ');
//     int max = int.parse(stdin.readLineSync()!);
//     List<int> nums = randtoMass(min, max);
//     stdout.write('[');
//     for (int i = 0; i < nums.length; i++) {
//       stdout.write('${nums[i]} ');
//     }
//     stdout.write(']');
//   } catch (e) {
//     print('вы ввели не число!!!');
//   }
// }

// List<int> randtoMass(int min, int max) {
//   List<int> rand = List.generate(10, (i) => Random().nextInt(max - min) + min);
//   return rand;
// }

// Задание 5
//   List<String> mass = [];
//   stdout.write('Введите текст: ');
//   String a = stdin.readLineSync()!;
//   print('Start $a End');
//   int words = 1;
//   for (int i = 0; i < a.length; i++) {
//     if (a[i] == ' ') {
//       words++;
//     }
//     if (a == '') {
//       words -= 1;
//       break;
//     }
//   }
//   print('Столько слов вы написали: $words');
// }
