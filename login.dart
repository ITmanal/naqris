import 'package:flutter/material.dart';
import 'package:flutter_application_4/forgetpassword.dart';
import 'package:flutter_application_4/signUp.dart';
import 'package:flutter_application_4/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          //fields
          child: SingleChildScrollView(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 200),
                Image.asset('assets/images/logo.png'),
                //email
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
                //passsword
                const SizedBox(height: 50),
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
                ///////////log in button/////////////
                MaterialButton(
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
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                  color: Color.fromARGB(255, 48, 102, 66),
                  child: Text('Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 20),

                //forgett the pass
                GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Password();
                      }));
                    },
                    child: Text("Forget the password ? ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 48, 102, 66),
                          fontSize: 20,
                        ))),
                const SizedBox(height: 20),

                //sign up
                GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const signUp();
                      }));
                    },
                    child: Text("Sign Up",
                        style: TextStyle(
                          color: Color.fromARGB(255, 48, 102, 66),
                          fontSize: 20,
                        )))
              ],
            ),
          ))),
    ));
  }
}
