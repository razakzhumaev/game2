import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // task1();
  // task2();
  // task3();
  // task4();
  search(10);
}

task1() {
  int randomNum = Random().nextInt(6);
  int randomNum2 = Random().nextInt(10);
  print(randomNum + randomNum2);
}

task2() {
  List<int> massive1 = [];
  for (int i = 0; i < Random().nextInt(10); i++) {
    massive1.add(Random().nextInt(20));
  }
  print(massive1);
}

task3() {
  List<int> massive = [];
  for (int i = 0; i < 10; i++) {
    massive.add(Random().nextInt(6));
  }
  print(massive);
  print('Введите число x : ');
  int x = int.parse(stdin.readLineSync()!);

  List<int> indexes = [];
  for (int i = 0; i < 10; i++) {
    if (massive[i] == x) {
      indexes.add(i);
    }
  }
  print(indexes);
}

task4() {
  List<int> massive3 = [];
  int min = 50;
  int max = 100;
  for (int i = 0; i < 20; i++) {
    massive3.add(Random().nextInt(max - min) + min);
  }
  bool sameValues = false;

  for (int i = 0; i < massive3.length - 1; i++) {
    if (massive3[i] == massive3[i + 1]) {
      sameValues = true;
      break;
    }
  }
  print(massive3);
  print(sameValues);
}

void search(int myNumber) {
  int count = 0;

  for (int i = Random().nextInt(100); i != myNumber; count++) {
    print(i);
    i = Random().nextInt(100);
  }

  print('Компьютер угадал число $myNumber за $count шагов.');
}
