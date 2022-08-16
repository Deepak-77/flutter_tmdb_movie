import 'package:movie_app_tmdb_flutter/api.dart';
import 'package:movie_app_tmdb_flutter/models/movie.dart';

class MovieState{

  final int page;
  final String searchText;
  final List<Movie> movies;
  final String apiPath;
  MovieState({required this.page, required this.movies, required this.searchText, required this.apiPath});

  MovieState.initState() : apiPath=Api.popularMovie, searchText ='', movies =[],page = 1;

  MovieState copyWith({ String? apiPath, String? searchText,  int? page, List<Movie>? movies}){
    return MovieState(
        page: page ?? this.page,
        movies: movies ?? this.movies,
        searchText: searchText ?? this.searchText,
        apiPath: apiPath ?? this.apiPath
    );
  }


}


// final movie = MovieState(page: 1, movies: [], searchText: '', apiPath: Api.popularMovie);
