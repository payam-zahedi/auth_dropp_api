import 'package:auth_dropp_api/model/data.dart';
import 'package:dio/dio.dart';

class DropService {
  static String _url = 'http://dropp.dlinkddns.com:5000';

  static Dio _dio;

  static Dio getInstance() {
    if (_dio == null) {
      BaseOptions options = BaseOptions(
        baseUrl: _url,
        connectTimeout: 6000,
        receiveTimeout: 3000,
      );
      _dio = Dio(options);
    }
    return _dio;
  }

  static Future<Response> completeLogin(
      String username, String password) async {
    try {
      return await getInstance().post('/api/users/login/complete',
          data: {'username': username, 'password': password});
    } on DioError catch (e) {
      if (e.response != null) {
        print(e.response.data);
        print(e.response.headers);
        print(e.response.request);
      } else {
        print(e.request);
        print(e.message);
      }
    }
  }
}
