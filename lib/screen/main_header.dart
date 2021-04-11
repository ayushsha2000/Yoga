import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class MainHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'My Profile',
                  style: TextStyle(color: Colors.white,fontSize: 22.0),
                ),
                IconButton(icon: Icon(Icons.apps,color: Colors.white,), onPressed: () {})
              ],
            ),
          ),
        ],
      ),
    );
  }
}
