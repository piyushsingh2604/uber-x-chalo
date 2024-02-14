import 'package:flutter/material.dart';
import 'package:uberapp/Chaloapp/Logo.dart';
import 'package:uberapp/Widgets/ServicesWidgets.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 250),
            child: Text(
              "Services",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 150),
            child: Text(
              "Go anywhere, getanything",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 90,
                        ),
                        child: Container(
                          height: 60,
                          width: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://www.pngplay.com/wp-content/uploads/8/Uber-PNG-Photos.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 110),
                        child: Text("Ride"),
                      )
                    ],
                  ),
                  height: 80,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[350]),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 90,
                        ),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://www.transparentpng.com/thumb/box/taped-cargo-box-clipart-png-k19KM2.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: Text("Package"),
                      )
                    ],
                  ),
                  height: 80,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[350]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Row(
              children: [
                ServicesWidget(
                    services: 'Rentals',
                    servicesimage: Image(
                        image: NetworkImage(
                            'https://www.pngplay.com/wp-content/uploads/8/Uber-PNG-Photos.png')),
                    height: 70,
                    weight: 90),
                SizedBox(
                  width: 40,
                ),
                ServicesWidget(
                    services: 'Reserve',
                    servicesimage: Image(
                        image: NetworkImage(
                            'https://www.iconarchive.com/download/i103364/paomedia/small-n-flat/calendar-clock.1024.png')),
                    height: 70,
                    weight: 90),
                SizedBox(
                  width: 40,
                ),
                ServicesWidget(
                    services: 'Intercity',
                    servicesimage: Image(
                        image: NetworkImage(
                            'https://cdni.iconscout.com/illustration/premium/thumb/man-putting-shopping-bag-in-car-8621282-6842669.png')),
                    height: 70,
                    weight: 90),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 250),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChaloGif()));
              },
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://image.winudf.com/v2/image1/YXBwLnpvcGhvcF9pY29uXzE1NTQzNDM2ODFfMDAw/icon.png?w=&fakeurl=1'),
                        fit: BoxFit.cover)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
