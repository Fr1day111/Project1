import 'package:firstproject/Pages/NotificationPage.dart';
import 'package:firstproject/Pages/pageTwo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFEFF1F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        ImageIcon(
                          color: Color(0xFF4554DF),
                          AssetImage("Assets/Icons/Location.png"),
                        ),
                        Text(
                          "Ahmedabad, India",
                          style: TextStyle(fontFamily: 'Cabin', fontSize: 19),
                        ),
                      ],
                    ),
                    SizedBox(width: sWidth * 0.4),
                     GestureDetector(
                       onTap: () => Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => NotificationPage(),
                         ),
                       ),
                       child: ImageIcon(
                         color: Color(0xFF4554DF),
                         AssetImage("Assets/Icons/Notification.png"),
                       ),
                     ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  image: const DecorationImage(
                      image: AssetImage("Assets/Photos/Bg1.png"),
                      fit: BoxFit.cover),
                  borderRadius:
                      BorderRadius.circular(20), //border corner radius
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("BEST CAR\nRENTAL DEAL.\nTODAY",
                              style: TextStyle(
                                  fontFamily: 'Cabin',
                                  fontSize: 19,
                                  color: Colors.white)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("40% OFF TODAY",
                              style: TextStyle(
                                  fontFamily: 'Cabin',
                                  fontSize: 19,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                    Image.asset("Assets/Photos/Car1.png")
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 170,
                width: double.infinity,
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
                      BorderRadius.circular(20), //border corner radius
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("LOGO",
                        style: TextStyle(
                            fontFamily: 'Cabin',
                            fontSize: 19,
                            color: Color(0xFF4554DF))),
                    const Text("Book car rentals by the hours",
                        style: TextStyle(fontFamily: 'Cabin', fontSize: 19)),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 40,
                            width: 270,
                            decoration: BoxDecoration(
                              color: const Color(0xFFECECEC),
                              borderRadius: BorderRadius.circular(
                                  9), //border corner radius
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                  hintText: 'Search your city location',
                                  hintStyle: TextStyle(
                                      fontSize: 16, fontFamily: 'Cabin'),
                                  prefixIcon: Icon(
                                    CupertinoIcons.location_solid,
                                  ),
                                  suffixIcon:
                                      Icon(Icons.arrow_right_alt_outlined)),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: null,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFF4554DF),
                              borderRadius: BorderRadius.circular(
                                  5), //border corner radius
                            ),
                            child: const ImageIcon(
                                AssetImage("Assets/Icons/List.png")),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Want to book in a",
                          style: TextStyle(fontFamily: 'Cabin'),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'other city?',
                              style: TextStyle(
                                  color: Color(0xFF4554DF),
                                  fontFamily: 'Cabin'),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Top Brands',
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                    SizedBox(
                      width: 187,
                    ),
                    TextButton(
                        onPressed: null,
                        child: Text(
                          'View All',
                          style: TextStyle(
                              fontFamily: 'Cabin',
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        )),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 100,
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
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          Image.asset("Assets/Photos/TeslaLogo.png"),
                          const Text(
                            'Tesla',
                            style: TextStyle(fontFamily: 'Cabin', fontSize: 19),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
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
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          Image.asset("Assets/Photos/TeslaLogo.png"),
                          const Text(
                            'Tesla',
                            style: TextStyle(fontFamily: 'Cabin', fontSize: 19),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
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
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          Image.asset("Assets/Photos/TeslaLogo.png"),
                          const Text(
                            'Tesla',
                            style: TextStyle(fontFamily: 'Cabin', fontSize: 19),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Vehicle Available Nearby',
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 119,
                    ),
                    TextButton(
                        onPressed: null,
                        child: Text(
                          'View All',
                          style: TextStyle(
                              fontFamily: 'Cabin',
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        )),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const pageTwo(),
                      ),
                    ),
                    child: Container(
                      width: 160,
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
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "Assets/Photos/Car1.png",
                                  height: 100,
                                  width: 100,
                                ),
                                const IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.favorite_border_outlined)),
                              ],
                            ),
                            const Text(
                              ' Audi AB LLL',
                              style:
                                  TextStyle(fontFamily: 'Cabin', fontSize: 19),
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
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const pageTwo(),
                      ),
                    ),
                    child: Container(
                      width: 160,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "Assets/Photos/Car1.png",
                                  height: 100,
                                  width: 100,
                                ),
                                const IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.favorite_border_outlined)),
                              ],
                            ),
                            const Text(
                              ' Audi AB LLL',
                              style:
                                  TextStyle(fontFamily: 'Cabin', fontSize: 19),
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
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
