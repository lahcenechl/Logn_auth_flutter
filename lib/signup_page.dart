import 'dart:ui';
import 'package:firebasechat_app/login_page.dart';
import 'login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static const String idScreen = "/signup";

  @override
  Widget build(BuildContext context) {
    List images = ["g.png", "f.png", "t.png"];
    double w = MediaQuery.of(context).size.width;
    double? h = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          // with scrollchildview the page turn blank and lot of errors thats why listview was the solution
          // child: ListView(
          // this widget to avoid striped yellow black background

          // child: Column(
          children: [
            Container(
                width: w,
                height: h * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "img/signup.png",
                    ),
                    fit: BoxFit.fill,

                    // this to make image fit the whole container
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: h * 0.1,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      radius: 60,
                      backgroundImage: AssetImage("img/group.png"),
                    ),
                  ],
                )),

            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  // we wrapped textfield to add box shadow when focussed
                  Center(
                    child: Container(
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            //// this will remove the background grey color but the one on the side will stay
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.2))
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Enter your Email adress",
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.deepOrangeAccent,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1.0)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Container(
                        // need to wrap container in a widget 'center' otherwise width will not take place
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors
                                .white, // this will remove the background grey color but the one on the side will stay
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.2))
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Enter your password",
                              prefixIcon: Icon(
                                Icons.password,
                                color: Colors.deepOrangeAccent,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1.0)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        )),
                  ),

                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: Container(),
                  //     ),
                  //     Text(
                  //       "Forgot your password?",
                  //       style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            // sign in button
            Center(
              child: Container(
                width: 180,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(
                        "img/loginbtn.png",
                      ),
                      fit: BoxFit.cover
                      //// this to make image fit the whole container
                      ),
                ),
                child: Center(
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // TextButton(
            //   onPressed: () {
            //     // Navigator.of(context).pushNamed(LoginPage.idScreen);
            //   },
            //   child: Text(
            //     "  Already have an Account?",
            //     style: TextStyle(
            //       color: Colors.black,
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            // RichText(
            //   text: TextSpan(
            //     recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
            //     text: 'Already have an account',
            //     style: TextStyle(
            //       fontSize: 20,
            //       color: Colors.grey[500],
            //     ),
            //   ),
            // ),
            //footer
            // to separate footer from sign in
            SizedBox(
              height: w * 0.07,
            ),

            Container(
              margin: EdgeInsets.only(
                  bottom: h * 0.03,
                  left: w *
                      0.2), // dont use const on edgesets otherwise nullsafety error
              child: RichText(
                text: TextSpan(
                  text: "Sign up using one of the following methods",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Spacer(),
            // ConstrainedBox(
            //   // constraints: new BoxConstraints(
            //   //   maxHeight: 0,
            //   //   minWidth: 0,
            //   // ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Center(
                  child: Container(
                    width: 220,
                    height: 50,
                    margin: EdgeInsets.only(
                      bottom: h * 0.03,
                      left: 120,
                      right: 120,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        primary: Colors.black,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Sign Up with Google",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // ),
            // instead of forelooping we use the wrap widget that takes two argument
            // Wrap(
            //   spacing: 8.0,
            //   children: List<Widget>.generate(
            //       3, // how many element will loop trough
            //       (index) => CircleAvatar(
            //             // hier we loop throup images
            //             // this radius has to be bigger because the other circleavatar is sitting inside of the circleavatar
            //             radius: 25,
            //             backgroundColor: Colors.grey[500],
            //             child: CircleAvatar(
            //               radius: 20,
            //               backgroundImage: AssetImage("img/" +
            //                   images[
            //                       index]), // the image list is declared on the top
            //             ),
            //           )),
            // ),
            // to create space between the bottomn and logos
            // Align(
            //   child: SizedBox(
            //     height: 50,
            //   ),
            // ),
          ],
        ),
        // ),
        // ),
      ),
    );
  }
}
