class Player {
  // player의 이름을 바꾸지 못하도록 final
  late final String name;
  late int xp;

  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }
  Player(this.name, this.xp);

  void sayHi() {
    print("Hi My name is $name");
  }
}

void main(List<String> args) {
  // instance
  var player = Player("ybchar", 27);
  player.sayHi();
  // player.name = 'lalala';
  // print(player.name);

  var player2 = Player("tie", 27);
  player2.sayHi();
}
