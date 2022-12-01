void main(List<String> args) {
  print("test");
  dynamic name;

  // dynamic Type
  name = 'ybchar modified';
  name = 12;
  name = true;
  // name = "Im String";
  if (name is String) {
    // if문에서 is String 으로 조건이 checking되면 name은 String이라 인지하고 String 함수를 제공한다.
    // 하지만 if문 밖에서는 dynamic에 대한 함수만 제공된다. 정말 필요한 경우에서만 사용한다.
    print("string $name");
  } else {
    print(name);
  }
}
