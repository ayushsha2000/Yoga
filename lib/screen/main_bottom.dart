import 'package:exercise/details_folder/details.dart';
import 'package:flutter/material.dart';

class MainBottom extends StatefulWidget {
  @override
  _MainBottomState createState() => _MainBottomState();
}

class _MainBottomState extends State<MainBottom> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 24.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        margin: EdgeInsets.only(top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Active Challenges',
              style: TextStyle(
                color: Colors.purple.withGreen(2),
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Details.routeName);
                  },
                  child: MainBottomContainer(
                    title: 'Never give up',
                    trailing: 'workout 45 min',
                  ),
                ),
                MainBottomContainer(
                  title: '30 reps',
                  trailing: 'work',
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  MainBottomCard(
                    title: 'Upgrade your skill',
                  ),
                  MainBottomCard(
                    title: 'Workout Plans',
                  ),
                  MainBottomCard(
                    title: 'Join with a Friend',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainBottomContainer extends StatelessWidget {
  final String title;
  final String trailing;
  final Function onPressed;
  MainBottomContainer({this.title, this.trailing, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.circular(18.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 27,
            color: Colors.black12, // Black color with 12% opacity
          ),
        ],
      ),
      height: 120,
      width: 170,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              this.title,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 15,
                color: Colors.purple,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              this.trailing,
              style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 12,
                color: Colors.purple.withGreen(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainBottomCard extends StatelessWidget {
  final String title;
  MainBottomCard({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      child: Card(
        color: Colors.purple.shade50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
              color: Colors.purple.withGreen(2),
            ),
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.purple.withGreen(2),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
