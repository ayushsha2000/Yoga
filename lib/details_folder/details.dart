import 'package:exercise/constants.dart';
import 'package:exercise/details_folder/det_card.dart';
import 'package:exercise/details_folder/det_head.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  static const routeName = '/details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            DetailHeader(),
            SizedBox(
              height: 12.0,
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'For Time',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Rest 1 minutes',
                    style: TextStyle(fontWeight: FontWeight.w100),
                  ),
                ],
              ),
            ),
            Expanded(
              child: DetailCard(),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(12.0),
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.purple.shade50,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [kDefaultShadow]),
                child: Text('Let\'s Start',
                    style: TextStyle(color: Colors.white, fontSize: 30.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
