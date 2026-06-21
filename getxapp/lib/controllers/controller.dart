import 'package:get/get.dart';
import '../models/model.dart';
import '../services/api_service.dart';

class MovieController extends GetxController {
  final isLoading = true.obs;
  final movies = <MovieModel>[].obs;
  List<MovieModel> allMovies = [];
  int currentIndex = 0;
  final int addmovies = 100;

  @override
  void onInit() {
    fetchMovies(25);
    super.onInit();
  }

  Future<void> fetchMovies(int jumlahFilm) async {
    try {
      isLoading.value = true;
      allMovies = await ApiService.fetchMovies(jumlahFilm);
      datamovies();
    } finally {
      isLoading.value = false;
    }
  }

  void datamovies() {
    if (currentIndex >= allMovies.length) {
      return;
    }
    int nextIndex = currentIndex + addmovies;
    if (nextIndex > allMovies.length) {
      nextIndex = allMovies.length;
    }
    movies.addAll(allMovies.sublist(
      currentIndex,
      nextIndex,
    ));
    currentIndex = nextIndex;
  }
}
