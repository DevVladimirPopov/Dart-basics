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
  var result = tryParseStr("Тестовая строка 5 чиcла тут есть 20 наверное )");
  print('Числа разделенные пробелами в исходной строке = $result');
  print('*' * 50);
// -----------------------------------------

// 2.4 Реализуйте метод, который принимает строку слов, разделённых пробелами.
//Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
  print("ДЗ ---->  № 2.4");
  List<String> str =
      "Есть коллекция слов TEST Реализуйте метод возвращающий Map Данный TEST Map должен соотносить слово TEST и количество его вхождений в данную коллекцию"
          .trim()
          .split(" ");

  var vocab = listToMap(str);
  print("Результат словарь = $vocab");
  print('*' * 50);
// -----------------------------------------

/* 2.5 Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого. 
Реализуйте метод, возвращающий цифры без повторений, которые встречаются в 
данной строке. Однако цифры встречаются в виде английских слов от zero до nine. 
Например, в результате строки ‘one, two, zero, zero’ мы получим следующий 
результат: [1, 2, 0]. Если в строке есть слова, не являющиеся цифрами от 0 до 9, 
пропускайте их.
*/
  print("ДЗ ---->  № 2.5");
  str =
      "СТРОКА eight ДЛЯ ТЕСТА nine four 1 2 22  43 eight eight eight ! Специальная :)"
          .trim()
          .split(" ");
  print('Строка на входе - $str');
  Set<int> resultSet = listToSet(str);
  print('Список не повторяющихся цифр - $resultSet');
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

// Строку в список намбер.
tryParseStr(String input) {
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

// Преобразуем список в словарь с индикацией повторения слов
listToMap(List l) {
  var result = {};
  l.forEach((element) {
    if (!result.containsKey(element)) {
      result[element] = 1;
    } else {
      result[element] += 1;
    }
  });
  // print(result);
  return result;
}

// Преобразуем список в Сет с прогоном по словарю
listToSet(List l) {
  var listNum = [];
  Set<int> result = {};
  Map<String, String> vocab = {
    "one": '1',
    "two": '2',
    "three": '3',
    "four": '4',
    "five": '5',
    "six": '6',
    "seven": '7',
    "eight": '8',
    "nine": '9',
    "ten": '10'
  };
  // 1й прогон - заменяем текст на цифры
  l.forEach((element) {
    if (vocab.containsKey(element)) {
      listNum.add(vocab[element]);
    } else {
      listNum.add(element);
    }
  });
  var x;
  print('Строка преобразованная - $listNum');
  // Второй прогон в сет
  for (String c in listNum) {
    if (int.tryParse(c) != null) {
      x = int.parse(c);
      result.add(x);
    }
  }
  return result;
}
