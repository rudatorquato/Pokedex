import 'package:get_it/get_it.dart';
import 'package:pokedex/api/api_info/api_client_info.dart';
import 'package:pokedex/api/services/api_info/pokemons/pokemon.service.dart';
import 'package:pokedex/features/pokemons/repository/pokemon_repository.dart';
import 'package:pokedex/features/pokemons/store/pokemon.store.dart';

GetIt getIt = GetIt.I;

void setupServiceLocator() { 

  getIt.registerSingleton<ApiClient>(ApiClient());
  getIt.registerSingleton<PokemonService>(PokemonService(getIt<ApiClient>()));
  getIt.registerSingleton<PokemonRepository>(PokemonRepository(getIt<PokemonService>()));


  getIt.registerLazySingleton<PokemonStore>(
      () => PokemonStore(getIt<PokemonRepository>()));
 }