import 'dart:ffi';

void main(List<String> args) {
  print("main Start");

  String name = 'ybchar';
  bool alive = true;
  int age = 28;
  // 홀수, 짝수 여부 체크
  print(age.isOdd);
  double money = 69.99;

  // num 자료형을 사용하면 그 숫자는 integer 일 수도 있고, double일 수도 있다.
  num x = 12;
  x = 14.89;

  // var numbers = [1, 2, 3, 4];

  // collection if
  var giveMeFive = true;

  List<int> numberInts = [
    1,
    2,
    3,
    4,
    // giveMeFive가 true이면 5를 추가 아니면 no
    if (giveMeFive) 5,
  ];

  numberInts.add(6);

  int first = numberInts.first;
  int last = numberInts.last;

  print(numberInts);
  print(first);
  print(last);

  // collection for
}
