import 'package:json_annotation/json_annotation.dart';

part 'responseData.g.dart';

@JsonSerializable()
class ResponseData {
  int code;
  dynamic meta;
  dynamic data;

  ResponseData({
    required this.code,
    required this.meta,
    required this.data,
  });

  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);
}
