class Human {
  final String name;

  Human({required this.name});

  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team { red, blue, pupple }

// Inheritance
class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
  });

// name이란 변수를 super 클래스, 즉 부모 클래스에게 전달
  // Player({
  //   required this.team,
  //   required String name,
  // }) : super(name: name);

  // @override
  // void sayHello() {
  //   super.sayHello();
  //   print("and I play for ${team}");
  // }
}

// Mixin: 생성자 없는 클래스
// 하나의 클래스에서 단 한번만 사용할 거면 의미가 없음, 차라리 상속을 씀
// 장점: 여러 클래스에서 재사용성이 뛰어남
class Strong {
  final double strengthLevel = 100.00;
}

class QuickRunner {
  void runQuick() {
    print("runnnnnn!");
  }
}

class Tall {
  final double height = 1.9;
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

void main(List<String> args) {
  // var player = Player(team: Team.red, name: 'ybchar');

  // player.sayHello();

  var player = Player(team: Team.red,)
}
