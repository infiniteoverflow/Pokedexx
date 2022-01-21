class Pokemon {
  final String name;
  final String detailsUrl;

  Pokemon({required this.name, required this.detailsUrl});

  factory Pokemon.fromJSON(Map<String, dynamic> json) {
    return Pokemon(
        name: json["name"] ?? null as String,
        detailsUrl: json["url"] ?? null as String);
  }
}

class Pokemons {
  final String? next;
  final String? prev;

  final List<Pokemon> pokemonsListPerPage;

  Pokemons(
      {required this.next,
      required this.prev,
      required this.pokemonsListPerPage});

  factory Pokemons.fromJSON(Map<String, dynamic> json) {
    return Pokemons(
        next: json["next"] ?? null,
        prev: json["prev"] ?? null,
        pokemonsListPerPage: json["results"]
            .map<Pokemon>((data) => Pokemon.fromJSON(data))
            .toList() as List<Pokemon>);
  }
}
