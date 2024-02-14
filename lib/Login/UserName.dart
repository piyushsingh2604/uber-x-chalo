import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uberapp/BottomNaviBar/HomeBottomNaviBar.dart';

class UserName extends StatefulWidget {
  const UserName({super.key});

  @override
  State<UserName> createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  String first = "";
  String last = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 170),
              child: Text(
                "What's your name?",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 80),
              child: Text(
                "Let us know how to properly addressyou",
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 40),
              child: SizedBox(
                width: 370,
                child: TextField(
                  controller: firstname,
                  decoration: InputDecoration(
                      hintText: "Enter first name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9))),
                ),
              ),
            ),
            Text(first),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: SizedBox(
                width: 370,
                child: TextField(
                  controller: lastname,
                  decoration: InputDecoration(
                      hintText: "Enter last name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9))),
                ),
              ),
            ),
            Text(last),
            Padding(
              padding: const EdgeInsets.only(top: 350, left: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back),
                  ),
                  SizedBox(
                    width: 240,
                  ),
                  Container(
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Text(
                              "Next",
                              style: TextStyle(color: Colors.white),
                            ),
                            IconButton(
                                onPressed: iconb,
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void iconb() {
    if (firstname.text.isEmpty) {
      setState(() {
        first = "Enter first name";
      });
    } else if (lastname.text.isEmpty) {
      setState(() {
        last = "Enter last name";
      });
    }
    else{
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeNaviBar()));

    }
  }

}
