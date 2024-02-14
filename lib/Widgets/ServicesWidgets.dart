import 'package:flutter/material.dart';

class ServicesWidget extends StatelessWidget {
  final String services;
  final Image servicesimage;

  ServicesWidget({
    required this.services,
    required this.servicesimage, required this.height, required this.weight,
  });
  final double height;
  final double weight;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 1,
            ),
            child: Container(
              height: 50,
              width: 60,
              decoration: BoxDecoration(
                image: DecorationImage(image: servicesimage.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:1),
            child: Text(services,style: TextStyle(fontSize: 14),),
          )
        ],
      ),
      height: height,
      width: weight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey[350]),
    );
  }
}
