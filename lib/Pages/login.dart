import 'package:firstproject/Pages/OtpPage.dart';
import 'package:firstproject/Pages/passwordPage.dart';
import 'package:firstproject/Pages/registerPage.dart';
import 'package:flutter/material.dart';

import 'googlePage.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  var _formkey = GlobalKey<FormState>();
  bool _isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formkey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10),
                        ),
                      ),
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
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10),
                          ),
                        ),
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
                          return 'email cannot be left empty';
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Enter your email',
                          labelText: 'Email',
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
                      obscureText: _isPasswordHidden,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'password cannot be left empty';
                        }
                        if (value.length < 6) {
                          return 'Password must contains 6 characters';
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        labelText: 'Password',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                        suffixIcon: IconButton(
                          icon: Icon(_isPasswordHidden
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isPasswordHidden = !_isPasswordHidden;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => passwordPage()));
                      },
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(fontSize: 14, fontFamily: 'Cabin'),
                      ),
                    ),
                    alignment: Alignment.centerRight,
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
                          'LOGIN',
                          style: TextStyle(fontSize: 22, fontFamily: 'Cabin',color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(" Not signed up yet?",style: TextStyle(fontFamily: 'Cabin',fontSize: 16),),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => registerPage()));
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(color: Color(0xFF4554DF),fontFamily: 'Cabin',fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
