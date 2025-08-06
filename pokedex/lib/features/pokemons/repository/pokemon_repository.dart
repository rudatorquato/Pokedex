import 'package:pokedex/api/services/api_info/pokemons/pokemon.service.dart';
import 'package:pokedex/features/pokemons/model/pokemon_gen_model.dart';
import 'package:pokedex/features/pokemons/model/pokemon_model.dart';

class PokemonRepository {
  final PokemonService _pokemonService;

  PokemonRepository(this._pokemonService);

  Future<PokemonModel> getPokemons() async {
    final response = await _pokemonService.listAllPokemons();
    if (response.statusCode != 200) {
      throw Exception('Erro ao carregar pokémons: ${response.statusMessage}');
    }
    return PokemonModel.fromJson(response.data);
  }

  Future<PokemonGenModel> getPokemonsGen(String gen) async {
    final response = await _pokemonService.pokemonGeneration(gen);
    if (response.statusCode != 200) {
      throw Exception('Erro ao carregar pokémons: ${response.statusMessage}');
    }
    return PokemonGenModel.fromJson(response.data);
  }
}