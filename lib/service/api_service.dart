import 'package:dio/dio.dart';





class ApiService {

  static final dio = Dio(
    //     BaseOptions(
    //   baseUrl: 'https://www.themealdb.com/api/json/v1/1'
    // )
  );

  static Future  getMealData () async{
    try{
      final response = await dio.post('https://translate-plus.p.rapidapi.com/translate',
          queryParameters: {

          },
          data: {
            'text': 'Hello , How are you',
            'source': 'en',
            'target': 'ne'
          },
          options: Options(
              headers:  {
                'content-type': 'application/json',
                'X-RapidAPI-Key': '89e53c72d7msh16aa8c041814a4cp1f3e79jsn333d7bcaf747',
                'X-RapidAPI-Host': 'translate-plus.p.rapidapi.com'
              }
          ));
      print(response);
      return response.data;
    }on DioException catch (err){
      print(err);
      throw '${err.message}';
    }
  }

}