class Human {
  final String name;

  Human({required this.name});

  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team { red : {'redTeam'}, blue, pupple }

// Inheritance
class Player extends Human {
  final Team team;

// name이란 변수를 super 클래스, 즉 부모 클래스에게 전달
  Player({
    required this.team,
    required String name,
  }) : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print("and I play for ${team}");
  }
}

void main(List<String> args) {
  var player = Player(team: Team.red, name: 'ybchar');

  player.sayHello();
}
