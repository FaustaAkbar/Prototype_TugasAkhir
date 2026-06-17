import 'package:get/get.dart';
import '../models/model.dart';
import '../services/api_service.dart';

class MovieController extends GetxController {
  final isLoading = true.obs;
  final movies = <MovieModel>[].obs;

  @override
  void onInit() {
    fetchMovies(50);
    super.onInit();
  }

  Future<void> fetchMovies(int jumlahFilm) async {
    try {
      isLoading.value = true;
      final result = await ApiService.fetchMovies(jumlahFilm);
      movies.value = result;
    } finally {
      isLoading.value = false;
    }
  }
}
