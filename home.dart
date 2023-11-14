import 'package:flutter/material.dart';
import 'package:flutter_application_4/login.dart';
import 'package:flutter_application_4/donation.dart';
import 'package:flutter_application_4/voulnteer.dart';
import 'package:flutter_application_4/planetStatus.dart';
import 'package:flutter_application_4/goalsVisions.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 48, 102, 66),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 48, 102, 66),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60),
            ),
            color: Colors.white,
          ),
          //==================================================//
          child: Container(
            width: double.infinity,
            //============contents=========//
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ///img///
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    'assets/icons/i1.png',
                    width: 60,
                  ),
                ),

                ///===butttons===///
                //==================button 1=================//
                Container(
                  width: double.infinity,
                  height: 170,
                  padding: const EdgeInsets.all(19.0),
                  margin: EdgeInsets.only(top: 20),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const donation();
                      }));
                    },
                    icon: Icon(
                      // <-- Icon
                      Icons.attach_money_outlined,
                      size: 50.0,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 165, 207, 181),
                        shadowColor: Color.fromARGB(255, 132, 154, 140),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    label: Container(
                      child: Text('                   تبـــــــــــرع',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w800)),
                    ),
                  ),
                  //==================button 2=================//
                ),
                Container(
                  width: double.infinity,
                  height: 170,
                  padding: const EdgeInsets.all(19.0),
                  margin: EdgeInsets.only(top: 20),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const voulnteer();
                      }));
                    },
                    icon: Icon(
                      // <-- Icon
                      Icons.volunteer_activism_outlined,
                      size: 50.0,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 165, 207, 181),
                        shadowColor: Color.fromARGB(255, 132, 154, 140),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    label: Container(
                      child: Text('                   تطــــــــوع',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w800)),
                    ), // <-- Text
                  ),
                ),
                //==================button 3=================//
                Container(
                  width: double.infinity,
                  height: 170,
                  padding: const EdgeInsets.all(19.0),
                  margin: EdgeInsets.only(top: 20),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const status();
                      }));
                    },
                    icon: Icon(
                      // <-- Icon
                      Icons.local_florist_outlined,
                      size: 50.0,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 165, 207, 181),
                        shadowColor: Color.fromARGB(255, 132, 154, 140),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    label: Container(
                      child: Text('                   حالة النبـــات',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w800)),
                    ), // <-- Text
                  ),
                ),
                //================who========//
                GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const goals();
                      }));
                    },
                    child: Text("من نحــــــن ؟",
                        style: TextStyle(
                          color: Color.fromARGB(255, 48, 102, 66),
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                        )))
              ],
            ),
          ),
          //===============end========//
        ));
  }
}
