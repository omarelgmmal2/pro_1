import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHelper {
  final Dio _dio = Dio(
    BaseOptions(baseUrl: "https://thimar.amr.aait-d.com/api/"),
  );

  Future<CustomResponse> sendData(String endPoint,
      {Map<String, dynamic>? data}) async {
    debugPrint("(POST) https://thimar.amr.aait-d.com/api/$endPoint");
    debugPrint("Data:$data");
    try {
      final response = await _dio.post(
          endPoint,
        data: data,
      );
      debugPrint(response.data);
      return CustomResponse(message: response.data["message"], isSuccess: true,response: response,);
    } on DioException catch (ex) {
      print(ex);
      return CustomResponse(message: ex.response?.data["message"]??"", isSuccess: false,response: ex.response,);
    }
  }


  Future<CustomResponse> getData(String endPoint,
      {Map<String, dynamic>? data}) async {
    debugPrint("(Get) https://thimar.amr.aait-d.com/api/$endPoint");
    debugPrint("Data:$data");
    try {
      final response = await _dio.post(
          endPoint,
          queryParameters: data,
      );
      debugPrint(response.data);
      return CustomResponse(message: response.data["message"], isSuccess: true,response: response,);
    } on DioException catch (ex) {
      print(ex);
      return CustomResponse(message: ex.response?.data["message"]??"", isSuccess: false,response: ex.response,);
    }
  }

}

class CustomResponse {
  late final String message;
  late final bool isSuccess;
  late final Response? response;

  CustomResponse({
    required this.message,
    required this.isSuccess,
    this.response,
  });
}
