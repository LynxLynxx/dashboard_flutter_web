import 'package:dashboar_flutter_web/constants/controllers.dart';
import 'package:dashboar_flutter_web/routing/router.dart';
import 'package:dashboar_flutter_web/routing/routes.dart';
import 'package:flutter/cupertino.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: overViewPageRoute,
      onGenerateRoute: generateRoute,
    );
