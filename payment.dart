import 'package:flutter/material.dart';
import 'package:flutter_application_4/thankyou.dart';
import 'package:flutter_application_4/donation.dart';

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
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
                          'assets/icons/hand.png',
                          width: 60,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "card info:",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 48, 102, 66),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 214, 227, 219),
                            hintText: 'Card No.',
                            prefixIcon: Icon(Icons.add_card_outlined),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 214, 227, 219),
                                    width: 1.0)),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 214, 227, 219),
                                    width: 1.0)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 214, 227, 219),
                                    width: 1.0))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 214, 227, 219),
                            hintText: 'Card Name',
                            prefixIcon: Icon(Icons.abc_outlined),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 214, 227, 219),
                                    width: 1.0)),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 214, 227, 219),
                                    width: 1.0)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 214, 227, 219),
                                    width: 1.0))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 214, 227, 219),
                            hintText: 'PIN',
                            prefixIcon: Icon(Icons.password),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 214, 227, 219),
                                    width: 1.0)),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 214, 227, 219),
                                    width: 1.0)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 214, 227, 219),
                                    width: 1.0))),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 200),
                            child: MaterialButton(
                              /////navg//////
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const donation();
                                }));
                              },
                              //////////////
                              elevation: 5.0,
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide.none),
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 60),
                              color: Color.fromARGB(255, 48, 102, 66),
                              child: Text('prev',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 200),
                            child: MaterialButton(
                              /////navg//////
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const thankyou();
                                }));
                              },
                              //////////////
                              elevation: 5.0,
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide.none),
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 60),
                              color: Color.fromARGB(255, 48, 102, 66),
                              child: Text('Next',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ],
                      )
                    ]))));
  }
}
