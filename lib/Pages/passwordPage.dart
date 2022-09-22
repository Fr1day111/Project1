import 'package:flutter/material.dart';

class passwordPage extends StatefulWidget {
  const passwordPage({Key? key}) : super(key: key);

  @override
  State<passwordPage> createState() => _passwordPageState();
}

class _passwordPageState extends State<passwordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC0C0C0),
      body: SafeArea(child: Text('Change password here',style: TextStyle(color: Colors.red),)),

    );
  }
}
