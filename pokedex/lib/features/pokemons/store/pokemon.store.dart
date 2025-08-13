import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex/features/pokemons/model/pokemon_detail-model.dart';
import 'package:pokedex/features/pokemons/model/pokemon_gen_model.dart';
import 'package:pokedex/features/pokemons/model/pokemon_model.dart';
import '../repository/pokemon_repository.dart';

part 'pokemon.store.g.dart';

class PokemonStore = _PokemonStore with _$PokemonStore;

abstract class _PokemonStore with Store {
  final PokemonRepository _pokemonRepository;

  _PokemonStore(this._pokemonRepository);

  @observable
  PokemonModel? pokemonModel;

  @observable
  bool isLoading = false;

  @observable
  String errorMessage = '';

  @computed
  List<Pokemon>? get pokemons => pokemonModel?.pokemons;

  @action
  Future<void> getPokemons() async {
    isLoading = true;
    try {
      final pokemonModelResponse = await _pokemonRepository.getPokemons();
      if (pokemonModelResponse != null) {
        pokemonModel = pokemonModelResponse;
      } else {
        errorMessage = 'Resposta nula';
      }
    } on DioException catch (e) {
      errorMessage = 'Erro de rede: ${e.message}';
    } catch (e) {
      errorMessage = 'Erro desconhecido: $e';
    } finally {
      isLoading = false;
    }
  }

  @observable
  PokemonGenModel? pokemonGenModel;

  @computed
  List<PokemonGen>? get pokemonsGen => pokemonGenModel?.pokemons;

  @action
  Future<void> getPokemonsGenerations(String gen) async {
    isLoading = true;
    try {
      final pokemonGenModelResponse = await _pokemonRepository.getPokemonsGen(gen);
      if (pokemonGenModelResponse != null) {
        pokemonGenModel = pokemonGenModelResponse;
      } else {
        errorMessage = 'Resposta nula';
      }
    } on DioException catch (e) {
      errorMessage = 'Erro de rede: ${e.message}';
    } catch (e) {
      errorMessage = 'Erro desconhecido: $e';
    } finally {
      isLoading = false;
    }
  }

  @observable
  PokemonInformationModel? pokemonInformationModel;

  @computed
  PokemonImage? get pokemonImage => pokemonInformationModel?.pokemonImage;
  
  @computed
  PokemonBasicInformation? get pokemonBasicInformation => pokemonInformationModel?.pokemonBasicInformation;

  @action
  Future<void> getPokemonInformation(String pokemonName) async {
    isLoading = true;
    try {
      final pokemonInformationModelResponse = await _pokemonRepository.getPokemonDetail(pokemonName);
      if (pokemonInformationModelResponse != null) {
        pokemonInformationModel = pokemonInformationModelResponse;
      } else {
        errorMessage = 'Resposta nula';
      }
    } on DioException catch (e) {
      errorMessage = 'Erro de rede: ${e.message}';
    } catch (e) {
      errorMessage = 'Erro desconhecido: $e';
    } finally {
      isLoading = false;
    }
  }
}

