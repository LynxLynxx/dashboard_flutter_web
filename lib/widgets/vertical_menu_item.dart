import 'package:dashboar_flutter_web/constants/controllers.dart';
import 'package:dashboar_flutter_web/constants/style.dart';
import 'package:dashboar_flutter_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VertialMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const VertialMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(
        () => Container(
          color: menuController.isHovering(itemName)
              ? lightGrey.withOpacity(0.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                child: Container(
                  width: 6,
                  height: 40,
                  color: dark,
                ),
                visible: menuController.isHovering(itemName) ||
                    menuController.isActive(itemName),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
              ),
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: menuController.returnIconFor(itemName),
                  ),
                  if (!menuController.isActive(itemName))
                    Flexible(
                        child: CustomText(
                      text: itemName,
                      color: menuController.isHovering(itemName)
                          ? dark
                          : lightGrey,
                    ))
                  else
                    Flexible(
                        child: CustomText(
                            text: itemName,
                            color: dark,
                            size: 18,
                            weight: FontWeight.bold))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
