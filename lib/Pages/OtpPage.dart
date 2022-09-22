import 'package:firstproject/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
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
            const Center(
                child: Text(
              "We'll send 6 digit verification code",
              style: TextStyle(
                fontFamily: 'Cabin',
                fontSize: 18,
                color: Color(0xFF958A8A),
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Enter Code",
                style: TextStyle(
                    fontFamily: 'Cabin',
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: 50,
                        child: TextField(
                            autofocus: true,
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                counter: Offstage(),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                filled: true,
                                fillColor: Colors.white),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            })),
                    SizedBox(
                        width: 50,
                        child: TextField(
                            autofocus: true,
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                counter: Offstage(),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                filled: true,
                                fillColor: Colors.white),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            })),
                    SizedBox(
                        width: 50,
                        child: TextField(
                            autofocus: true,
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                counter: Offstage(),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                filled: true,
                                fillColor: Colors.white),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            })),
                    SizedBox(
                        width: 50,
                        child: TextField(
                            autofocus: true,
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                counter: Offstage(),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                filled: true,
                                fillColor: Colors.white),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            })),
                    SizedBox(
                        width: 50,
                        child: TextField(
                            autofocus: true,
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                counter: Offstage(),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                filled: true,
                                fillColor: Colors.white),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            })),
                    SizedBox(
                        width: 50,
                        child: TextField(
                            autofocus: true,
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                counter: Offstage(),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                filled: true,
                                fillColor: Colors.white),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            })),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFF4554DF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                      child: Text(
                    'Verify',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cabin',
                        fontSize: 25,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Didn't Receive code?",
                  style: TextStyle(fontFamily: 'Cabin',fontSize: 15),
                ),
                TextButton(
                    onPressed:  () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Check your mail'),
                        content: const Text('Verification Code has been sent.'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    ),
                    child: const Text(
                      'Resend',
                      style: TextStyle(
                        fontSize: 15,
                          color: Color(0xFF4554DF),
                          fontFamily: 'Cabin'),
                    ))
              ],
            )
          ],
        ),
      ),
    );
    ;
  }
}
