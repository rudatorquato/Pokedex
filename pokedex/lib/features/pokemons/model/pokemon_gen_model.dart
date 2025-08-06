class PokemonGenModel {

  List<PokemonGen>? pokemons;

  PokemonGenModel({this.pokemons});

  PokemonGenModel.fromJson(Map<String, dynamic> json) {
    pokemons = json['pokemon_species'] != null
        ? (json['pokemon_species'] as List)
            .map((json) => PokemonGen.fromJson(json))
            .toList()
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (pokemons != null) {
      data['pokemon_species'] = pokemons!.map((pokemon) => pokemon.toJson()).toList();
    }
    return data;
  }
}

class PokemonGen {
  String? name;

  PokemonGen({this.name});

  PokemonGen.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}