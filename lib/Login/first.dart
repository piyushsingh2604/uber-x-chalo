import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uberapp/BottomNaviBar/HomeBottomNaviBar.dart';
import 'package:uberapp/HomePages/HomePage.dart';
import 'package:uberapp/Login/UserName.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isloding = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), 
      () async {
        bool check = await storageget();
        storageset();
        if (check == true) {
          setState(() {
            isloding = true;
          });
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomeNaviBar()));
        } else {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => UserName()));
        }
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 720,
            width: 420,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.dribbble.com/users/2991/screenshots/3370551/ub_4.gif'),
                    fit: BoxFit.fill)),
          )
        ],
      ),
    );
  }

  storageget() async {
    final prefs = await SharedPreferences.getInstance();
    bool ok = prefs.getBool("ok") ?? false;
    return ok;
  }

  storageset() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool("ok", true);
  }
}
