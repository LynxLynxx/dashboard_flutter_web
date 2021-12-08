import 'package:dashboar_flutter_web/constants/controllers.dart';
import 'package:dashboar_flutter_web/helpers/responsiveness.dart';
import 'package:dashboar_flutter_web/pages/overview/widgets/overview_card_large.dart';
import 'package:dashboar_flutter_web/pages/overview/widgets/overview_card_medium.dart';
import 'package:dashboar_flutter_web/pages/overview/widgets/overview_card_small.dart';
import 'package:dashboar_flutter_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomScreen(context))
                  const OverviewCardsMediumScreen()
                else
                  const OverviewCardLargeScreen()
              else
                const OverviewCardsSmallScreen()
            ],
          ),
        ),
      ],
    );
  }
}
