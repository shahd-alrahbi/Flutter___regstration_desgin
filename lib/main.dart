import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset("assets/login.png"),
                  ),
                  Text(
                    "Create An Account",
                    style: TextStyle(fontSize: 15),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        labelText: "Name"),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        labelText: "Phone"),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        labelText: "Email Address"),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        labelText: "Enter Password"),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        labelText: "Confirm Password"),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 74, 16, 141)),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.white)),
                      onPressed: () {},
                      child: Text("Create Account")),
                  SizedBox(height: 10),
                  TextButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black)),
                      onPressed: () {},
                      child: Text("Sing In", style: TextStyle(fontSize: 15))),
                  TextButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black)),
                      onPressed: () {},
                      child: Text("Reset Password",
                          style: TextStyle(fontSize: 15))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
