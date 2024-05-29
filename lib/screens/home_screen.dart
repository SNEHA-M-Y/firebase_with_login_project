import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_with_login_project/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            FirebaseAuth.instance.signOut().then((onValue) {
              log("Signed Out");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignInScreen(),
                ),
              );
            });
          },
          child: Text("Log Out")),
    );
  }
}
