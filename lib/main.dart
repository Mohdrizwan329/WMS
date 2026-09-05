// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stackerbee_app/login_page.dart';
import 'package:stackerbee_app/view_model/user_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserViewModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Inter',
          primarySwatch: Colors.deepOrange,
        ),
        debugShowCheckedModeBanner: false,
        // initialRoute: RoutesName.splash,
        // onGenerateRoute: Routes.generateRoute,
        home: LoginPage(),
      ),
    );
    // MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     primaryColor: Colors.amber,
    //   ),
    //   home: LoginPage(),
    // );
  }
}
