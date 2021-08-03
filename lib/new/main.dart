import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'themes/themes.dart';
import 'ui/routes.dart';
import 'ui/widgets/responsive.dart';
import 'ui/screens/mobile_screen/mobile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TopAppWidget(
      injectedTheme: theme,
      builder: (context) {
        return MaterialApp(
          title: 'SwiggyUI',
          debugShowCheckedModeBanner: false,
          theme: theme.lightTheme,
          darkTheme: theme.darkTheme,
          themeMode: theme.themeMode,
          home: Responsive(
            mobile: MobileScreen(),
            tablet: Container(), // TabScreen(),
            desktop: Container(), // DesktopScreen(),
          ),
          navigatorKey: RM.navigate.navigatorKey,
          onGenerateRoute: RM.navigate.onGenerateRoute(routes),
        );
      },
    );
  }
}
