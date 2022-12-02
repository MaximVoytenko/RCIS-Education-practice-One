
import 'package:rcis_ep_task_one1/rcis_ep_task_one1.dart' as rcis_ep_task_one1;
import 'dart:io';
import 'dart:convert';
import 'dart:async';

void main() async {
 
//  ЗАДАНИЕ 1
  // print("\n");

  // String workInput = "";
  // String workInput2 = "";

  // bool isNumber = false;
  // String nums = "";
  // List<int> lots = [];
  // int i = 1;

  // String resultTicket = "";
  // int countWinLot = 0;

  // List<int> winLot = [];
  // int n = 0;
  // Map<int, List<int>> tickets = {};

  // File out = File('output.txt');

  // File file = File('input.txt');
  // Stream<String> lines = file
  //     .openRead()
  //     .transform(utf8.decoder) 
  //     .transform(LineSplitter()); 

  // int countLines = 0;

  // try {
  //   await for (String line in lines) {
  //     if (countLines == 0) {
  //       line += " ";
  //       for (int i = 0; i < line.length; ++i) {
  //         if (line[i] != " ") {
  //           nums += line[i];
  //         } else {
  //           try {
  //             winLot.add(int.parse(nums));
  //             workInput += "$nums ";
  //           } catch (e) {
  //             stdout.write(
  //                 "Ошибка. Выйграшный лот \"$nums\" не является числом...\n");
  //           }
  //           nums = "";
  //           continue;
  //         }
  //       }
  //     }

  //     if (countLines == 1) {
  //       workInput = workInput.substring(0, workInput.length - 1);
  //       workInput += "\n";
  //       try {
  //         n = int.parse(line);
  //       } catch (e) {
  //         stdout.write("Ошибка. Количество билетов не является числом...\n");
  //       }
  //     }

  //     if (countLines >= 2) {
  //       line += " ";
  //       lots = [];
  //       for (int j = 0; j < line.length; ++j) {
  //         if (line[j] != " ") {
  //           isNumber = true;
  //         }

  //         if (line[j] != " " && isNumber == true) {
  //           nums += line[j];
  //         }

  //         if (line[j] == " " && isNumber == true) {
  //           try {
  //             lots.add(int.parse(nums));
  //             workInput2 += "$nums ";
  //           } catch (e) {
  //             stdout.write(
  //                 "Ошибка. В билете №${countLines - 1} Лот \"$nums\" не является числом\n");
  //           }
  //           nums = "";
  //           isNumber = false;
  //         }
  //       }
  //       tickets.addAll({i: lots});
  //       ++i;
  //       workInput2 += "\n";
  //     }
  //     ++countLines;
  //   }
  // } catch (e) {
  //   print('Error: $e\n');
  // }

  // if (countLines != n + 2) {
  //   print(
  //       "\nОшибка. Число билетов не совпадает с количеством билетов указанном в файле. Исправляем...");
  //   n = countLines - 2;
  // }

  // print("\nИсправляем ошибки в файле...");
  // print("\n...\n");

  // file = await File('input.txt').writeAsString("$workInput$n\n$workInput2");

  // print("Ошибки исправлены...");

  // for (int j = 1; j <= n; ++j) {
  //   for (int f = 0; f < tickets[j]!.length; ++f) {
  //     for (int k = 0; k < winLot.length; ++k) {
  //       if (tickets[j]![f] == winLot[k]) {
  //         ++countWinLot;
  //       }
  //     }
  //     if (countWinLot >= 3) {
  //       resultTicket += "Lucky\n";
  //       break;
  //     }
  //   }
  //   if (countWinLot < 3) {
  //     resultTicket += "Unlucky\n";
  //   }
  //   countWinLot = 0;
  // }

  // out = await File('output.txt').writeAsString(resultTicket);

  // print("\nПрограмма завершилась успешно...\n");
// }


// ЗАДАНИЕ 2
//   String nums = '';
//   String otv = '';
//   File('nums.txt').readAsString().then((String a) {
//     for (int k = 0; k < a.length; k++) {
//       for (int i = 0; i < a[k].length; i++) {
//         if (a[k][i] != " ") {
//           nums += a[k][i];
//         }
//         if (a[k][i] == " ") {
//           try {
//             if (int.parse(nums) % 2 != 0) {
//               otv += "$nums ";
//             }
//             nums = "";
//           } catch (e) {
//             print('это не число!');
//             continue;
//           }
//         }
//       }
//       var zxc1 = File('nums.txt').writeAsString(otv);
//     }
//   });
// }

// ЗАДАНИЕ 3
//  List<int> height = [1, 8, 6, 2, 5, 4, 8, 3, 7];
//   ne_main(height);
// }

// void ne_main(List<int> height) {
//   int left = 0;
//   int right = height.length - 1;
//   int max = 0;

//   while (left != right) {
//     int distance = (left - right).abs();
//     int area = 0;
//     if (height[left] < height[right]) {
//       area = height[left] * distance;
//       left++;
//     } else {
//       area = height[right] * distance;
//       right--;
//     }

//     if (area > max) {
//       max = area;
//     }
//   }
//   print(max);
// }
