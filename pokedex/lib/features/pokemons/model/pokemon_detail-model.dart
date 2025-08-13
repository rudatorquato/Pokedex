class PokemonInformationModel {
  PokemonImage? pokemonImage;
  PokemonBasicInformation? pokemonBasicInformation;

  PokemonInformationModel({this.pokemonImage, this.pokemonBasicInformation});

  PokemonInformationModel.fromJson(Map<String, dynamic> json) {
    pokemonImage = json['sprites'] != null ? PokemonImage.fromJson(json['sprites']) : null;
    pokemonBasicInformation = PokemonBasicInformation.fromJson(json);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (pokemonImage != null) {
      data['sprites'] = pokemonImage!.toJson();
    }
    if (pokemonBasicInformation != null) {
      data['id'] = pokemonBasicInformation!.id;
      data['height'] = pokemonBasicInformation!.height;
      data['name'] = pokemonBasicInformation!.name;
    }
    return data;
  }
}

class PokemonBasicInformation {
  int? id;
  int? height;
  String? name;


  PokemonBasicInformation({
    this.id,
    this.height,
    this.name
    });

  PokemonBasicInformation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    height = json['height'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['height'] = height;
    data['name'] = name;
    return data;
  }
}
class PokemonImage {
  String? frontDeafaultImage;

  PokemonImage({this.frontDeafaultImage});

  PokemonImage.fromJson(Map<String, dynamic> json) {
    frontDeafaultImage = json['front_default'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['front_default'] = frontDeafaultImage;
    return data;
  }
}