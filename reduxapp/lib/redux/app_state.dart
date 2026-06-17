import '../models/model.dart';

class AppState {
  final bool isLoading;
  final List<MovieModel> movies;

  AppState({
    required this.isLoading,
    required this.movies,
  });

  factory AppState.initial() {
    return AppState(
      isLoading: true,
      movies: const [],
    );
  }

  AppState copyWith({
    bool? isLoading,
    List<MovieModel>? movies,
  }) {
    return AppState(
      isLoading: isLoading ?? this.isLoading,
      movies: movies ?? this.movies,
    );
  }
}
