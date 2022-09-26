import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
      backgroundColor: const Color(0xFFEFF1F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30,),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.circular(9), //border corner radius
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "Assets/Photos/Car1.png",
                              height: MediaQuery.of(context).size.width*0.35,
                              width: MediaQuery.of(context).size.width*0.35,
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.08 ,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: MediaQuery.of(context).size.width*0.03
                                ),
                                const Text(
                                  ' Audi AB LLL',
                                  style:
                                  TextStyle(fontFamily: 'Cabin', fontSize: 23),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.width*0.03
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
                                const Text(
                                  ' 4 Seater',
                                  style:
                                  TextStyle(fontFamily: 'Cabin', fontSize: 15),
                                ),
                                const Text(
                                  ' Rs 3000/day',
                                  style: TextStyle(
                                      fontFamily: 'Cabin',
                                      fontSize: 19,
                                      color: Color(0xFF4554DF)),
                                )
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.circular(9), //border corner radius
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "Assets/Photos/Car1.png",
                              height: MediaQuery.of(context).size.width*0.35,
                              width: MediaQuery.of(context).size.width*0.35,
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.08 ,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: MediaQuery.of(context).size.width*0.03
                                ),
                                const Text(
                                  ' Audi AB LLL',
                                  style:
                                  TextStyle(fontFamily: 'Cabin', fontSize: 23),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.width*0.03
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
                                const Text(
                                  ' 4 Seater',
                                  style:
                                  TextStyle(fontFamily: 'Cabin', fontSize: 15),
                                ),
                                const Text(
                                  ' Rs 3000/day',
                                  style: TextStyle(
                                      fontFamily: 'Cabin',
                                      fontSize: 19,
                                      color: Color(0xFF4554DF)),
                                )
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.circular(9), //border corner radius
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "Assets/Photos/Car1.png",
                              height: MediaQuery.of(context).size.width*0.35,
                              width: MediaQuery.of(context).size.width*0.35,
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.08 ,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: MediaQuery.of(context).size.width*0.03
                                ),
                                const Text(
                                  ' Audi AB LLL',
                                  style:
                                  TextStyle(fontFamily: 'Cabin', fontSize: 23),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.width*0.03
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
                                const Text(
                                  ' 4 Seater',
                                  style:
                                  TextStyle(fontFamily: 'Cabin', fontSize: 15),
                                ),
                                const Text(
                                  ' Rs 3000/day',
                                  style: TextStyle(
                                      fontFamily: 'Cabin',
                                      fontSize: 19,
                                      color: Color(0xFF4554DF)),
                                )
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.circular(9), //border corner radius
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "Assets/Photos/Car1.png",
                              height: MediaQuery.of(context).size.width*0.35,
                              width: MediaQuery.of(context).size.width*0.35,
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.08 ,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: MediaQuery.of(context).size.width*0.03
                                ),
                                const Text(
                                  ' Audi AB LLL',
                                  style:
                                  TextStyle(fontFamily: 'Cabin', fontSize: 23),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.width*0.03
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
                                const Text(
                                  ' 4 Seater',
                                  style:
                                  TextStyle(fontFamily: 'Cabin', fontSize: 15),
                                ),
                                const Text(
                                  ' Rs 3000/day',
                                  style: TextStyle(
                                      fontFamily: 'Cabin',
                                      fontSize: 19,
                                      color: Color(0xFF4554DF)),
                                )
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
