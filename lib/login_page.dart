// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stackerbee_app/utils/color.dart';
import 'package:stackerbee_app/view/Pages/purchase_order.dart';
import 'package:stackerbee_app/view_model/login_view_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);

  bool _passwordvisible = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // FocusNode emailFocusNode = FocusNode();
  // FocusNode passwordFocusNode = FocusNode();

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   _emailController.dispose();
  //   _passwordController.dispose();
  //   emailFocusNode.dispose();
  //   passwordFocusNode.dispose();
  //   _obsecurePassword.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Provider<LoginViewModel>(
        create: (_) => LoginViewModel(),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primarySwatch: Colors.orange),
            home: Scaffold(
              body: SafeArea(
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.96,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/bg_sb.png'),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: 180,
                          child: Image(
                              image: AssetImage("assets/images/logo_sb.png"))),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 30),
                              Center(
                                child: Text(
                                  "Welcome !",
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Color(0xff391F84),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'inter'),
                                ),
                              ),
                              SizedBox(height: 30),
                              //Email
                              Center(
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    elevation: 2,
                                    shadowColor: Color(0xff391F84),
                                    child: TextFormField(
                                      controller: _emailController,
                                      decoration: InputDecoration(
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide.none),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Email',
                                          hintStyle: TextStyle(
                                              color: Color(0xff391F84),
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              //Password
                              Center(
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    elevation: 2,
                                    shadowColor: darkBlue,
                                    child: TextFormField(
                                      controller: _passwordController,
                                      obscureText: _passwordvisible,
                                      decoration: InputDecoration(
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide.none),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Password',
                                          suffixIcon: IconButton(
                                            icon: Icon(
                                                _passwordvisible
                                                    ? Icons
                                                        .visibility_off_outlined
                                                    : Icons.visibility_outlined,
                                                color: Color(0xff391F84)),
                                            onPressed: () {
                                              setState(() {
                                                _passwordvisible =
                                                    !_passwordvisible;
                                              });
                                            },
                                          ),
                                          hintStyle: TextStyle(
                                              color: Color(0xff391F84),
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              //Button Login;
                              Center(
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  height: 46,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffEC642A),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5))),
                                    onPressed: () {
                                      //Show Dialog
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialogBox();
                                        },
                                      );
                                      // if (_emailController.text.isEmpty) {
                                      //   Utils.flushBarErrorMessage(
                                      //       'Please enter email', context);
                                      // } else if (_passwordController
                                      //     .text.isEmpty) {
                                      //   Utils.flushBarErrorMessage(
                                      //       'Please enter password', context);
                                      // } else if (_passwordController
                                      //         .text.length <
                                      //     6) {
                                      //   Utils.flushBarErrorMessage(
                                      //       'Please enter 6 digit password',
                                      //       context);
                                      // } else {
                                      //   Map<String, String> data = {
                                      //     'usr': _emailController.text
                                      //         .toString(),
                                      //     'pwd': _passwordController.text
                                      //         .toString(),
                                      //   };

                                      //   LoginViewModel()
                                      //       .fetchLoginApi(data, context);
                                      // }
                                    },
                                    child: Center(
                                      child: Text(
                                        "Login",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: InkWell(
                                  child: Text(
                                    "Forgot Password ?",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xff391F84),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'roboto'),
                                  ),
                                  onTap: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
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
        decoration: BoxDecoration(color: Colors.transparent),
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
                              maxLines: 1,
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
              top: 50,
            ),
          ],
        ),
      ),
    );
  }
}
