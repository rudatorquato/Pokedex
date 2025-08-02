import 'package:pokedex/api/services/api_info/pokemons/pokemon.service.dart';
import 'package:pokedex/features/pokemons/model/pokemon_model.dart';

class PokemonRepository {
  final PokemonService _pokemonService;

  PokemonRepository(this._pokemonService);

  Future<PokemonModel> getPokemons() async {
    final response = await _pokemonService.listAllPokemons();
    return PokemonModel.fromJson(response.data);
  }
}