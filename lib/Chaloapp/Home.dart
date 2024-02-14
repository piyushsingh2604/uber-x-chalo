import 'package:flutter/material.dart';
import 'package:uberapp/Chaloapp/ChaloDrawer.dart';

class ChaloHome extends StatefulWidget {
  const ChaloHome({super.key});

  @override
  State<ChaloHome> createState() => _ChaloHomeState();
}

class _ChaloHomeState extends State<ChaloHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          "CHALO",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow[700],
        elevation: 0,
      ),
      drawer: ChaloDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.yellow[700],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70))),
            ),
            Container(
              width: 350,
              height: 50,
              color: Colors.grey[100],
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.yellow[700],
                    ),
                    hintText: 'Enter destination or bus number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 50),
              child: Row(
                children: [
                  Text(
                    "Buy bus ticket/ pass",
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "see All",
                        style: TextStyle(color: Colors.orange),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 40),
              child: Container(
                height: 200,
                width: 380,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.explara.com/facebook-event-header20160706114848.jpg'),
                              fit: BoxFit.fill),
                      ),
                      height: 100,
                      width: 370,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://jobsandauditions.com/wp-content/uploads/2022/05/Promotion-work-for-an-app-CHALO.png'),
                              fit: BoxFit.cover),
                         ),
                      height: 140,
                      width: 280,
                    ),
                      SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://i.ytimg.com/vi/B0fvVWDQRmA/maxresdefault.jpg'),
                              fit: BoxFit.fill),
                         ),
                      height: 140,
                      width: 280,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 170,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.card_membership_sharp)),
                          Text("Bus pass")
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    height: 50,
                    width: 170,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.paypal_sharp)),
                          Text("Card Recharge")
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 170,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.calendar_view_day_outlined)),
                          Text("Pay for ticket")
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    height: 50,
                    width: 170,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.bus_alert_outlined)),
                          Text("Chalo Bus")
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Text(
                    "Nearest bus stop",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "see All",
                        style: TextStyle(color: Colors.yellow[700]),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 280,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 40),
                    child: Row(
                      children: [
                        Icon(Icons.departure_board_outlined),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Kurla Depot",
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.directions_walk,
                          size: 15,
                        ),
                        Text("1 min")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200, top: 15),
                    child: Container(
                      height: 20,
                      width: 90,
                      color: Colors.grey[400],
                      child: Center(child: Text("Next Buses")),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    leading: Icon(Icons.bus_alert),
                    title: Text("313"),
                    subtitle: Text("To Santacruz Station East"),
                    trailing: Text("In 7 min"),
                  ),
                  Divider(
                    thickness: 2,
                    endIndent: 20,
                    indent: 20,
                  ),
                  ListTile(
                    leading: Icon(Icons.bus_alert),
                    title: Text("507"),
                    subtitle: Text("To Santacruz Station East"),
                    trailing: Text("Every 30 min"),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all buses",
                        style: TextStyle(color: Colors.yellow[700]),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200, top: 30),
              child: Text(
                "Buses around you",
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 180,
              width: 360,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              child: Container(
                width: 350,
                height: 170,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.thequint.com/quintlab/mumbai-sinking-city-climate-change-sea-level-rise-documentary/assets/images/text-parallax-1.gif'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text("No more")
          ],
        ),
      ),
    );
  }
}
