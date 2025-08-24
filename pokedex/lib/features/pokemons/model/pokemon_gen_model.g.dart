// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_gen_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonGenModel _$PokemonGenModelFromJson(Map<String, dynamic> json) =>
    PokemonGenModel(
      pokemons: (json['pokemon_species'] as List<dynamic>?)
          ?.map((e) => PokemonGen.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonGenModelToJson(PokemonGenModel instance) =>
    <String, dynamic>{'pokemon_species': instance.pokemons};

PokemonGen _$PokemonGenFromJson(Map<String, dynamic> json) =>
    PokemonGen(name: json['name'] as String?, url: json['url'] as String?);

Map<String, dynamic> _$PokemonGenToJson(PokemonGen instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};
