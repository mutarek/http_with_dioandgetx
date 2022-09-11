class PopularMovie{
  int? id;
  String? language;
  String? title;
  String? overview;
  String? release_date;
  double?vote_average;
  int?vote_count;
  String?poster_path;

  PopularMovie({this.id, this.language, this.title, this.overview,
      this.release_date, this.vote_average, this.vote_count, this.poster_path});

  factory PopularMovie.fromJson(Map<String,dynamic> json)=> PopularMovie(
    id: json['id'],
    language: json['original_language'],
    title: json['title'],
    overview: json['overview'],
    release_date: json['release_date'],
    vote_average: json['vote_average'],
    vote_count: json['vote_count'],
    poster_path: json['poster_path']
  );

}