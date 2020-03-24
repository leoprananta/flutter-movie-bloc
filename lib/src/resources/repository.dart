import 'package:flutter_movie_bloc/src/models/item_model.dart';
import 'package:flutter_movie_bloc/src/resources/api_provider.dart';

class Repository{
  final apiProvider = ApiProvider();

  Future <ItemModel> fetchAllMovies() => apiProvider.fetchMovieList();
}