import 'package:exercise/constants.dart';
import 'package:exercise/provider/detail_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailCard extends StatefulWidget {
  @override
  _DetailCardState createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  @override
  Widget build(BuildContext context) {
    final detailProvider = Provider.of<DetailProvider>(context);
    final detailList = detailProvider.details;
    return ListView.builder(
      itemCount: detailList.length,
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: detailList[index],
        child: DetailsCard(index: index,),
      ),
    );
  }
}

// ignore: must_be_immutable
class DetailsCard extends StatefulWidget {
  int index;
  DetailsCard({this.index});
  @override
  _DetailsCardState createState() => _DetailsCardState();
}

class _DetailsCardState extends State<DetailsCard> {
  @override
  Widget build(BuildContext context) {
    final cardDetail = Provider.of<DetailsProvider>(context);
    return Container(
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
      ),
      padding: EdgeInsets.all(6.0),
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: widget.index.isEven? Colors.purple.shade50 : Colors.purple.withOpacity(0.2),
        child: Container(
          alignment: Alignment.center,
          child: ListTile(
            title: Text(cardDetail.title,style: TextStyle(fontWeight: FontWeight.bold),),
            leading: Container(
              //padding: EdgeInsets.all(6.0),
              height: 60,
              width: 60,
              //margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [kDefaultShadow],
                image: DecorationImage(
                  image: NetworkImage(cardDetail.image),
                  fit: BoxFit.fill
                ),
              ),
            ),
            trailing: Text(cardDetail.reps),
          ),
        ),
      ),
    );
  }
}
