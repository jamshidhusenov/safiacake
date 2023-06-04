import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicial_app/pages/credit_card.dart';

class ViewAccountsPage extends StatelessWidget {
  const ViewAccountsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffF6E0ED),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(child: Image(image: AssetImage("assets/images/logo.png",),width: 300,),),
              const SizedBox(height: 40,),
              ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor: Colors.pinkAccent,
                  fixedSize: Size(MediaQuery.of(context).size.width, 60),
                ),
                child: const Text(
                  "Account",
                  style: TextStyle(fontSize: 20),
                ),
              ), const SizedBox(height: 40,),
              ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor: Colors.pinkAccent,
                  fixedSize: Size(MediaQuery.of(context).size.width, 60),
                ),
                child: const Text(
                  "Checking Account",
                  style: TextStyle(fontSize: 20),
                ),
              ), const SizedBox(height: 40,),
              ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor: Colors.pinkAccent,
                  fixedSize: Size(MediaQuery.of(context).size.width, 60),
                ),
                child: const Text(
                  "Savings Account",
                  style: TextStyle(fontSize: 20),
                ),
              ), const SizedBox(height: 40,),
              ElevatedButton(
                onPressed: () {
                Navigator.of(context).pushNamed("/creditcard");
                },
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor: Colors.pinkAccent,
                  fixedSize: Size(MediaQuery.of(context).size.width, 60),
                ),
                child: const Text(
                  "Credit Card Balance",
                  style: TextStyle(fontSize: 20),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
