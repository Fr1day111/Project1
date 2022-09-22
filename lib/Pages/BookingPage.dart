import 'package:firstproject/Pages/login.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  DateTime _pickDate = DateTime.now();
  DateTime _returnDate = DateTime.now();
  final TextEditingController _picktxt = TextEditingController();
  final TextEditingController _returntxt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('Booking Information'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'Assets/Photos/Car1.png',
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Select Location',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: "Cabin"),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Select your city location",
                    hintStyle: const TextStyle(fontFamily: "Cabin"),
                    prefixIcon: IconButton(
                        onPressed: () {
                          /* GoogleMap(
                                myLocationEnabled: true,
                                  initialCameraPosition: CameraPosition(target: LatLng(26.8206, 30.8025))
                              );*/
                        },
                        icon: Icon(
                            color: Color(0xFF4554DF), Icons.location_on_rounded))),

              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: 'Select your destination',
                    hintStyle: const TextStyle(fontFamily: "Cabin"),
                    prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(color: Color(0xFF4554DF), Icons.map))),


              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Select Date',
                  style: TextStyle(
                    fontFamily: "Cabin",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _picktxt,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Pick up date & Time",
                    hintStyle: TextStyle(fontFamily: "Cabin"),
                    prefixIcon: IconButton(
                        onPressed: () async {
                          DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2022),
                              lastDate: DateTime(2030));

                          //if cancel
                          if (newDate == null) {
                            return;
                          } else {
                            setState(() => _pickDate = newDate);
                            _picktxt.text =
                                "${_pickDate.year}/${_pickDate.month}/${_pickDate.day}";
                          }
                        },
                        icon: Icon(color: Color(0xFF4554DF), Icons.calendar_month)))
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: _returntxt,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Select return date & Time",
                    hintStyle: const TextStyle(fontFamily: "Cabin"),
                    prefixIcon: IconButton(
                        onPressed: () async {
                          DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2022),
                              lastDate: DateTime(2030));

                          //if cancel
                          if (newDate == null) {
                            return;
                          } else {
                            setState(() => _pickDate = newDate);
                            _returntxt.text =
                                "${_pickDate.year}/${_pickDate.month}/${_pickDate.day}";
                          }
                        },
                        icon: Icon(color: Color(0xFF4554DF), Icons.calendar_month))),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>loginPage(),
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
                      'CONTINUE',
                      style: TextStyle(fontSize: 22, fontFamily: 'Cabin',color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
