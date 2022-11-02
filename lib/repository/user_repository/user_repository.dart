import 'package:dio/dio.dart';
import 'package:ielts_practice_mobile/common/constant/network.dart';
import 'package:ielts_practice_mobile/common/extension.dart';
import 'package:ielts_practice_mobile/common/typedef.dart';
import 'package:ielts_practice_mobile/model/api_response.dart';
import 'package:ielts_practice_mobile/model/enum/gender.dart';
import 'package:ielts_practice_mobile/model/user.dart';

class UserRepository {
  UserRepository({required Dio dio}) : _dio = dio {
    getUser();
  }

  final Dio _dio;

  Future<User?> getUser() async {
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

  Future<ApiResponse<bool>> selfUpdate({
    required String id,
    required String firstName,
    required String lastName,
    required Gender gender,
    required DateTime dateOfBirth,
    String? avatarId,
  }) async {
    try {
      final result = await _dio.put<dynamic>(
        '/users/$id',
        data: {
          'firstName': firstName,
          'lastName': lastName,
          'gender': gender.name,
          'dateOfBirth': dateOfBirth.toIso8601String(),
          'isActive': true,
          'avatarId': avatarId
        },
      );

      if (result.statusCode == StatusCodes.status204NoContent) {
        return const ApiResponse.success(true);
      }
      return const ApiResponse.error(message: 'Unknown Error.');
    } on DioError catch (e) {
      return e.toResponseError();
    }
  }
}
