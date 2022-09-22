import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC0C0C0),
      body: SafeArea(
        child: Text('Book Page'),
      ),
    );
  }
}
