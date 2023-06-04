import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreditCardPage extends StatefulWidget {
  const CreditCardPage({Key? key}) : super(key: key);

  @override
  State<CreditCardPage> createState() => _CreditCardPageState();
}

class _CreditCardPageState extends State<CreditCardPage> {
  int balance = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6E0ED),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "$balance USD",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                width: 400,
                height: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/card1.png"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
             Row(
              children: [
                const Spacer(
                  flex: 20,
                ),
                IconButton(
                  onPressed: () {

                  },
                  icon: const Icon(
                    CupertinoIcons.add_circled,
                    size: 30,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const Text(
                  "Add Card",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(
                  flex: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Colors.pinkAccent,
                    fixedSize: Size(180, 60),
                  ),
                  child: const Text(
                    "Send Money",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Colors.pinkAccent,
                    fixedSize: Size(180, 60),
                  ),
                  child: const Text(
                    "Add to balance",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
