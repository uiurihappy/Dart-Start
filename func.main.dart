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
String sayHello3(String name, int age, [String? country = 'cuba']) =>
    'Hello $name, you are $age, and you come from $country';

// func
void main(List<String> args) {
  var result = sayHello3(
    // named argument
    "ybchar",
    27,
  );
  print(result);
}
