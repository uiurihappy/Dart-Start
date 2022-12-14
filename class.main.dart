class Player {
  // player의 이름을 바꾸지 못하도록 final
  late String name, team;
  late int xp, age;

  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }

  // named constructors
  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  // Blue team player constructor init
  // age와 name을 받아 초기화된 4개의 parameter에서 instance 생성
  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

// Positional syntax
  Player.createRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  // fromJson
  // Property init
  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHi() {
    print("Hi My name is $name");
  }
}

void main(List<String> args) {
  // New instance
  // Named constructors
  var player = Player(
    name: "ybchar",
    xp: 200,
    team: 'red',
    age: 27,
  );
  player.sayHi();
  // player.name = 'lalala';
  // print(player.name);

  var player2 = Player(
    name: "test",
    xp: 2300,
    team: 'red',
    age: 25,
  );
  player2.sayHi();

  var bluePlayer = Player.createBluePlayer(
    name: "test",
    age: 25,
  );

  var redPlayer = Player.createRedPlayer(
    "test",
    25,
  );

  print("===================================");

  var apiResData = [
    {
      "name": "ybchar",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "cha",
      "team": "blue",
      "xp": 0,
    },
    {
      "name": "tester",
      "team": "yellow",
      "xp": 0,
    },
  ];

  apiResData.forEach((playerJson) {
    // key-value 형식으로 가져왔다.
    var player = Player.fromJson(playerJson);
    player.sayHi();
  });
}
