import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stackerbee_app/data/response/api_response.dart';
import 'package:stackerbee_app/model/login_model.dart';
import 'package:stackerbee_app/model/user_model.dart';
import 'package:stackerbee_app/respository/login_respository.dart';
import 'package:stackerbee_app/utils/utils.dart';
import 'package:stackerbee_app/view/Pages/purchase_order.dart';
import 'package:stackerbee_app/view_model/user_view_model.dart';

class LoginViewModel with ChangeNotifier {
  final _myRepo = LoginRepository();
  ApiResponse<LoginModel> DataList = ApiResponse.loading();

  setDataList(ApiResponse<LoginModel> response) {
    DataList = response;
    notifyListeners();
  }

  Future<void> fetchLoginApi(dynamic data, BuildContext context) async {
    setDataList(ApiResponse.loading());

    try {
      Map<String, dynamic> response = await _myRepo.loginApi(data);
      print("API Response: $response");

      LoginModel loginModel = LoginModel.fromJson(response);
      setDataList(ApiResponse.completed(loginModel));
      final userPreference = Provider.of<UserViewModel>(context, listen: false);
      final newToken = "Token " +
          response['message']['api_key'] +
          ":" +
          response['message']['api_secret'];
      final prefsToken = await SharedPreferences.getInstance();
      prefsToken.setString('token', newToken);
      prefsToken.setString('name', response['full_name'].toString());
      prefsToken.setString('email', response['message']['email'].toString());
      print(prefsToken.get('token'));
      print("email is");
      print(response['message']['email']);
      userPreference.saveUser(UserModel(
        token: newToken,
      ));

      Utils.flushBarErrorMessage('Login Successfully', context);
      // Show Dialog
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialogBox();
          });
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => ShowDialog()));
      //Navigator.pushNamed(context, RoutesName.layout);
    } catch (error) {
      print("error is $error");
      setDataList(ApiResponse.error(error.toString()));
    }
  }
}

//Pop-up Dialog Box for Login
class AlertDialogBox extends StatelessWidget {
  const AlertDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        width: 325,
        height: 400,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.values.last,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 325,
                  height: 90,
                  decoration: const BoxDecoration(
                      color: Color(0xffEC642A),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8))),
                ),
                const SizedBox(height: 70),
                const Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Text(
                    "There is an active session running with your ID.",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 50),
                //Button navigation
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Clicking",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: SizedBox(
                        width: 60,
                        height: 40,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff391F84),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                            onPressed: () {
                              //Button Navigation
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PurchaseOrderPage()));
                            },
                            child: const Text(
                              "YES",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 195, 196, 197),
                                  fontSize: 15,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w600),
                            )),
                      ),
                    ),
                    const Text(
                      "will log you out of",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      " that session else Click",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600),
                    ),
                    //No Button
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: SizedBox(
                        width: 60,
                        height: 40,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffEC642A),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "NO",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 195, 196, 197),
                                  fontSize: 15,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w600),
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Positioned(
              top: 50,
              child: SizedBox(
                width: 80,
                height: 80,
                child: Card(
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.priority_high_sharp,
                    size: 60,
                    color: Color(0xffEC642A),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
