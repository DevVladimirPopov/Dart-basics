import 'dart:math';

void main() {
// ДЗ 2.1 вычисления НОД и НОК целых чисел.
  print("ДЗ ---->  № 2.1");

  int fst = 340;
  int sec = 33;

  print('1е число = $fst / 2е Число = $sec');
  print('Наибольший общий делитель НОД = ${nod(fst, sec)}');
  print('Наименьшее общее кратное НОК = ${nok(fst, sec)}');
  print('*' * 50);
// -----------------------------------------

// 2.2 Преобразования целых чисел из десятичной
// системы в двоичную и обратно.
  print("ДЗ ---->  № 2.2");

  int dig1 = 455;
  String str1 = "1111100111";

  print("Число $dig1  == ${NumberToBinary(dig1)}(2й системе)");
  print("Число $str1 == ${binaryToNumber(str1)}}(10й системе)");

  print('*' * 50);
// -----------------------------------------

// 2.3 Реализуйте метод, который принимает строку слов, разделённых пробелами.
//Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
  print("ДЗ ---->  № 2.3");
  str1 = "Тестовая строка 5 чиcла тут есть 20 наверное )";
  print(str1);
  print('Числа разделенные пробелами = ${tryParseStr(str1)}');
  print('*' * 50);
// -----------------------------------------

// 2.4 Реализуйте метод, который принимает строку слов, разделённых пробелами.
//Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
  print("ДЗ ---->  № 2.4");
  List<String> str =
      "Есть коллекция слов TEST Реализуйте метод возвращающий Map Данный TEST Map должен соотносить слово TEST и количество его вхождений в данную коллекцию"
          .trim()
          .split(" ");
  print("Строка на входе - $str");
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

/* 2.6 Реализуйте класс Point, который описывает точку в трёхмерном пространстве. 
У данного класса реализуйте метод distanceTo(Point another), 
который возвращает расстояние от данной точки до точки в параметре. 
Реализуйте factory-конструкторы для данного класса, возвращающие начало 
координат.
*/
  print("ДЗ ---->  № 2.6");

  Point p1 = Point(5, 5, 60);
  var distance = p1.distanceTo(20, 30, 70);
  print("Дистанция между точками = $distance");
  // Point Point111 = Point.start();
  Point Point000 = Point.zero();
  var distance2 = Point000.distanceTo(50, 60, 80);
  print("Дистанция от Фактори поинт 000 до заданной точки = $distance2");
  print('*' * 50);

// -----------------------------------------

/* 2.7 Реализуйте метод, который вычисляет корень любой заданной степени из числа. 
Реализуйте данный метод как extension-метод для num.  
В случае когда значение вернуть невозможно, необходимо бросать исключение с 
описанием ошибки.
*/
  print("ДЗ ---->  № 2.7");
  double number1 = 190;
  int root = 7;
  var rootResult = RootFrom.rootX(number1, root);
  var testResult = pow(number1, 1 / root);
  print(
      'Корень степени $root из числа $number1 = $rootResult  = $testResult (проверка)');
  print('*' * 50);

// -----------------------------------------

/* 2.8  - Создайте класс User, у которого есть поле email. 
- Реализуйте два наследника данного класса AdminUser и GeneralUser. 
- Реализуйте mixin над классом User, у которого будет метод getMailSystem, 
который возвращает значение из email, которое находится после @. 
Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru. 
Используйте данный миксин на AdminUser. 
- Далее реализуйте класс UserManager<T extends User>, у которого будет 
храниться список пользователей и будут методы добавления или удаления их. 
- Также в UserManager реализуйте метод, который выведет почту всех пользователей, 
однако если пользователь admin, будет выведено значение после @. 
- Проверьте реализованные методы на практике.
*/
  print("ДЗ ---->  № 2.8");
// + Админ
  AdminUser newAdmin = AdminUser(email: "admin_test@gmail.com");
  UserManager userM = UserManager<User>(newAdmin);
  userM.addEmail();
// + юзер 1
  GeneralUser newUser = GeneralUser(email: "user_test@gmail.com");
  userM = UserManager<User>(newUser);
  userM.addEmail();
// + юзер 2
  GeneralUser newUser2 = GeneralUser(email: "user22_test@gmail.com");
  userM = UserManager<User>(newUser2);
  userM.addEmail();

// принт список юзерей
  userM.printUsers();
// Удаляем юзера 1
  userM = UserManager<User>(newUser);
  userM.delMail();
// принт список юзерей
  userM.printUsers();

  print('-- DONE!!! --' * 7);

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

// Класс точка
class Point {
  int x;
  int y;
  int z;
  var result;
  num summ = 0;
  String res = "";
  Point(this.x, this.y, this.z);

  factory Point.start() {
    return Point(1, 1, 1);
  }

  factory Point.zero() {
    return Point(0, 0, 0);
  }

// дистанция к точке
  distanceTo(int x2, int y2, int z2) {
    summ = pow((x - x2), 2) + pow((y - y2), 2) + pow((z - z2), 2);
    result = pow(summ, 0.5).toStringAsFixed(3);
    return result;
  }
}

// Корень из числа
class RootFrom {
  double number;
  int rootDeg;
  RootFrom(this.number, this.rootDeg);

  static rootX(number, rootDeg) {
    double eps = 0.00001;
    int count = 1;
    double root = number / rootDeg;
    var rn = number;
    while ((root - rn).abs() > eps) {
      rn = number;
      for (int i = 1; i < rootDeg; i = i + 1) {
        rn = rn / root;
      }
      root = 0.5 * (rn + root);
      count += 1;
      if (count > 10000000) {
        throw 'Кол-во итераций > 10 Млн. STOP!';
      }
    }
    print("Кол-во итераций = $count");
    return root;
  }
}

// Супер класс юзер
class User {
  String email;
  User({required this.email});
  set setEmail(email) => email;
}

// Подкласс AdminUser
class AdminUser extends User with MailSystem {
  AdminUser({required super.email});
  String userType = "Admin";
}

// Подкласс GeneralUser
class GeneralUser extends User {
  GeneralUser({required super.email});
  String userType = "User";
}

// Миксин обрезающий домен
mixin MailSystem on User {
  getMailSystem() {
    String result = email.substring(
      email.indexOf('@'),
    );
    return result;
  }
}

// Т класс список юзерей
class UserManager<T extends User> {
  var user;
  static Map usersList = {};
  UserManager(this.user);

  void addEmail() {
    if (user.userType == "Admin") {
      var domen = "*****" + user.getMailSystem();
      usersList.addAll({user.email: domen});
      print('Добавили Админа --> ${domen}');
    } else {
      usersList.addAll({user.email: user.email});
      print('Добавили Юзера --> ${user.email}');
    }
  }

  void printUsers() {
    print('Вывели список пользователей --> ${usersList.values}');
  }

  void delMail() {
    usersList.remove(user.email);

    print('Удаляем Юзера--> ${user.email}');
  }
}
