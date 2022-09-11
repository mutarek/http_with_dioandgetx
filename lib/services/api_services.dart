import 'package:dio/dio.dart';
import 'package:http_with_dioandgetx/api/api.dart';
import 'package:http_with_dioandgetx/models/popular_movie_model.dart';

class ApiService{
  Future<List<PopularMovie>> getPopularMovies() async{
    final response = await Dio(BaseOptions(baseUrl: Api.baseUrlMovies))
        .get(Api.popularMovies+Api.api_key);
    final List data = response.data['results'];
    return data.map((e) => PopularMovie.fromJson(e)).toList();
  }
}