import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: null,
        ),
        title: const Text(
          'OTP Verification',
          style: TextStyle(
            fontFamily: 'Cabin',
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Center(
            //     child: Text(
            //   "We'll send 6 digit verification code",
            //   style: TextStyle(
            //     fontFamily: 'Cabin',
            //     fontSize: 18,
            //     color: Colors.grey,
            //   ),
            // )),
            // const SizedBox(
            //   height: 20,
            // ),
            // const Padding(
            //   padding: EdgeInsets.only(left: 30),
            //   child: Text(
            //     "Enter Code",
            //     style: TextStyle(
            //         fontFamily: 'Cabin',
            //         fontSize: 20,
            //         color: Colors.black,
            //         fontWeight: FontWeight.bold),
            //   ),
            // ),
            Container(
              color: Colors.cyan,
              width: 30,
              child: TextField(
                enabled: false,
                maxLength: 1,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: '1', contentPadding: const EdgeInsets.all(19), border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),filled: true,fillColor: Colors.blueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
