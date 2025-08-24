import 'package:json_annotation/json_annotation.dart';

part 'pokemon_detail_model.g.dart';

@JsonSerializable()
class PokemonInformationModel {
  @JsonKey(name: 'sprites')
  PokemonImage? pokemonImage;
  PokemonBasicInformation? pokemonBasicInformation;

  PokemonInformationModel({this.pokemonImage, this.pokemonBasicInformation});

  factory PokemonInformationModel.fromJson(Map<String, dynamic> json) => _$PokemonInformationModelFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonInformationModelToJson(this);
}

@JsonSerializable()
class PokemonBasicInformation {
  int? id;
  int? height;
  String? name;

  PokemonBasicInformation({this.id, this.height, this.name});

  factory PokemonBasicInformation.fromJson(Map<String, dynamic> json) => _$PokemonBasicInformationFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonBasicInformationToJson(this);
}

@JsonSerializable()
class PokemonImage {
  @JsonKey(name: 'front_default')
  String? frontDefaultImage;

  PokemonImage({this.frontDefaultImage});

  factory PokemonImage.fromJson(Map<String, dynamic> json) => _$PokemonImageFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonImageToJson(this);
}