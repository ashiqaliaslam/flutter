import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/app_strings.dart';
import 'package:my_flutter_app/widgets/custom_card.dart';

// ignore: must_be_immutable
class ScoreCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  ScoreCard({
    this.score = 0,
    this.totalAttempted = 0,
  });

  int score;
  int totalAttempted;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return CustomCard(
      shadowColor: Colors.grey,
      elevation: 5,
      backgroundColor: theme.scaffoldBackgroundColor,
      headingWidget: Text(
        AppStrings.score,
        style: theme.textTheme.headline1,
      ),
      bodyWidget: Text(
        '$score ${AppStrings.scoreSeparator} $totalAttempted',
        style: theme.textTheme.headline1,
      ),
    );
  }
}