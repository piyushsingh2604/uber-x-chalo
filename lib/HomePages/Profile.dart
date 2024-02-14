import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uberapp/Widgets/ProfileWidget.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var firstValue = "first name";
  var firstnamecontroller = TextEditingController();
  static String FIRSTNAME = "firstname";
  bool firstvis = false;

  @override
  void initState() {
    super.initState();
    getvalue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20),
              child: Row(
                children: [
                  SizedBox(
                    width: 150,
                    child: TextField(
                      decoration: InputDecoration(hintText: firstValue),
                      controller: firstnamecontroller,
                    ),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  IconButton(
                      onPressed: () async {
                        var prefs = await SharedPreferences.getInstance();
                        prefs.setString(
                            FIRSTNAME, firstnamecontroller.text.toString());
                      },
                      icon: Icon(
                        Icons.person,
                        size: 60,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 320, top: 10),
              child: Container(
                height: 20,
                width: 40,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 12,
                      ),
                      Text(
                        "5.0",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                   
                        IconButton(onPressed: () {}, icon: Icon(Icons.help)),
                       SizedBox(
                        height: 5,
                       ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Help",
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                    height: 74,
                    width: 95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[300]),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Column(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.wallet)),
                      
                      SizedBox(
                        height: 5,
                      ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Wallet",
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                    height: 74,
                    width: 95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[300]),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.timelapse_rounded)),
                      SizedBox(
                        height: 5,
                      ),
                      
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Trips",
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                    height: 74,
                    width: 95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[300]),
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
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: ProfileWidget(icones: Icons.mail, info: "Messages", iconb: (){}, textb: (){},),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: ProfileWidget(
                  icones: Icons.business_center_rounded, info: "Business hub", iconb: (){}, textb: (){},),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: ProfileWidget(icones: Icons.mail, info: "Send a gift", iconb: (){}, textb: (){},),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: ProfileWidget(icones: Icons.settings, info: "Settings", iconb: (){}, textb: (){},),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: ProfileWidget(
                  icones: Icons.person_outline_outlined,
                  info: "Earn by driving or delivering", iconb: (){}, textb: (){},),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: ProfileWidget(icones: Icons.info, info: "Legal", iconb: (){}, textb: (){},),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 280, top: 30),
              child: Text(
                "v4.472.10002",
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }

  void getvalue() async {
    var prefs = await SharedPreferences.getInstance();
    var firstgettodo = prefs.getString(FIRSTNAME);

    firstValue = firstgettodo ?? "No value ";

    setState(() {});
  }
}
