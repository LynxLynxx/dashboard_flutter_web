import 'package:dashboar_flutter_web/constants/style.dart';
import 'package:dashboar_flutter_web/helpers/responsiveness.dart';
import 'package:dashboar_flutter_web/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30),
                  child: const Icon(
                    Icons.car_rental,
                  ),
                ),
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState?.openDrawer();
              },
              icon: const Icon(
                Icons.menu,
              ),
            ),
      elevation: 0,
      title: Row(
        children: [
          const Visibility(
            child: CustomText(
              text: "Car rental",
              color: lightGrey,
              size: 20,
              weight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          IconButton(
            hoverColor: Colors.transparent,
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: dark.withOpacity(0.7),
            ),
          ),
          Stack(
            children: [
              IconButton(
                hoverColor: Colors.transparent,
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: dark.withOpacity(0.7),
                ),
              ),
              Positioned(
                child: Container(
                  width: 12,
                  height: 12,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: light,
                      width: 2,
                    ),
                  ),
                ),
                top: 7,
                right: 7,
              ),
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          const SizedBox(
            width: 24,
          ),
          const CustomText(
            text: "Ryszard Schossler",
            color: lightGrey,
          ),
          const SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: const CircleAvatar(
                backgroundColor: light,
                child: Icon(
                  Icons.person_outline_outlined,
                  color: dark,
                ),
              ),
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
    );
