import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uberapp/Chaloapp/Home.dart';

class ChaloGif extends StatefulWidget {
  const ChaloGif({super.key});

  @override
  State<ChaloGif> createState() => _ChaloGifState();
}

class _ChaloGifState extends State<ChaloGif> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> ChaloHome()));
    });
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
                        'https://image.winudf.com/v2/image1/YXBwLnpvcGhvcF9pY29uXzE1NTQzNDM2ODFfMDAw/icon.png?w=&fakeurl=1'),
                    fit: BoxFit.fill)),
          )
        ],
      ),
    );
  }
}
