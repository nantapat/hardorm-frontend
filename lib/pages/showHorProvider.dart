import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  // index 0 indicate 1 star and index 1 indicate 1.5 star so on so forth
  List<double> percentagePerStar = [
    3.7,
    6.7,
    4.2,
    8.9,
    7.5,
    13.2,
    12.4,
    25.5,
    19.2
  ];
  List<int> rawValuePerStar = [50, 90, 57, 120, 100, 177, 167, 324, 257];

  int currentIndex = 0;
  String starRatingAvg = '3.5';
  String userRating = '';
  double sumRawValue = 1342;

  void setCurrentIndex(index) {
    this.currentIndex = index;
  }

  void setUserRating(rating) {
    this.userRating = rating;
  }

  void userRateDorm(rate) {
    print(rate.toString());
    print(this.userRating);

    // re-rate
    if (this.userRating != '') {
      double oldRate = double.parse(this.userRating);
      if (oldRate != 1) {
        this.rawValuePerStar[(oldRate * 2 - 2).toInt()] -= 1;
      } else {
        this.rawValuePerStar[0] -= 1;
      }
      this.sumRawValue -= 1;
    }
    this.userRating = rate.toStringAsFixed(1);

    if (rate != 1) {
      this.rawValuePerStar[(rate * 2 - 2).toInt()] += 1;
      print(rawValuePerStar);
    } else {
      this.rawValuePerStar[0] += 1;
    }

    this.sumRawValue += 1;
    calcPercentagePerStar();
    print(percentagePerStar);
    calcAvgRating();
    notifyListeners();
  }

  void calcAvgRating() {
    this.starRatingAvg = (((this.rawValuePerStar[8] * 5) +
                (this.rawValuePerStar[7] * 4.5) +
                (this.rawValuePerStar[6] * 4) +
                (this.rawValuePerStar[5] * 3.5) +
                (this.rawValuePerStar[4] * 3) +
                (this.rawValuePerStar[3] * 2.5) +
                (this.rawValuePerStar[2] * 2) +
                (this.rawValuePerStar[1] * 1.5) +
                (this.rawValuePerStar[0])) /
            this.sumRawValue)
        .toStringAsFixed(1);
  }

  void calcPercentagePerStar() {
    this.percentagePerStar = rawValuePerStar
        .map((e) =>
            ((double.parse((e * 100 / this.sumRawValue).toStringAsFixed(1)))))
        .toList();
  }
}