class Pokemon {
  final String name;
  final String detailsUrl;

  Pokemon({required this.name, required this.detailsUrl});

  factory Pokemon.fromJSON(Map<String, dynamic> json) {
    return Pokemon(name: json["name"], detailsUrl: json["url"]);
  }
}

class Pokemons {
  final String next;
  final String prev;

  final List<Pokemon> pokemonsListPerPage;

  Pokemons(
      {required this.next,
      required this.prev,
      required this.pokemonsListPerPage});

  factory Pokemons.fromJSON(Map<String, dynamic> json) {
    return Pokemons(
        next: json["next"] as String,
        prev: json["prev"] as String,
        pokemonsListPerPage: json["result"]
            .map<Pokemon>((data) => Pokemon.fromJSON(data))
            .toList() as List<Pokemon>);
  }
}
