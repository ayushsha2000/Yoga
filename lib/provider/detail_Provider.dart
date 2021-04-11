import 'package:flutter/cupertino.dart';

class DetailsProvider with ChangeNotifier {
  String image;
  String title;
  String reps;

  DetailsProvider({this.image, this.title, this.reps});
  notifyListeners();
}

class DetailProvider with ChangeNotifier {
  List<DetailsProvider> _details = [
    DetailsProvider(
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0n71XpTkBFmk_vWltJlDnQYvg3UEiMAc9WA&usqp=CAU',
      title: 'HandStand',
      reps: '30 reps',
    ),
    DetailsProvider(
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEFdfgTHO6IqjaDiqYhFb5HiNRlw23H4gO0g&usqp=CAU',
      title: 'Run',
      reps: '30 reps',
    ),
    DetailsProvider(
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDfyQX8KiKfFDccPeYsBAkKHgJCvD_a8kyoQ&usqp=CAU',
      title: 'Barbell',
      reps: '30 reps',
    ),
  ];
  List<DetailsProvider> get details {
    return [..._details];
  }

  notifyListeners();
}
