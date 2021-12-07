import 'package:dashboar_flutter_web/helpers/responsiveness.dart';
import 'package:dashboar_flutter_web/widgets/large_screen.dart';
import 'package:dashboar_flutter_web/widgets/small_screen.dart';
import 'package:dashboar_flutter_web/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
