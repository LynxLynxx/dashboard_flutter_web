import 'package:dashboar_flutter_web/helpers/responsiveness.dart';
import 'package:dashboar_flutter_web/widgets/large_screen.dart';
import 'package:dashboar_flutter_web/widgets/side_menu.dart';
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
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(child: SideMenu()),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
