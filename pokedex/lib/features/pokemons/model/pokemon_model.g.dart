// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) => PokemonModel(
  pokemons: (json['results'] as List<dynamic>?)
      ?.map((e) => Pokemon.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PokemonModelToJson(PokemonModel instance) =>
    <String, dynamic>{'results': instance.pokemons};

Pokemon _$PokemonFromJson(Map<String, dynamic> json) =>
    Pokemon(name: json['name'] as String?);

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
  'name': instance.name,
};
