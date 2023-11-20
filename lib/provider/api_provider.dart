import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterpersonal/service/api_service.dart';

final apiProvider = FutureProvider((ref) => ApiService.getMealData());