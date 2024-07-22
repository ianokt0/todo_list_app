// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // controller
  TextEditingController myController = TextEditingController();
  // greeting message
  String greetingMessage = "";
  // function greet user
  void greetUser() {
    setState(() {
      greetingMessage = "Hello, " + myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // greet user message
            Text(greetingMessage),

            // textfield
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type your name...",
              ),
              controller: myController,
            ),

            // button
            ElevatedButton(onPressed: greetUser, child: Text("Tap Me!"))
          ]),
        ),
      ),
    );
  }
}
