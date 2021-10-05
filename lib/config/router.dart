import 'package:flutter/material.dart';
import 'package:zena_tamkin/views/views.dart';

/// Initaial Route Name
const String initialRoute = HomeView.route;

/// App Router
class Router {
  /// Generate Route Function
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/HomeView':
        return MaterialPageRoute<dynamic>(builder: (_) => HomeView());
      case '/IntroScreen':
        return MaterialPageRoute<dynamic>(builder: (_) => const IntroScreen());
      case '/FunZoneHomeView':
        return MaterialPageRoute<dynamic>(builder: (_) => FunZoneHomeView());
      case '/LearningHomeView':
        return MaterialPageRoute<dynamic>(builder: (_) => LearningHomeView());
      case '/ZenaResourcesHomeView':
        return MaterialPageRoute<dynamic>(
            builder: (_) => const ZenaResourcesHomeView());
      case '/CareConnectionHomeView':
        return MaterialPageRoute<dynamic>(
            builder: (_) => const CareConnectionHomeView());
      case '/ZenaMentorsHomeView':
        return MaterialPageRoute<dynamic>(
            builder: (_) => const ZenaMentorsHomeView());

      default:
        return MaterialPageRoute<dynamic>(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
