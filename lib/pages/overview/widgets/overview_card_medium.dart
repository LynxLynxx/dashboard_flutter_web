import 'package:dashboar_flutter_web/pages/overview/widgets/info_card.dart';
import 'package:flutter/material.dart';

class OverviewCardsMediumScreen extends StatelessWidget {
  const OverviewCardsMediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: "Scheduled for lend",
              value: "17",
              onTap: () {},
              topColor: Colors.blue,
            ),
            SizedBox(width: _width / 64),
            InfoCard(
              title: "Scheduled for return",
              value: "7",
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(width: _width / 64),
          ],
        ),
        SizedBox(height: _width / 64),
        Row(
          children: [
            InfoCard(
              title: "Done lends",
              value: "27",
              onTap: () {},
              topColor: Colors.green,
            ),
            SizedBox(width: _width / 64),
          ],
        )
      ],
    );
  }
}
