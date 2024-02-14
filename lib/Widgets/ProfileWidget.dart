import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String info;
 final dynamic textb;
  final dynamic iconb;


  final IconData icones;
  ProfileWidget({required this.icones, required this.info,required this.textb,required this.iconb});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: iconb, icon: Icon(icones)),
        SizedBox(
          width: 30,
        ),
        TextButton(
          child: Text(
            info,
            style: TextStyle(color: Colors.black),
          ),
          onPressed: textb,
        )
      ],
    );
  }
}
