import 'package:clone_app/core/theme/color.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';

import '../../../../core/routes/manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void route() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushNamed(context, RoutesManager.authenticationRoute);
    });
  }

  @override
  void initState() {
    route();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'LFX Clone',
              style: Theme.of(context).textTheme.myTitleStyle,
            ),
          ),
        ],
      ),
    );
  }
}
