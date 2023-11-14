import 'package:flutter/material.dart';
import 'package:flutter_application_4/donation.dart';
import 'package:flutter_application_4/payment.dart';

int sar = 0;

class types extends StatefulWidget {
  const types({super.key});

  @override
  State<types> createState() => _statusTypes();
}

class _statusTypes extends State<types> {
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
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Image.asset(
                            'assets/icons/plant.png',
                            width: 60,
                          ),
                        ),
                        Container(
                          child: Container(
                              child: InkWell(
                            onTap: () {
                              sar = 6;
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const payment();
                              }));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/tree11.png",
                                  ),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 120, vertical: 100),
                              margin: EdgeInsets.only(bottom: 20),
                            ),
                          )),
                        ),
                        Container(
                          child: Container(
                              child: InkWell(
                            onTap: () {
                              sar = 5;
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const payment();
                              }));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    "assets/images/tree2.png",
                                  ),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 120, vertical: 100),
                              margin: EdgeInsets.only(bottom: 20),
                            ),
                          )),
                        ),
                        Container(
                          child: Container(
                              child: InkWell(
                            onTap: () {
                              sar = 7;
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const payment();
                              }));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    "assets/images/tree3.png",
                                  ),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 120, vertical: 100),
                              margin: EdgeInsets.only(bottom: 20),
                            ),
                          )),
                        ),
                        Container(
                          child: Container(
                              child: InkWell(
                            onTap: () {
                              sar = 4;
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const payment();
                              }));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    "assets/images/tree4.png",
                                  ),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 120, vertical: 100),
                              margin: EdgeInsets.only(bottom: 20),
                            ),
                          )),
                        ),
                      ])),
            )));
  }
}
