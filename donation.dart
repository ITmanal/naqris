import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter_application_4/payment.dart';
import 'package:flutter_application_4/home.dart';
import 'package:flutter_application_4/planetTypes.dart';

String selected = "";

class donation extends StatefulWidget {
  const donation({super.key});

  @override
  State<donation> createState() => _donationState();
}

class _donationState extends State<donation> {
  var selectedarea = "Al Murabba";

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
                        width: double.infinity,
                        height: 170,
                        padding: const EdgeInsets.all(19.0),
                        margin: EdgeInsets.only(top: 20),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Text(
                          ": الأماكــــن المتاحة للتبرع",
                          style: TextStyle(
                              color: Color.fromARGB(255, 48, 102, 66),
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                                color: Color.fromARGB(255, 171, 202, 187),
                                width: 2)),
                        child: DropdownButton(
                          icon: Icon(Icons.arrow_drop_down),
                          isExpanded: true,
                          iconSize: 42,
                          underline: SizedBox(),
                          items: [
                            "Al Aziziyah (Riyadh)",
                            "Al Badiah (Riyadh)",
                            "Al Bateha (Riyadh)",
                            "Al Daho",
                            "Al Dubiyah (Riyadh)",
                            "Al Faisaliyyah (Riyadh)",
                            "Al Hamra (Riyadh)",
                            "Al Malazz (Riyadh)",
                            "Al Mansurah (Riyadh)",
                            "Al Marqab (Riyadh)",
                            "Al Masaniʽ (Riyadh)",
                            "Al Murabba",
                            "Al Nafal (Riyadh)",
                            "Al Olaya (Riyadh)",
                            "Al Oud",
                            "Al Qiri (Riyadh)",
                            " Al Rabwah (Riyadh)",
                            "Al Salihiyah (Riyadh)",
                            "Al Wizarat (Riyadh)",
                            "Al Wusaita (Riyadh)",
                            "Al Yamamah (Riyadh)",
                            "Al-Suwaidi (Riyadh)",
                            "Al-Urayja"
                          ]
                              .map((e) => DropdownMenuItem(
                                  child: Text(
                                    "$e",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 171, 202, 187),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  value: e))
                              .toList(),
                          onChanged: (String? val) {
                            selectedarea = val!;
                            selected = selectedarea;
                          },
                          value: selectedarea,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 270),
                            child: MaterialButton(
                              /////navg//////
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const Home();
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
                            margin: EdgeInsets.only(top: 270),
                            child: MaterialButton(
                              /////navg//////
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const types();
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
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      )
                    ]))));
  }
}
