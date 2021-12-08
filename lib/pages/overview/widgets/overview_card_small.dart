import 'package:dashboar_flutter_web/pages/overview/widgets/info_card_small.dart';
import 'package:flutter/material.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Scheduled for lend",
            value: "17",
            onTap: () {},
            isActive: true,
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: "Scheduled for return",
            value: "7",
            onTap: () {},
            isActive: false,
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: "Done lends",
            value: "27",
            onTap: () {},
            isActive: false,
          ),
          SizedBox(height: _width / 64),
        ],
      ),
    );
  }
}
