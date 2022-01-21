import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokedex/models/pokemons.dart';

class FetchApi {
  http.Client client = http.Client();

  Future<Pokemons?> fetchPokemons() async {
    String url = "https://pokeapi.co/api/v2/pokemon";
    http.Response response = await client.get(Uri.parse(url));

    // parsing response body
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body).cast<String, dynamic>();
      return Pokemons.fromJSON(parsed);
    }
    return null;
  }
}
