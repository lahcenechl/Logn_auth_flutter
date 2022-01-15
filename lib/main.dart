import 'package:firebasechat_app/signup_page.dart';
import 'package:firebasechat_app/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:firebasechat_app/login_page.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebasechat_app/google_signin.dart';
// import 'package:provider/provider.dart';
import 'package:passwordfield/passwordfield.dart';

// void main() async {
//   WidgetsFlutterBinding
//       .ensureInitialized(); // the app will always initilaise firebase before its start
//   await Firebase.initializeApp();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  // This widget is the root of your application.
  @override
  // Widget build(BuildContext context) => ChangeNotifierProvider(
  //       create: (context) =>
  //           GoogleSignInProvider(), // hier we pass the class name in googlesignin.dart
  //       child: GetMaterialApp(
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        LoginPage.idScreen: (context) => LoginPage(),
        SignUpPage.idScreen: (ctx) => SignUpPage(),
      },
      home: LoginPage(),
    );
    // // );
  }
}
