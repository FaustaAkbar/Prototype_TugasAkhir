import 'package:dio/dio.dart';
import '../models/model.dart';

class ApiService {
  static Future<List<MovieModel>> fetchMovies(int jumlahFilm) async {
    final Dio dio = Dio();
    final String apiKey = '';
    final String url = 'https://api.themoviedb.org/3/discover/movie';
    List<MovieModel> movies = [];
    int page = 1;
    while (movies.length < jumlahFilm) {
      final response = await dio.get(
        url,
        queryParameters: {
          'api_key': apiKey,
          'page': page,
        },
      );

      List results = response.data['results'];
      movies.addAll(
        results.map((e) => MovieModel.fromJson(e)).toList(),
      );
      page++;
    }

    return movies.take(jumlahFilm).toList();
  }
}
