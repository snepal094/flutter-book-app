


class Movie{

  final String title;
  final String poster_path;
  final String overview;
  final String id;
  final String vote_average;
  final String backdrop_path;

  Movie({
    required this.title,
    required this.poster_path,
    required this.overview,
    required this.id,
    required this.vote_average,
    required this.backdrop_path

});

  factory Movie.fromJson(Map <String, dynamic> json){
    return Movie(
        title: json['title'] ?? '',
        poster_path: 'https://image.tmdb.org/t/p/w500${json['poster_path']}',
        overview: json['overview'],
        id: json['id'],
        vote_average: '${json['vote_average']}',
        backdrop_path: 'https://image.tmdb.org/t/p/w500${json['backdrop_path']}'
    );
  }




}