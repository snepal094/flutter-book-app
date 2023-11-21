import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterpersonal/constants/api.dart';

final clientProvider= Provider((ref) => Dio(
  BaseOptions(
    headers: {
      'Authorizartion': Api.apiToken
    },

      baseUrl: Api.baseUrl
  )
));