import 'package:dio/dio.dart';
import 'package:ielts_practice_mobile/common/constant/network.dart';
import 'package:ielts_practice_mobile/common/extension.dart';
import 'package:ielts_practice_mobile/model/api_response.dart';

class AttachmentRepository {
  AttachmentRepository({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  Future<ApiResponse<String>> uploadImage(String path) async {
    try {
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(path),
      });
      final result = await _dio.post<dynamic>(
        '/attachment/upload/image',
        data: formData,
      );

      if (result.statusCode == StatusCodes.status201Created) {
        final id = result.headers.value('location')?.getUuid() ?? '';
        return ApiResponse.success(id);
      }
      return const ApiResponse.error(message: 'Unknown Error.');
    } on DioError catch (e) {
      return e.toResponseError();
    }
  }
}
