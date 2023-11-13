import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:sd_flutter_test/const.dart';
import 'package:sd_flutter_test/data/model/responseData.dart';

part 'api.g.dart';

class Apis {
  static const String users = '/users';
}

@RestApi(baseUrl: baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(Apis.users)
  Future<ResponseData> getUsers();
}
