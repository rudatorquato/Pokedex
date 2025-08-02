class PokemonModel {


  List<Pokemon>? pokemons;

  PokemonModel({this.pokemons});

  PokemonModel.fromJson(Map<String, dynamic> json) {
    pokemons = json['results'] != null
        ? (json['results'] as List)
            .map((json) => Pokemon.fromJson(json))
            .toList()
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (pokemons != null) {
      data['results'] = pokemons!.map((pokemon) => pokemon.toJson()).toList();
    }
    return data;
  }
}

class Pokemon {
  String? name;

  Pokemon({this.name});

  Pokemon.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}
