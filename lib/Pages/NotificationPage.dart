import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFEFF1F5) ,
        foregroundColor: Colors.black,
        title: const Text(
          'Notification',
          style: TextStyle(
            fontFamily: 'Cabin',
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFEFF1F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: 105,
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
                            Center(
                              child: Image.asset(
                                "Assets/Icons/Notification.png",
                                height: 90,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: MediaQuery.of(context).size.width*0.02
                                ),
                                const Text(
                                  '40% off today',
                                  style:
                                  TextStyle(fontFamily: 'Cabin', fontSize: 23,fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.6,
                                  child: const Text(
                                    'Hurry up! Don’t sit at home today. Best car rental deal today.',
                                    style:
                                    TextStyle(fontFamily: 'Cabin', fontSize: 15),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                  ),
                                ),
                                const Text(
                                  '2 min ago',
                                  style: TextStyle(
                                      fontFamily: 'Cabin',
                                      fontSize: 19,
                                      color: Color(0xFF9B9898)),
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
                  height: 105,
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
                            Center(
                              child: Image.asset(
                                "Assets/Icons/Notification.png",
                                height: 90,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: MediaQuery.of(context).size.width*0.02
                                ),
                                const Text(
                                  'Booking Successful',
                                  style:
                                  TextStyle(fontFamily: 'Cabin', fontSize: 23,fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.6,
                                  child: const Text(
                                    'Congratulations! Your audi is successfully Booked',
                                    style:
                                    TextStyle(fontFamily: 'Cabin', fontSize: 15),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                  ),
                                ),
                                const Text(
                                  '2 min ago',
                                  style: TextStyle(
                                      fontFamily: 'Cabin',
                                      fontSize: 19,
                                      color: Color(0xFF9B9898)),
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
            ],
          ),
        ),
      ),
    );
  }
}
