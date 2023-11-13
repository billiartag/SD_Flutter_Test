import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:sd_flutter_test/const.dart';
import 'package:sd_flutter_test/data/model/responseData.dart';

part 'api.g.dart';

class Apis {
  static const String authLogin = '/auth/login';
  static const String authRegister = '/auth/register';
  static const String authLogout = '/auth/logout';

  static const String postGetPosts = '/post/';
  static const String postCreate = '/post/';
  static const String postGetUpdateDelete = '/post/:id';

  static const String commentCreate = '/comment/';
  static const String commentUpdateDelete = '/comment/:id';

  static const String likeCRUD = '/comment/';
}

@RestApi(baseUrl: baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  // Auth
  @POST(Apis.authLogin)
  Future<ResponseData> authLogin();

  @POST(Apis.authRegister)
  Future<ResponseData> authRegister();

  @POST(Apis.authLogout)
  Future<ResponseData> authLogout();

  // Post
  @GET(Apis.postGetPosts)
  Future<ResponseData> postGetPosts();

  @POST(Apis.postCreate)
  Future<ResponseData> postCreate();

  @GET(Apis.postGetUpdateDelete)
  Future<ResponseData> postGetPost();

  @PATCH(Apis.postGetUpdateDelete)
  Future<ResponseData> postUpdate();

  @DELETE(Apis.postGetUpdateDelete)
  Future<ResponseData> postDelete();

  // Comment
  @POST(Apis.commentCreate)
  Future<ResponseData> commentCreate();

  @PATCH(Apis.commentUpdateDelete)
  Future<ResponseData> commentUpdate();

  @DELETE(Apis.commentUpdateDelete)
  Future<ResponseData> commentDelete();

  // Like
  @POST(Apis.likeCRUD)
  Future<ResponseData> likeCreate();

  @PATCH(Apis.likeCRUD)
  Future<ResponseData> likeUpdate();

  @DELETE(Apis.likeCRUD)
  Future<ResponseData> likeDelete();
}
