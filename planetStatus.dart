import 'package:flutter/material.dart';
import 'package:flutter_application_4/donation.dart';

class status extends StatefulWidget {
  const status({super.key});

  @override
  State<status> createState() => _statusState();
}

class _statusState extends State<status> {
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
                          'assets/icons/plant.png',
                          width: 60,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          child: Text(
                        "!مرحبــا  ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 48, 102, 66),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                      Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                          child: new Center(
                            child: Text(
                              "\n : الحي \n\n : اسم النبات \n\n : مراحل النمو \n\n : العمر ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 48, 102, 66),
                                  fontSize: 22),
                              textAlign: TextAlign.end,
                            ),
                          )),
                      SizedBox(
                        height: 120,
                      ),
                      Image.asset("assets/images/status.png")
                    ]))));
  }
}
