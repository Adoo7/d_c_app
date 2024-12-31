import 'package:d_c_app/src/auth/domain/entity/UserEntity.dart';
import 'package:dio/dio.dart';

class UserApi {
  final Dio dio;
  final String apiKey;
  UserApi({required this.dio, required this.apiKey});
  Future<List<UserEntity>> getRecentNews() async {
    final res = await dio
        .get('/v2/everything?q=singapore&sortBy=publishedAt&apiKey=$apiKey');
    return List<Map<String, dynamic>>.from(res.data['articles'])
        .map((e) => UserEntity.fromJson(e))
        .toList();
  }
}