import '../models/model.dart';

class MoviesAction {
  final List<MovieModel> movies;
  MoviesAction(this.movies);
}

class SetLoadingAction {
  final bool isLoading;
  SetLoadingAction(this.isLoading);
}
