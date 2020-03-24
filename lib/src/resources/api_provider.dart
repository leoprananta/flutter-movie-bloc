import 'package:flutter_movie_bloc/src/models/item_model.dart';
import 'package:http/http.dart';
import 'dart:convert';

class ApiProvider{
  Client client = Client();
  final _apiKey = 'ae97036adbb287e6dafd2036c3011004';

  Future<ItemModel> fetchMovieList() async{
    print("Entered");
    final response = await client
      .get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");

      print(response.body.toString());
      if(response.statusCode == 200){
        return ItemModel.fromJson(json.decode(response.body));
      }else{
        throw Exception('Failed to load post');
      }
  }
}