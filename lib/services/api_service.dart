import 'package:dio/dio.dart';

class ApiService {
  static const String _baseUrl =
      'https://69e2d77e3327837a1552a63e.mockapi.io';

  final Dio _dio = Dio(BaseOptions(
    baseUrl: _baseUrl,
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5),
    headers: {'Content-Type': 'application/json'},
  ));

  /// Đăng nhập: tìm user khớp email + password
  Future<Map<String, dynamic>> login(String email, String password) async {
    try {
      final response = await _dio.get(
        '/login',
        queryParameters: {'email': email, 'password': password},
      );

      final List data = response.data as List;

      if (data.isNotEmpty) {
        return {'success': true, 'user': data.first};
      } else {
        return {'success': false, 'message': 'Sai tên đăng nhập hoặc mật khẩu'};
      }
    } on DioException catch (e) {
      final msg = e.response?.data?['message'] ?? e.message ?? 'Lỗi kết nối';
      return {'success': false, 'message': msg};
    }
  }

  /// Đăng ký: tạo user mới
  Future<Map<String, dynamic>> register({
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dio.post('/login', data: {
        'username': username,
        'email': email,
        'password': password,
      });

      return {'success': true, 'user': response.data};
    } on DioException catch (e) {
      final msg = e.response?.data?['message'] ?? e.message ?? 'Lỗi kết nối';
      return {'success': false, 'message': msg};
    }
  }
}
