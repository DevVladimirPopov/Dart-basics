void main() {
  print("ДЗ ---->  № 2.1");
  print('-' * 50);
  // ДЗ 2.1 вычисления НОД и НОК целых чисел.
  int fst = 366;
  int sec = 33;
  num nod1 = nod(fst, sec);
  num nok1 = nok(fst, sec);
  print('1е число= $fst / 2е Число= $sec');
  print('Наибольший общий делитель НОД =$nod1');
  print('Наименьшее общее кратное НОК =$nok1');
  print('-' * 50);

  /// -----------------------------------------
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
