import 'package:stackerbee_app/view/res/app_url.dart';
import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiService.dart';

class LoginRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  //user login
  Future<Map<String, dynamic>> loginApi(dynamic data) async {
    try {
      print("login api success ");
      dynamic response =
          await _apiServices.getPostLoginApiResponse(AppUrl.loginEndPint, data);
      print(response);
      return response;
    } catch (e) {
      print("login api not successful error");
      print(e);
      rethrow;
    }
  }
}
