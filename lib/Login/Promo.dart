import 'package:flutter/material.dart';

class PromoCode extends StatefulWidget {
  const PromoCode({super.key});

  @override
  State<PromoCode> createState() => _PromoCodeState();
}

class _PromoCodeState extends State<PromoCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 320, top: 30),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "SKIP",
                  style: TextStyle(fontSize: 16),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 140, top: 50),
            child: Text(
              "Do you have a Promo?",
              style: TextStyle(fontSize: 19),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 50),
            child: SizedBox(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter promo code",
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 290),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black,
              ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,color: Colors.white,)),
            ),
          ),
        ],
      ),
    );
  }
}
