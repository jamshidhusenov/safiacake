import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medicial_app/pages/reset_password.dart';
import 'package:medicial_app/pages/view_accounts.dart';

import '../database/user.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _kalit = GlobalKey<FormState>();
  bool error = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6E0ED),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _kalit,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  const Center(
                    child: Image(
                      image: AssetImage("assets/images/logo.png"),
                      width: 200,
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  TextFormField(
                    controller: userNameController,
                    decoration: const InputDecoration(
                      errorStyle: TextStyle(fontSize: 15),
                      hintText: "UserName",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.pinkAccent,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.pinkAccent,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    validator: (item) {
                      if (map.containsKey(item)) {
                        return null;
                      }
                      return "UserName Not Found";
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      errorStyle: TextStyle(fontSize: 15),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.pinkAccent,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.pinkAccent,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.red,
                        ),
                      ),
                      hintText: "Password",
                    ),
                    validator: (item) {
                      if (map[userNameController.text] == item) {
                        return null;
                      }
                      return "Error Password";
                    },
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_kalit.currentState!.validate()) {
                        Navigator.of(context).pushReplacementNamed("/viewaccount");
                      } else {
                        setState(() {
                          error = !error;
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
                      backgroundColor: Colors.pinkAccent,
                      fixedSize: Size(MediaQuery.of(context).size.width, 60),
                    ),
                    child: const Text(
                      "Sumbit",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  error
                      ? ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed("/password");
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 4,
                            backgroundColor: Colors.pinkAccent,
                            fixedSize:
                                Size(MediaQuery.of(context).size.width, 60),
                          ),
                          child: const Text(
                            "Password reset",
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      : Text(""),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
