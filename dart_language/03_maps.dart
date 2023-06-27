void main() {
  // Map is a collection of key/value pairs. It can contain integers as a key, not only strings.
  final Map<String, dynamic> pokemon = {
    'name': 'Pokelin',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['ability 1', 'ability 2', 'ability 3'],
    'sprites': {
      1: 'pokelin/front.png',
      2: 'pokelin/back.png',
    },
  };

  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Name: ${pokemon['sprites'][2]}');
  print('Name: ${pokemon['name'][1]}');
}
