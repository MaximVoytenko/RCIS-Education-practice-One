import 'package:rcis_ep_task_one2/rcis_ep_task_one2.dart' as rcis_ep_task_one2;
import 'dart:io';
import 'dart:convert';
import 'dart:async';
import 'dart:math';

void main(){
  
  // ЗАДАНИЕ 1
  int a = 103;
  List<int> mass = List.filled(99, 0);
  for (int i = 0; i < mass.length; i++) {
    mass[i] = a - 3;
    a -= 3;
  }
  print(mass);
}

// // ЗАДАНИЕ 2
//   int a = -1;
//   List<int> mass = List.filled(50, 0);
//   for (int i = 0; i < mass.length; i++) {
//     mass[i] = a + 2;
//     a += 2;
//   }
//   print(mass);
// }

// // ЗАДАНИЕ 3
//   int a = 1;
//   List<List<int>> nums = List.generate(10, (i) => List.generate(10, (j) => 0));
//   for (int i = 0; i < nums.length; i++) {
//     stdout.write('[');
//     for (int j = 0; j < nums.length; j++) {
//       if (j == 0 || i == 0) {
//         nums[i][j] = 1;
//       } else {
//         nums[i][j] = nums[i - 1][j] + nums[i][j - 1];
//       }
//       stdout.write('${nums[i][j]}\t ');
//     }
//     stdout.write(']');
//     stdout.write('\n');
//   }
// }

// ЗАДАНИЕ 4
//   List<List<int>> temperature = List.generate(
//       12, (_) => List.generate(30, (_) => Random().nextInt(60) - 30));
//   List avgTemperature(List<List<int>> temperature) {
//     List<int> mass = List.filled(12, 0);
//     for (int i = 1; i < 12; i++) {
//       for (int j = 1; j < 30; j++) {
//         mass[i] = temperature[i][j] + mass[i];
//       }
//       mass[i] = mass[i] ~/ 30;
//     }
//     return mass;
//   }

//   print('Средняя температура: ${avgTemperature(temperature)} ');
//   print('Сортировка: ${avgTemperature(temperature)..sort}');
// }

// // ЗАДАНИЕ 5
//   int i = 0;
//   List<List<int>> temperature = List.generate(
//       12, (i) => List.generate((30), (j) => Random().nextInt(24) - 5));
//   var map = {
//     'Январь': temperature[i],
//     "Февраль": temperature[i + 1],
//     'Март': temperature[i + 2],
//     'Апрель': temperature[i + 3],
//     'Май': temperature[i + 4],
//     'Июнь': temperature[i + 5],
//     'Июль': temperature[i + 6],
//     'Август': temperature[i + 7],
//     'Сентябрь': temperature[i + 8],
//     'Октябрь': temperature[i + 9],
//     'Ноябрь': temperature[i + 10],
//     'Декабрь': temperature[i + 11]
//   };
//   Avg(map, temperature);
// }

// Map Avg(map, res) {
//   var otv = {
//     'Январь': 0,
//     "Февраль": 0,
//     'Март': 0,
//     'Апрель': 0,
//     'Май': 0,
//     'Июнь': 0,
//     'Июль': 0,
//     'Август': 0,
//     'Сентябрь': 0,
//     'Октябрь': 0,
//     'Ноябрь': 0,
//     'Декабрь': 0
//   };
//   double avg = 0;
//   for (var key in map.keys) {
//     double sum = 0;
//     for (int i = 0; i < 30; i++) {
//       sum += map[key]![i];
//     }
//     otv[key] = (sum ~/ 30);
//   }
//   for (var item in otv.entries) {
//     print("${item.key} - ${item.value}");
//   }
//   return otv;
// }

