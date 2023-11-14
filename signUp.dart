import 'package:flutter/material.dart';
import 'package:flutter_application_4/login.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('SignUp'),
            backgroundColor: Color.fromARGB(255, 48, 102, 66)),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: <Widget>[
                const SizedBox(height: 200),
                Image.asset('assets/images/logo.png'),

                //===========email=============//

                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 214, 227, 219),
                      hintText: 'Email',
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
                const SizedBox(height: 20),

                //===========name=============//

                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 214, 227, 219),
                      hintText: 'name',
                      prefixIcon: Icon(Icons.abc),
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
                const SizedBox(height: 20),

                //===========password=============//

                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 214, 227, 219),
                      hintText: 'Password',
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
                const SizedBox(height: 50),

                //already have an account
                GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const LoginScreen();
                      }));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?  ",
                            style: TextStyle(
                              color: Color.fromARGB(255, 48, 102, 66),
                              fontSize: 16,
                            )),
                        Text("Sign in",
                            style: TextStyle(
                                color: Color.fromARGB(255, 48, 102, 66),
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ],
                    )),
                orDriver(),
              ]),
            ))));
  }
}

class orDriver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: size.width * 0.4,
        child: Column(
          children: [
            Row(
              children: <Widget>[
                buildDivider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("OR",
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.w600)),
                ),
                buildDivider(),
              ],
            ),
            Row(
              children: [],
            )
          ],
        ));
  }

  Expanded buildDivider() => Expanded(
        child: Divider(
          color: Colors.black87,
          height: 1.5,
        ),
      );
}
