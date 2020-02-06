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

  static Future<Data> completeLogin(String username, String password) async {
    try {
      Response response = await _dio.post('/api/users/login/complete',
          data: {'username': username, 'password': password});
      var rawData = response.data;
      var responseData = Data.fromJson(rawData['data']);
      return responseData;
    } catch (e, s) {
      print('$e,$s');
      return e;
    }
  }
}
