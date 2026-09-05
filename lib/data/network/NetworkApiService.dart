import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import '/data/app_excaptions.dart';
import '/data/network/BaseApiServices.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class NetworkApiService extends BaseApiServices {
  //getstarted
  @override
  Future getPostWithoutApiResponse(
    String url,
    dynamic data,
  ) async {
    dynamic responseJson;
    try {
      Map<String, String> headerData = {
        "Content-Type": "application/json",
      };
      Response response = await post(
        Uri.parse(url),
        headers: headerData,
        body: jsonEncode(data),
      ).timeout(const Duration(seconds: 120));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('API Connection Error');
    }

    return responseJson;
  }

  @override
  Future getGetApiResponse(String url) async {
    final prefsToken = await SharedPreferences.getInstance();
    dynamic token = prefsToken.getString('token');
    dynamic responseJson;
    try {
      Map<String, String> headerData = {
        "Content-Type": "application/json",
        "Authorization": token
      };
      final response = await http
          .get(
            Uri.parse(url),
            headers: headerData,
          )
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    return responseJson;
  }

  @override
  Future getPostApiResponse(
    String url,
    dynamic data,
  ) async {
    final prefsToken = await SharedPreferences.getInstance();
    dynamic token = prefsToken.getString('token');
    dynamic responseJson;
    try {
      print(url);
      Map<String, String> headerData = {
        "Content-Type": "application/json",
        "Authorization": token
      };
      Response response = await post(
        Uri.parse(url),
        headers: headerData,
        body: jsonEncode(data),
      ).timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    return responseJson;
  }

  @override
  Future getPostLoginApiResponse(
    String url,
    dynamic data,
  ) async {
    dynamic responseJson;
    try {
      print(data);
      Map<String, String> headerData = {
        "Content-Type": "application/json",
      };
      Response response = await post(
        Uri.parse(url),
        headers: headerData,
        body: jsonEncode(data),
      ).timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 500:
      case 404:
        throw UnauthorisedException(response.body.toString());
      default:
        throw FetchDataException(
            'Error accured while communicating with serverwith status code${response.statusCode}');
    }
  }
}
