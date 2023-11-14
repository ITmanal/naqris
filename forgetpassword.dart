import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Forget password"),
          backgroundColor: Color.fromARGB(255, 48, 102, 66)),
      body: Container(
        margin: EdgeInsets.only(top: 300),
        child: Column(
          children: [
            Text(
              "you will receive verification email",
              style: TextStyle(
                  color: Color.fromARGB(255, 48, 102, 66), fontSize: 25),
              textAlign: TextAlign.end,
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 214, 227, 219),
                    hintText: 'email',
                    prefixIcon: Icon(Icons.email),
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
            ),
          ],
        ),
      ),
    );
  }
}
