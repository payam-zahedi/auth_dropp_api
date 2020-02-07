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
      _dio.interceptors.add(
        LogInterceptor(
          error: true,
          request: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: true,
          requestBody: true,
        ),
      );
    }
    return _dio;
  }

  static Future<DataModel> completeLogin(
      String username, String password) async {
      Response response = await getInstance().post('/api/users/login/complete',
          data: {'username': username, 'password': password});
      DataModel data = DataModel.fromJson(response.data);
      return data;
  }
}
