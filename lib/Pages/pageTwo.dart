
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'BookingPage.dart';
import 'login.dart';



class pageTwo extends StatefulWidget {
  const pageTwo({Key? key}) : super(key: key);

  @override
  State<pageTwo> createState() => _pageTwoState();
}

class _pageTwoState extends State<pageTwo> {
  double? _ratingValue;
  IconData? _selectedIcon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: null
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset("Assets/Photos/Car1.png",height: 150,)),
                Row(
                  children: [
                    Text(
                      'Audi AB LLL',
                      style: TextStyle(fontSize: 18, fontFamily: 'Cabin'),
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Rs.3000',
                        style: TextStyle(
                            color: Color(0xFF4554DF),
                            fontFamily: 'Cabin',
                            fontSize: 16),
                        children: const <TextSpan>[
                          TextSpan(
                              text: '/day',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Cabin',
                                  fontSize: 16))
                        ],
                      ),
                    ),
                  ],
                ),
                RatingBar.builder(
                  itemSize: 17,
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding:
                  const EdgeInsets.only(left: 2.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Color(0xFF4554DF),
                  ),
                  onRatingUpdate: (rating) {
                    null;
                  },
                ),

                SizedBox(
                  height: 20,
                ),
                Text(
                  'Specs',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cabin',
                      fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.circular(9), //border corner radius
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Text(
                              'Max power',
                              style: TextStyle(fontFamily: 'Cabin', fontSize: 14),

                            ),
                            Text(
                              '320 Hp',
                              style: TextStyle(fontFamily: 'Cabin', fontSize: 14),
                            ),],
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.circular(9), //border corner radius
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Text(
                              'Top speed',
                              style: TextStyle(fontFamily: 'Cabin', fontSize: 14),

                            ),
                            Text(
                              '220 km/hr',
                              style: TextStyle(fontFamily: 'Cabin', fontSize: 14),
                            ),],
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.circular(9), //border corner radius
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Text(
                              'Motor',
                              style: TextStyle(fontFamily: 'Cabin', fontSize: 14),

                            ),
                            Text(
                              '2500 cc',
                              style: TextStyle(fontFamily: 'Cabin', fontSize: 14),
                            ),],
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Features',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cabin',
                      fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '1. Air conditioning',
                  style: TextStyle(
                      fontFamily: 'Cabin', fontSize: 18, color: Colors.grey),
                ),
                Text(
                  '2. Music',
                  style: TextStyle(
                      fontFamily: 'Cabin', fontSize: 18, color: Colors.grey),
                ),
                Text(
                  '3. 5 seater',
                  style: TextStyle(
                      fontFamily: 'Cabin', fontSize: 18, color: Colors.grey),
                ),
                Text(
                  '4. Color',
                  style: TextStyle(
                      fontFamily: 'Cabin', fontSize: 18, color: Colors.grey),
                ),
                Text(
                  '5. Full Tank',
                  style: TextStyle(
                      fontFamily: 'Cabin', fontSize: 18, color: Colors.grey),
                ),
                Text(
                  '6. Manual',
                  style: TextStyle(
                      fontFamily: 'Cabin', fontSize: 18, color: Colors.grey),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Description',
                  style: TextStyle(
                      fontFamily: 'Cabin',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'This is Audi AB LLL.,Audi as a brand, company and employer on our international website. Here you will find information about models and technologies.',
                  style: TextStyle(
                      fontSize: 18, fontFamily: 'Cabin', color: Colors.grey),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookingPage(),
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
                          'Book Now',
                          style: TextStyle(fontSize: 22, fontFamily: 'Cabin',color: Colors.white),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}