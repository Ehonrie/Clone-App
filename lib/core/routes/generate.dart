import 'package:flutter/material.dart';

import '../../features/authentication/presentation/pages/authentication_view.dart';
import '../../features/dashboard/presentation/pages/dashboard_view.dart';
import '../../features/home/presentation/pages/activate_app_view.dart';
import '../../features/home/presentation/pages/cbt_exam_mode_view.dart';
import '../../features/home/presentation/pages/flash_card_view.dart';
import '../../features/home/presentation/pages/jamb_syllabus_view.dart';
import '../../features/home/presentation/pages/performance_details_view.dart';
import '../../features/home/presentation/pages/performance_widget.dart';
import '../../features/home/presentation/pages/study_mode_view.dart';
import '../../features/home/presentation/pages/summary_note_view.dart';
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

      //home
      case RoutesManager.performanceRecordRoute:
        return MaterialPageRoute(builder: (_) => PerformanceWidget());

      case RoutesManager.performanceDetailsRoute:
        return MaterialPageRoute(builder: (_) => PerformanceDetailsView());

      case RoutesManager.activateAppRoute:
        return MaterialPageRoute(builder: (_) => ActivateAppView());

      case RoutesManager.summaryNoteRoute:
        return MaterialPageRoute(builder: (_) => SummaryNoteView());

      case RoutesManager.jambSyllabusRoute:
        return MaterialPageRoute(builder: (_) => JambSyllabusView());

      case RoutesManager.flashCardRoute:
        return MaterialPageRoute(builder: (_) => FlashCardView());

      case RoutesManager.studyModeRoute:
        return MaterialPageRoute(builder: (_) => StudyModeView());

      case RoutesManager.cbtExamRoute:
        return MaterialPageRoute(builder: (_) => CbtExamModeView());

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
