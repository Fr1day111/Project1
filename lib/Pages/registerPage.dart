
import 'package:firstproject/Pages/OtpPage.dart';
import 'package:flutter/material.dart';

import 'googlePage.dart';
import 'login.dart';

class registerPage extends StatefulWidget {
  const registerPage({Key? key}) : super(key: key);

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  var _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('Register'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formkey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30 ),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 350,

                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => googlePage(),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      child: Row(
                        children: [
                          Image.asset('Assets/Icons/Google.png'),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Continue with Google',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Cabin',
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => googlePage(),
                          ),
                        ),
                        child: Row(
                          children: [
                            Image.asset('Assets/Icons/Facebook.png'),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Continue with Facebook',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Cabin',
                                  fontSize: 18),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your full Name';
                        }
                        if (value.split(" ").length == 1) {
                          return 'Enter your full name';
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Enter your full name',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email cannot be left empty.';
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Enter your Email',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Mobile number cannot be left empty';
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Enter your number',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'password cannot be left empty';
                        }
                        if (value.length < 6) {
                          return 'Password must contains 6 charcters';
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Enter your password',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OtpPage(),
                      ),
                    ),
                    child: Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF4554DF),
                      ),
                      child: Center(
                        child: Text(
                          'NEXT',
                          style: TextStyle(fontSize: 22, fontFamily: 'Cabin',color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(" Already Signed up? ",style: TextStyle(fontFamily: 'Cabin',fontSize: 18),),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => loginPage()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Color(0xFF4554DF),fontFamily: 'Cabin',fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


}
