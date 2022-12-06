import 'dart:ffi';

void main(List<String> args) {
  print("main Start");

  // String name = 'ybchar';
  bool alive = true;
  // int age = 28;
  // 홀수, 짝수 여부 체크
  // print(age.isOdd);
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

  /**  String interpolation
   * text에 변수를 추가하는 방법
   * 
   */
  var name = 'ybchar';
  var age = 25;
  var greeting =
      "Hello everyone, my name is ${name} and I'm ${age + 2}, nice to meet you!";

  print(greeting);

  // collection for
  var oldFriends = ['nico', 'lynn', 'ybchar'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "💖 $friend",
  ];

  print(newFriends);

  // map
  var player = {
    'name': 'ybchar',
    'xp': '19.99',
    'superpower': false,
  };

  Map<int, bool> typePlayer = {
    1: true,
    2: false,
    3: true,
  };

  // List Map
  Map<List<int>, bool> listMap = {
    [1, 2, 3, 4]: true,
    [25, 213, 3, 30]: false,
  };

  List<Map<String, Object>> players = [
    {'name': 'ybchar', 'xp': 19.21},
    {'name': 'ybchar', 'xp': 19.45124}
  ];
  // Map에서도 script 언어처럼 map 함수인 keys, values가 가능하다.

  // Set
  // Set에 포함된 item들은 모두 unique하다.
  var numbers = {1, 2, 3, 4};
  Set<int> numberSet = {1, 2, 34, 5};

  numberSet.add(1);
  numberSet.add(2);
  numberSet.add(3);
  numberSet.add(4);
  numberSet.add(5);

  print(numberSet);
}
