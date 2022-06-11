void main() {
// ДЗ 2.1 вычисления НОД и НОК целых чисел.
  print("ДЗ ---->  № 2.1");

  int fst = 340;
  int sec = 33;

  num nod1 = nod(fst, sec);
  num nok1 = nok(fst, sec);

  print('1е число = $fst / 2е Число = $sec');
  print('Наибольший общий делитель НОД = $nod1');
  print('Наименьшее общее кратное НОК = $nok1');
  print('*' * 50);
// -----------------------------------------

// 2.2 Преобразования целых чисел из десятичной
// системы в двоичную и обратно.
  print("ДЗ ---->  № 2.2");

  int dig1 = 455;
  String str1 = "1111100111";

  var result1 = NumberToBinary(dig1);
  var result2 = binaryToNumber(str1);

  print("Число $dig1  == $result1 (2й системе)");
  print("Число $str1 == $result2 (10й системе)");

  print('*' * 50);
// -----------------------------------------

// 2.3 Реализуйте метод, который принимает строку слов, разделённых пробелами.
//Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
  print("ДЗ ---->  № 2.3");
  var result = tryParse("Тестовая строка 5 чиcла тут есть 20 наверное )");
  print('Числа разделенные пробелами в исходной строке = $result');
  print('*' * 50);
// -----------------------------------------
}

// НОД — это наибольший общий делитель!
nod(int a, int b) {
  if (a % b == 0) {
    return b;
  }
  if (b % a == 0) {
    return a;
  }
  if (a > b) {
    return a % b;
  }
  if (b > a) {
    return b % a;
  }
}

//НОК — это наименьшее общее кратное.
nok(a, b) {
  int y = ((a * b) / nod(a, b)).round();
  return y;
}

// Преобразования целых чисел из десятичной системы в двоичную.
int binaryToNumber(digits) => int.parse(digits, radix: 2);

// Преобразования целых чисел из двоичной системы в десятичную.
String NumberToBinary(digits) => digits.toRadixString(2);

/*
searchNum(String str) {
  List<num> result = [1, 2];
  List<String> list = str.split('');
  print(list);

  for (String c in list) {
    if (c == null) {
      print("$c = число");
    }
  }
  return result;
}
*/
tryParse(String input) {
  List<String> source = input.trim().split(" ");
  List<int> result = [];
  int x = 0;
  for (String c in source) {
    if (int.tryParse(c) != null) {
      x = int.parse(c);
      result.add(x);
    }
  }
  return result;
}
