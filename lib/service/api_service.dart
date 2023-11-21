import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterpersonal/models/movie.dart';
import 'package:flutterpersonal/constants/api.dart';
import 'package:flutterpersonal/shared/client_provider.dart';


final apiService= Provider((ref) => ApiService(ref.watch(clientProvider)));

class ApiService {

final Dio dio;
ApiService(this.dio);

  Future<List<Movie>> getMealData () async{
    try{
      final response= await dio.get(Api.getPopular);
      return (response.data['results'] as List).map((e) => Movie.fromJson(e)).toList();
    }on DioException catch (err){
      print(err);
      throw '${err.message}';
    }
  }

}