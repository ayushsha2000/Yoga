import 'package:exercise/screen/main_body.dart';
import 'package:exercise/screen/main_bottom.dart';
import 'package:exercise/screen/main_header.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MainHeader(),
        MainBody(),
        MainBottom(),
      ],
    );
  }
}
