import 'package:dio/dio.dart';
import 'package:pokedex/api/api_info/api_client_info.dart';

class PokemonService {
  final ApiClient _apiClient;

  PokemonService(this._apiClient);

  Future<Response> listAllPokemons() async {
    final response = await _apiClient.dio.get('/pokemon?limit=100000&offset=0');
    return response;
  }

  // Future<Response> criar(Map<String, dynamic> body) async {
  //   final response = await _apiClient.dio.post('/meu-endpoint/criar', data: body);
  //   return response;
  //}
}