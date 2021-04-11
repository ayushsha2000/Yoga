import 'package:exercise/constants.dart';
import 'package:exercise/provider/detail_Provider.dart';
import 'package:exercise/details_folder/details.dart';
import 'package:exercise/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DetailProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Exercise',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ProductScreen(),
        routes: {
          Details.routeName: (context) => Details(),
        },
      ),
    );
  }
}
