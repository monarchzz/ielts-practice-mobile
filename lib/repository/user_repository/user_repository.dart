import 'package:dio/dio.dart';
import 'package:ielts_practice_mobile/common/constant/network.dart';
import 'package:ielts_practice_mobile/common/typedef.dart';
import 'package:ielts_practice_mobile/model/user.dart';

class UserRepository {
  UserRepository({required Dio dio}) : _dio = dio {
    getUser().then((value) => user = value);
  }

  final Dio _dio;

  User? user;

  Future<User?> getUser() async {
    if (user != null) return user;
    try {
      final result = await _dio.get<ObjectResponse>('/users/profile');

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final data = User.fromJson(result.data!);
        return data;
      }
    } catch (e) {
      return null;
    }
    return null;
  }
}
