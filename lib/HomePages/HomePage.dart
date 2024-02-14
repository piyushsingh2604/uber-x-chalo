import 'package:flutter/material.dart';
import 'package:uberapp/HomePages/Services.dart';
import 'package:uberapp/maps/maps.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 20),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context)=> Maps()));
                    },
                    child: Row(
                      children: [
                        IconButton(onPressed: () { Navigator.push(
                          context, MaterialPageRoute(builder: (context)=> Maps()));
                  }, icon: Icon(Icons.search)),
                        Text("Where to?"),
                        SizedBox(
                          width: 110,
                        ),
                        VerticalDivider(
                          thickness: 1,
                          indent: 9,
                          endIndent: 5,
                        ),
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () { Navigator.push(
                          context, MaterialPageRoute(builder: (context)=> Maps()));
                  },
                                  icon: Icon(
                                    Icons.access_time_rounded,
                                    size: 17,
                                  )),
                              Text(
                                "Now",
                                style: TextStyle(fontSize: 10),
                              ),
                              IconButton(
                                  onPressed: () { Navigator.push(
                          context, MaterialPageRoute(builder: (context)=> Maps()));
                  },
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    size: 17,
                                  ))
                            ],
                          ),
                          height: 35,
                          width: 102,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        )
                      ],
                    ),
                  ),
                ),
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  Text(
                    "Suggestions",
                    style: TextStyle(fontSize: 21, color: Colors.black),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Services(),
                        ));
                      },
                      child: Text(
                        "See all",
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, bottom: 5),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.pngplay.com/wp-content/uploads/8/Uber-PNG-Photos.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 1, bottom: 10, top: 10),
                      child: Container(
                        height: 1,
                        width: 1,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: NetworkImage(
                              'https://www.transparentpng.com/thumb/box/taped-cargo-box-clipart-png-k19KM2.png'),
                        )),
                      ),
                    ),
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, bottom: 5),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.pngplay.com/wp-content/uploads/8/Uber-PNG-Photos.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, bottom: 5),
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: NetworkImage(
                              'https://www.iconarchive.com/download/i103364/paomedia/small-n-flat/calendar-clock.1024.png'),
                        )),
                      ),
                    ),
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 40),
              child: Row(
                children: [
                  Text("Ride"),
                  SizedBox(
                    width: 60,
                  ),
                  Text("Package"),
                  SizedBox(
                    width: 40,
                  ),
                  Text("Rentals"),
                  SizedBox(
                    width: 40,
                  ),
                  Text("Reserve"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 170),
              child: Text(
                "Ways to save with Uber",
                style: TextStyle(fontSize: 19, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 170),
              child: Container(
                height: 120,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://assets.aboutamazon.com/dims4/default/36f41ac/2147483647/strip/true/crop/1734x1411+0+0/resize/913x743!/quality/90/?url=https%3A%2F%2Famazon-blogs-brightspot.s3.amazonaws.com%2F58%2F24%2F3d1a293e431486589b3e8eb60c7c%2Fuber.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "Auto rides",
                    style: TextStyle(fontSize: 18),
                  ),
                  IconButton(onPressed: () { Navigator.push(
                          context, MaterialPageRoute(builder: (context)=> Maps()));
                  }, icon: Icon(Icons.arrow_forward))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 160),
              child: Text(
                "Upfront prices, doorstep pick-ups",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Container(
                height: 120,
                width: 390,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.zoutons.com/images/originals/blog/1662447635311.jpg_1662447636.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                      height: 100,
                      width: 280,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://chefsstage.com/wp-content/uploads/2023/04/jang.webp'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                      height: 100,
                      width: 280,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://i0.wp.com/www.mobileworldlive.com/wp-content/uploads/2016/11/SS-uber-0.jpg?fit=500%2C334&ssl=1'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                      height: 100,
                      width: 280,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.uber-assets.com/image/upload/f_auto,q_auto:eco,c_fill,w_956,h_637/v1666820446/assets/76/ef1753-983c-4d6b-961f-81bddef59f1f/original/Uber-Eats-2022-Gift-Card.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                      height: 100,
                      width: 280,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
