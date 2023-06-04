import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicial_app/pages/credit_card.dart';
import 'package:medicial_app/pages/login_page.dart';
import 'package:medicial_app/pages/reset_password.dart';
import 'package:medicial_app/pages/view_accounts.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        "/":(context)=>const LoginPage(),
        "/viewaccount":(context)=>const ViewAccountsPage(),
        "/password":(context)=>const PasswordPage(),
        "/creditcard":(context)=>const CreditCardPage(),
      },
    );
  }
}
