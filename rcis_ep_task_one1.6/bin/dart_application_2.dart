import 'package:dart_application_2/dart_application_2.dart'as dart_application_2;
import 'dart:io';
import 'dart:core';
import 'dart:async';
import 'dart:convert';
import 'dart:math';

// 1.6

// ZADANIE 1
// void main() {
  List<String> words = File('numsTask1.txt').readAsLinesSync();
  for (var h in words) {
    words = h.split(' ');
  }
  int count = 0;
  List<String> result = [];
  for (int i = 0; i < words.length; i++) {
    count = words[i].length;
    if (count % 2 != 0) {
      result.add(words[i]);
    }
  }
  print(result);
}

// ZADANIE 2
void main() async {
  final file = File('numsTask2.txt');
  String nums_txt = "";
  Stream<String> lines =
      file.openRead().transform(utf8.decoder).transform(LineSplitter());
  try {
    await for (var line in lines) {
      nums_txt += line;
      nums_txt += ' ';
    }
  } catch (e) {
    print('Error: $e');
  }
  String words = "";
  words += nums_txt;
  words += ' ';

  print(words);
}

ZADANIE 3
void main()  {
  stdout.write("введите число: ");
  int num = int.parse(stdin.readLineSync()!);
if  (num % 2 == 0 && num % 10 == 0){
  print('Число $num четное и кратно 10 - Подходит');
  }
else if(num % 2 == 0 && num % 10 != 0){
  print('Число $num четное но не кратно 10 - Не подходит');
}
else{
    print('Число $num не четное и не кратно 10 - Не подходит');
}
}

// ZADANIE 4
void main()  {
  List<int> nums = [];
  stdout.write('введите число A: ');
  int a = int.parse(stdin.readLineSync()!);
  while(1 != 0){
  stdout.write("введите число: ");
  int num = int.parse(stdin.readLineSync()!);
  if(num < 0){
    break;
  }else{
  nums.add(num);
  }
  }
  int sum = 0;
  for(int i = 0; i < nums.length; i++){
    if(nums[i] % a == 0){
      sum+= nums[i];
    }
  }
  print('сумма чисел кратных $a = $sum');
}


// ZADANIE 5
void main()  {
  stdout.write('введите n: ');
  int n = int.parse(stdin.readLineSync()!);
  stdout.write('введите m: ');
  int m = int.parse(stdin.readLineSync()!);
  List<List<int>> nums = List.generate(n, (index) => List.generate(m + 1, ((index) => Random().nextInt(2))));
  for(int i = 0; i < n; i++){
    int count = 0;
    for(int j = 0; j < m; j++){
      if(nums[i][j] == 1){
        count++;
      }
    }
    if(count % 2 != 0){
      nums[i][m] = 1;
    }else{
      nums[i][m] = 0;
    }
  }
  for(int i = 0; i < n; i++){
    for(int j = 0; j < m + 1; j++){
      stdout.write('${nums[i][j]} ');
    }
    print('');
  }
}


// ZADANIE 6
void main()  {
  List<double> positive = [];
  List<double> neggative = [];
  List<double> nums = List.generate(Random().nextInt(5) + 1, (index) => (Random().nextDouble() * (20) + -10));
  for(int i = 0; i< nums.length; i++){
    if(nums[i] < 0){
      neggative.add(nums[i]);
    }
    else{
      positive.add(nums[i]);
    }
  }
  print(nums);
  print('положительные числа - $positive');
  print('отрицательные числа - $neggative');
}
