void main() {
  final String pokemon = "Pokelin";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['run', 'jump', 'move'];
  final sprites = <String>['pokelin/front.png', 'pokelin/back.png'];

  print("""
$pokemon
$hp
$isAlive
$abilities
$sprites

""");
}
