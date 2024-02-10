import 'package:dio/dio.dart';

class ApiService{
  
   final Dio _dio;

  ApiService(this._dio);
  Future<List<dynamic>>get({required String url})async{
    var response=await _dio.get(url);
    return response.data;


  }
}