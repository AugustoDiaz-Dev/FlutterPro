void main() {
  final String pokemon = "Pokelin";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['run', 'jump', 'move'];
  final sprites = <String>['pokelin/front.png', 'pokelin/back.png'];
  dynamic errorMessage = "Something went wrong";
  errorMessage = [1, 2, 3];
  errorMessage = {4, 5, 6};
  errorMessage = () => true;
  errorMessage = null;

  print("""
$pokemon
$hp
$isAlive
$abilities
$sprites
$errorMessage
""");

// Dynamic accepts null. You might use dynamic type when you have to map a request and the response contains multiple values.
}
