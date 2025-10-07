import 'package:flutter/material.dart';

import '../../features/authentication/presentation/pages/authentication_view.dart';
import '../../features/dashboard/presentation/pages/dashboard_view.dart';
import '../../features/onboarding/presentation/pages/splash_view.dart';
import 'manager.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      //onboarding
      case RoutesManager.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView()); //

      //authentication
      case RoutesManager.authenticationRoute:
        return MaterialPageRoute(builder: (_) => const AuthenticationView());

      //authentication
      case RoutesManager.dashboardRoute:
        return MaterialPageRoute(builder: (_) => DashboardView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text("404")),
        body: const Center(child: Text("404 Page Not Found")),
      ),
    );
  }
}
