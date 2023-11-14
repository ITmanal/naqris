import 'package:flutter/material.dart';

class goals extends StatefulWidget {
  const goals({super.key});

  @override
  State<goals> createState() => _goalsState();
}

class _goalsState extends State<goals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/leaf.png",
                ),
                SizedBox(
                  width: 32,
                ),
                Image.asset("assets/images/leaf.png"),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "من نحــــــــن ؟",
                style: TextStyle(
                    color: Color.fromARGB(255, 48, 102, 66), fontSize: 25),
                textAlign: TextAlign.end,
              ),
            ),
            Container(
              child: Text(
                "  ولدت فكرة نغرُس تضامنًا مع مشروع الرياض الخضرا الذي يندرج تحت اكبر مشاريع رؤية ٢٠٣٠.ويسهم مشروع نغرُس في اتاحة الفرصة لابناء الوطن بالدعم والمشاركه في زيادة نسبة المساحات الخضراء عن طريق برنامج",
                style: TextStyle(
                    color: Color.fromARGB(255, 48, 102, 66), fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Image.asset("assets/images/naqrs.png")
          ],
        )));
  }
}
