import 'package:flutter/material.dart';

class googlePage extends StatefulWidget {
  const googlePage({Key? key}) : super(key: key);

  @override
  State<googlePage> createState() => _googlePageState();
}

class _googlePageState extends State<googlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC0C0C0),
      body: SafeArea(child: Text('Continue from Google and Facebook',style: TextStyle(color: Colors.red),)),
    );
  }
}