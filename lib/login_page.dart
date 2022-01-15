import 'package:firebasechat_app/signup_page.dart';
import 'signup_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'form_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const idScreen = "/login_page";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  //This key will be used to identify the state of the form.
  final _formKey = GlobalKey<FormState>();
//   r'^
//   (?=.*[A-Z])       // should contain at least one upper case
//   (?=.*[a-z])       // should contain at least one lower case
//   (?=.*?[0-9])      // should contain at least one digit
//   (?=.*?[!@#\$&*~]) // should contain at least one Special character
//   .{8,}             // Must be at least 8 characters in length
// // $
  // String? validatePassword(String value) {
  //   String _email = '';
  //   String _password = '';
  //   RegExp regex =
  //       RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  // }

  bool _passwordObscured = false;
  final _controller = TextEditingController();

  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    // to hide password

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // this widget to avoid striped yellow black background

        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Center(
                child: Container(
                  width: w,
                  height: h * 0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "img/loginimg.png",
                      ),
                      fit: BoxFit.cover,
                      // this to make image fit the whole container
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                width: w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style:
                          TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "  Sign into your account",
                      style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    // we wrapped textfield to add box shadow when focussed
                    Container(
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
                      child: Form(
                        child: TextField(
                          
                          keyboardType: TextInputType
                              .emailAddress, // this so that the '@' apear on the keyboard
                          decoration: InputDecoration(
                              labelText: 'Enter Email adress',
                              hintText: ' you@exemle.com',
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1.0)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
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
                        child: TextFormField(
                          obscureText:
                              _passwordObscured, // hier we set the obscure text to our bool var
                          decoration: InputDecoration(
                              hintText: 'Enter your password',
                              suffix: InkWell(
                                  onTap: _togglePasswordView,
                                  child: Icon(
                                    _passwordObscured
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1.0)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Text(
                          "Forgot your password?",
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[500]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2,
              ),

              // sign in button
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: w * 0.5,
                  height: h * 0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage(
                          "img/loginbtn.png",
                        ),
                        fit: BoxFit
                            .cover // this to make image fit the whole container
                        ),
                  ),
                  child: Center(
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              // footer
              // to separate footer from sign in
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 16.0),
              //   child: ElevatedButton(
              //     onPressed: () {
              //       // Validate returns true if the form is valid, or false otherwise.
              //       if (_formKey.currentState!.validate()) {
              //         // If the form is valid, display a snackbar. In the real world,
              //         // you'd often call a server or save the information in a database.
              //         ScaffoldMessenger.of(context).showSnackBar(
              //           const SnackBar(content: Text('Processing Data')),
              //         );
              //       }
              //     },
              //     child: const Text('Submit'),
              //   ),
              SizedBox(
                height: w * 0.01,
              ),
              Stack(
                clipBehavior: Clip.none,
                // this is so that we can move the text'create' without beeing hidden
                children: [
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Don\'t have an account ?",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(SignUpPage.idScreen);
                    },
                    child: Align(
                      alignment: Alignment(0.64, 1.00),
                      child: Text(
                        "  Create",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _passwordObscured = !_passwordObscured;
    });
  }
}
