// fat arrow syntax: 곧바로 return 한다는 뜻
// String sayHello(String name) =>
//     // void 는 아무것도 return 하지 않는다.
//     "Hello $name nice to meet you!";

num plus(num a, num b) => a + b;
// String sayHello(String name) {
//   // void 는 아무것도 return 하지 않는다.
//   return "Hello $name nice to meet you!";
// }

// named argument를 사용하기 위해 파라미터에 {}를 해줘야한다.
String sayHello(
    {String name = 'anon', int age = 19, String country = 'America'}) {
  return "Hello $name, you are $age, and you come from $country";
}

// null 허용 X
String sayHello2({required String name, int? age, required String country}) {
  return "Hello $name, you are $age, and you come from $country";
}

// nullable
String sayHello3({String? name, int? age, String? country}) {
  return "Hello $name, you are $age, and you come from $country";
}

// String capitalizeName(String? name) {
//   if(name != null) {
//     return name.toUpperCase();
//   }
//   return 'TEST';
// }

String capitalizeName(String? name) =>
    // name != null ? name.toUpperCase() : 'ANON';
    // QQ, Question question operator
    name?.toUpperCase() ?? 'ANON';

// Typedef: 자료형이 헷갈릴 때 도움이 될 alias를 만드는 방법
typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumber(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;

String sayHi(Map<String, String> userInfo) {
  return "hi ${userInfo['name']}";
}

// func
void main(List<String> args) {
  // print(sayHello(
  //   // named argument
  //   age: 27,
  //   name: "ybchar",
  //   country: "seoul",
  // ));

  // var name = capitalizeName('ybchar'); // YBCHAR
  // capitalizeName(null);

  String? name;
  name ??= 'ybchar';
  // name ??= 'another';    // name이 다시 null이 될리가 없다.

  print(name);

  var reversed = reverseListOfNumber([1, 2, 3, 4]);
  print(reversed);

  var hi = sayHi({"name": "ybchar"});
  print(hi);
}
