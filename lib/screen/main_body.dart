//import 'package:exercise/constants.dart';
import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 12.0),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 15,
                    color: Colors.white.withBlue(2).withOpacity(0.4), // Black color with 12% opacity
                  ),
                ],
                image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0n71XpTkBFmk_vWltJlDnQYvg3UEiMAc9WA&usqp=CAU'),)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Ayush Sha!',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                letterSpacing: 2.0,
              ),
            ),
          ),
          Container(
            //padding: EdgeInsets.symmetric(horizontal: 18.0,vertical: 6.0),
            //color: Colors.blck,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.tag_faces,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 12.0,
                ),
                Text(
                  'Regular Member',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontSize: 12.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
