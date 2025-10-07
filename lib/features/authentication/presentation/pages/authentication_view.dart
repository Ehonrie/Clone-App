import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';
import '../widgets/build_toogle_view.dart';
import '../widgets/sign_in_view.dart';
import '../widgets/sign_up_view.dart';

class AuthenticationView extends StatefulWidget {
  const AuthenticationView({super.key});

  @override
  State<AuthenticationView> createState() => _AuthenticationViewState();
}

class _AuthenticationViewState extends State<AuthenticationView> {
  bool isReg = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 430.w,
              height: 260.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.r),
                  bottomRight: Radius.circular(30.r),
                ),
                color: AppColors.primary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  100.toColumnSizedBox(),

                  Text(
                    "LFX",
                    style: Theme.of(
                      context,
                    ).textTheme.myTitleStyle1.copyWith(fontSize: 55.sp),
                  ),
                ],
              ),
            ),
            // 10.toColumnSizedBox(),
            // Text("data"),
            Container(
              padding: EdgeInsets.all(30.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 370.w,
                      height: 54.4.h,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildToggleButton(context, "Sign In", isReg, () {
                            setState(() => isReg = true);
                          }),
                          buildToggleButton(context, "Sign Up", !isReg, () {
                            setState(() => isReg = false);
                          }),
                        ],
                      ),
                    ),
                  ),
                  AnimatedSwitcher(
                    duration: Duration(milliseconds: 300),
                    transitionBuilder: (child, animation) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: Offset(0.0, 0.0),
                          end: Offset(0, 0),
                        ).animate(animation),
                        child: FadeTransition(opacity: animation, child: child),
                      );
                    },
                    child: isReg
                        ? _buildSignInForm(key: ValueKey("signin"))
                        : _buildSignUpForm(key: ValueKey("signup")),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignInForm({required Key key}) {
    return SignInView(
      onSignUpTap: () {
        setState(() => isReg = false); // 👈 switch to Sign Up
      },
    );
  }

  Widget _buildSignUpForm({required Key key}) {
    return SignUpView(
      onLoginTap: () {
        setState(() => isReg = true); // toggle back to Sign In
      },
    );
  }
}
