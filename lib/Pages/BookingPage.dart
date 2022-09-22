import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'BookingPage',
      style: TextStyle(fontFamily: 'Cabin',fontWeight: FontWeight.bold,fontSize: 30),
    );
  }
}
