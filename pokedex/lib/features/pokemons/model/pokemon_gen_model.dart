import 'package:json_annotation/json_annotation.dart';

part 'pokemon_gen_model.g.dart';

@JsonSerializable()
class PokemonGenModel {
  @JsonKey(name: 'pokemon_species')

  List<PokemonGen>? pokemons;

  PokemonGenModel({this.pokemons});

  factory PokemonGenModel.fromJson(Map<String, dynamic> json) => _$PokemonGenModelFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonGenModelToJson(this);
}
@JsonSerializable()
class PokemonGen {
  String? name;
  String? url;

  PokemonGen({
    this.name,
    this.url
    });

  factory PokemonGen.fromJson(Map<String, dynamic> json) => _$PokemonGenFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonGenToJson(this);
}