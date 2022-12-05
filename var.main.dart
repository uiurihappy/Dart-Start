void main(List<String> args) {
  print("test");
  dynamic name;

  // dynamic Type
  name = 'ybchar modified';
  name = 12;
  name = true;
  name = "Im String";
  if (name is String) {
    // if문에서 is String 으로 조건이 checking되면 name은 String이라 인지하고 String 함수를 제공한다.
    // 하지만 if문 밖에서는 dynamic에 대한 함수만 제공된다. 정말 필요한 경우에서만 사용한다.
    print("string $name");
  } else {
    print(name);
  }

  print("=============");
  String? ybchar = 'ybchar';
  ybchar = null;

  // 이렇게 축약 형 코드로 변경가능하다.
  ybchar?.isEmpty;

  if (ybchar != null) {
    ybchar.isNotEmpty; // boolean Type

    print(ybchar.isNotEmpty);
  } else {
    print(ybchar?.isEmpty); // null 출력
  }
  print(ybchar);

  // final 변수는 const와 같이 변경이 불가능
  // finalName = 'test';
  final String finalName = 'ybchar';

  // late는 초기 데이터 없이 변수를 설정할 수 있다.
  late final String lateName;
  // do something, go to API
  lateName = 'ybchar';

  /** 
   * final 변수이기에 재할당은 안됨
   * 장점은 실수를 막아준다.
   * late는 final 변수 할당 전까지는 print도 안된다.
   * 만약 API 데이터를 할당받지 않는 것에 대해 Checking이 가능하다.
   * lateName = 'var';
  */

  // const는 컴파일 할 때 알고 있는 값에 사용하는 것이다.
  // const API = fetchApi();
  const conName = 'ybchar';
}
