import 'package:dio/dio.dart';
import 'package:pokedex/api/api_info/api_client_info.dart';

class PokemonService {
  final ApiClient _apiClient;

  PokemonService(this._apiClient);

  Future<Response> listAllPokemons() async {
    
    try {
      final response = await _apiClient.dio.get('/pokemon?limit=100000&offset=0');
      return response;
    } on DioException catch (e) {
        if (e.type == DioExceptionType.receiveTimeout) {
          return e.response ?? Response(statusCode: 408, statusMessage: 'Tempo limite de recebimento', requestOptions: e.requestOptions);
        } else if (e.type == DioExceptionType.unknown) {
          return e.response ?? Response(statusCode: 500, statusMessage: 'Erro desconhecido', requestOptions: e.requestOptions);
        }else {
          rethrow;
        }  
    }
  }

  Future<Response> pokemonGeneration(String gen) async {
    try {
        final response = await _apiClient.dio.get('/generation/$gen/');
        return response;
      } on DioException catch (e) {
          if (e.type == DioExceptionType.receiveTimeout) {
            return e.response ?? Response(statusCode: 408, statusMessage: 'Tempo limite de recebimento', requestOptions: e.requestOptions);
          } else if (e.type == DioExceptionType.unknown) {
            return e.response ?? Response(statusCode: 500, statusMessage: 'Erro desconhecido', requestOptions: e.requestOptions);
          }else {
            rethrow;
          }  
      }
  }

  Future<Response> pokemonDetail(String namePokemon) async {
    try {
        final response = await _apiClient.dio.get('/pokemon/$namePokemon/');
        return response;
      } on DioException catch (e) {
          if (e.type == DioExceptionType.receiveTimeout) {
            return e.response ?? Response(statusCode: 408, statusMessage: 'Tempo limite de recebimento', requestOptions: e.requestOptions);
          } else if (e.type == DioExceptionType.unknown) {
            return e.response ?? Response(statusCode: 500, statusMessage: 'Erro desconhecido', requestOptions: e.requestOptions);
          }else {
            rethrow;
          }  
      }
  }

  

  // Future<Response> criar(Map<String, dynamic> body) async {
  //   final response = await _apiClient.dio.post('/meu-endpoint/criar', data: body);
  //   return response;
  //}
}