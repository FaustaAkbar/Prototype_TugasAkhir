import '../models/model.dart';

class FetchMoviesAction {
  final int jumlahFilm;
  FetchMoviesAction(this.jumlahFilm);
}

class SetLoadingAction {
  final bool isLoading;
  SetLoadingAction(this.isLoading);
}

class SetMoviesAction {
  final List<MovieModel> movies;
  SetMoviesAction(this.movies);
}
