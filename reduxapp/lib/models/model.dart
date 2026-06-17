class MovieModel {
  final String title;
  final String overview;
  final String releaseYear;
  final double rating;

  MovieModel({
    required this.title,
    required this.overview,
    required this.releaseYear,
    required this.rating,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      title: json['title'] ?? '-',
      overview: json['overview'] ?? '-',
      releaseYear: json['release_date'] ?? '-',
      rating: (json['vote_average'] ?? 0).toDouble(),
    );
  }
}
