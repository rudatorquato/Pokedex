// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonInformationModel _$PokemonInformationModelFromJson(
  Map<String, dynamic> json,
) => PokemonInformationModel(
  pokemonImage: json['sprites'] == null
      ? null
      : PokemonImage.fromJson(json['sprites'] as Map<String, dynamic>),
  pokemonBasicInformation: json['pokemonBasicInformation'] == null
      ? null
      : PokemonBasicInformation.fromJson(
          json['pokemonBasicInformation'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PokemonInformationModelToJson(
  PokemonInformationModel instance,
) => <String, dynamic>{
  'sprites': instance.pokemonImage,
  'pokemonBasicInformation': instance.pokemonBasicInformation,
};

PokemonBasicInformation _$PokemonBasicInformationFromJson(
  Map<String, dynamic> json,
) => PokemonBasicInformation(
  id: (json['id'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  name: json['name'] as String?,
);

Map<String, dynamic> _$PokemonBasicInformationToJson(
  PokemonBasicInformation instance,
) => <String, dynamic>{
  'id': instance.id,
  'height': instance.height,
  'name': instance.name,
};

PokemonImage _$PokemonImageFromJson(Map<String, dynamic> json) =>
    PokemonImage(frontDefaultImage: json['front_default'] as String?);

Map<String, dynamic> _$PokemonImageToJson(PokemonImage instance) =>
    <String, dynamic>{'front_default': instance.frontDefaultImage};
