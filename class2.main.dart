/**  추상 메소드, 클래스
 * 추상 클래스란 절~대 아래처럼 작성할 일이 없는 클래스
 *  Player(name: "ybchar", xp: XpLevel.beginner, team: Team.red);
 * 
 * 
*/

abstract class Human {
  // 단지 signature만 작성
  void walk();
}

// red or blue 팀만 되도록 설정
enum Team { red, blue, pupple }

enum XpLevel { beginner, medium, pro }

class Player extends Human {
  String name;
  XpLevel xp;
  Team team;
  void walk() {
    print("Im walker");
  }

  // named constructors
  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHi() {
    print("Hi My name is $name");
  }
}

void main(List<String> args) {
  // var ybchar = Player(name: "ybchar", xp: 100, team: "red");

  // ybchar.name = 'test';
  // ybchar.xp = 1200;
  // ybchar.team = 'pupple';

  // To Cascade Operator
  var ybchar = Player(name: "ybchar", xp: XpLevel.beginner, team: Team.red);
  var apple = ybchar
    ..name = 'test'
    ..xp = XpLevel.medium
    ..team = Team.pupple
    ..sayHi()
    ..walk();
}
