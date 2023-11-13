import 'package:dio/dio.dart';
import 'package:sd_flutter_test/data/api.dart';
import 'package:sd_flutter_test/data/model/responseData.dart';

class Repository {
  final client = ApiClient(Dio(BaseOptions(contentType: "application/json")));

  Future<ResponseData> getUser() {
    return client.getUsers();
  }
}
