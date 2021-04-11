import 'package:exercise/constants.dart';
import 'package:flutter/material.dart';

class DetailHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.purple.shade50,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(28.0),
              bottomRight: Radius.circular(28.0),
            ),
          ),
          height: 300,
          width: MediaQuery.of(context).size.width,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    boxShadow: [kDefaultShadow],
                    borderRadius: BorderRadius.circular(6.0)),
                height: 40.0,
                width: 40.0,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    boxShadow: [kDefaultShadow],
                    borderRadius: BorderRadius.circular(6.0)),
                height: 40.0,
                width: 40.0,
                child: Icon(Icons.favorite),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text('4 Days'),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Full Strength With Jen',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.calendar_today),
                    SizedBox(
                      width: 6.0,
                    ),
                    Text('Sunday, 11 am'),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            margin: EdgeInsets.only(right: 12.0, bottom: 12.0),
            //padding: EdgeInsets.all(kDefaultPadding),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                //color: Colors.pink,
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR57RjSpTRhLK5NtXc-zReR7Q5_fVpCQnPD9w&usqp=CAU',
                    ),
                    fit: BoxFit.fill),
                boxShadow: [kDefaultShadow]),
            // child: Image.network(
            //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-ElBK-s3mDUKCvuo4naP191o92qERwIDYJg&usqp=CAU',
            //   fit: BoxFit.contain,
            // ),
          ),
        ),
      ],
    );
  }
}
