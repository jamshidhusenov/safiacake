import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medicial_app/pages/view_accounts.dart';

import '../database/user.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  State<PasswordPage> createState() => _PasswordPage();
}

class _PasswordPage extends State<PasswordPage> {
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
                      hintText: "Email address",
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
                      if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(item!)) {
                        return null;
                      }
                      return "invalid email";
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_kalit.currentState!.validate()) {
                        Navigator.of(context).pushReplacementNamed("/viewaccount");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
                      backgroundColor: Colors.pinkAccent,
                      fixedSize: Size(MediaQuery.of(context).size.width, 60),
                    ),
                    child: const Text(
                      "Send password",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
