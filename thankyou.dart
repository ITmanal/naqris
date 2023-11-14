import 'package:flutter/material.dart';
import 'package:flutter_application_4/home.dart';

class thankyou extends StatefulWidget {
  const thankyou({super.key});

  @override
  State<thankyou> createState() => _thankyouState();
}

class _thankyouState extends State<thankyou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 48, 102, 66),
        body: Container(
            margin: EdgeInsets.only(top: 120),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
              color: Colors.white,
            ),
            child: Container(
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Image.asset(
                          'assets/icons/heart.png',
                          width: 60,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 170,
                        padding: const EdgeInsets.all(19.0),
                        margin: EdgeInsets.only(top: 20),
                      ),
                      Container(
                        child: Text(
                          "\n \nشكرا لك ، لقد تم استلام طلبك",
                          style: TextStyle(
                              color: Color.fromARGB(255, 48, 102, 66),
                              fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]))));
  }
}
