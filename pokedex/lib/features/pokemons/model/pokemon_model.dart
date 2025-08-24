import 'package:json_annotation/json_annotation.dart';

part 'pokemon_model.g.dart';

@JsonSerializable()
class PokemonModel {
  @JsonKey(name: 'results')
  List<Pokemon>? pokemons;

  PokemonModel({this.pokemons});

  factory PokemonModel.fromJson(Map<String, dynamic> json) => _$PokemonModelFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonModelToJson(this);
}

@JsonSerializable()
class Pokemon {
  String? name;

  Pokemon({this.name});

  factory Pokemon.fromJson(Map<String, dynamic> json) => _$PokemonFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonToJson(this);
}