import 'package:flutter/material.dart';
import 'package:pegasus_wallet/splash_screen.dart';
import 'package:pegasus_wallet/view/home/home_page.dart';
import 'package:pegasus_wallet/view/settings/settings_page.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/settings':
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      default:
        return MaterialPageRoute(builder: (_) => const SizedBox.shrink());
    }
  }

  void dispose() {}
}
