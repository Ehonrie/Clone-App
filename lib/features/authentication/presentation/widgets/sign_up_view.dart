import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/components/custom_button.dart';

import '../../../../core/components/custom_text_field.dart';
import '../../../../core/routes/manager.dart';
import '../../../../core/theme/color.dart';
import '../../../../gen/assets.gen.dart';
import 'sign_in_view.dart';

class SignUpView extends StatefulWidget {
  final VoidCallback onLoginTap;
  const SignUpView({super.key, required this.onLoginTap});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _emailController = TextEditingController(); //
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          32.8.toColumnSizedBox(),
          Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(
                  prefixIcon: Icon(Icons.person, color: AppColors.grey),
                  label: "Full Name",
                  hintText: "Full Name",
                  controller: _nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  filled: true,
                  fillColor: Colors.white,
                ),
                22.8.toColumnSizedBox(),
                CustomTextField(
                  inputType: TextInputType.emailAddress,
                  prefixIcon: Icon(Icons.mail, color: AppColors.grey),
                  hintText: "yourname@gmail.com",
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-]+",
                    ).hasMatch(value)) {
                      return 'Enter a valid email';
                    }
                    return null;
                  },
                  label: "Email Address",
                  filled: true,
                  fillColor: Colors.white,
                ),
                22.8.toColumnSizedBox(),
                CustomTextField(
                  prefixIcon: Icon(Icons.lock, color: AppColors.grey),
                  hintText: "Enter Your Password",
                  isPassword: true,
                  obscureText: _obscureText,
                  controller: _passwordController,
                  inputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },

                  label: "Password",
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: GestureDetector(
                    onTap: _togglePasswordVisibility,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(
                        _obscureText
                            ? Assets.icons.obscureEye.path
                            : Assets.icons.eye.path,
                      ),
                    ),
                  ),

                  // Padding(
                  //   padding: EdgeInsets.all(12.0.sp),
                  //   child: Assets.icons.eye.svg(),
                  // ),
                ),

                20.toColumnSizedBox(),
                CustomButton(
                  text: "Sign Up",
                  isActive: true,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, process the data
                      Navigator.pushNamed(
                        context,
                        RoutesManager.dashboardRoute,
                      );
                    }
                    return;
                  },
                  loading: false,
                ),
                23.7.toColumnSizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: AppColors.grey,
                      width: 111.w,
                      height: 0.5.h,
                    ),
                    Text(
                      "Or continue with",
                      style: Theme.of(
                        context,
                      ).textTheme.myBodyStyle1.copyWith(color: AppColors.grey),
                    ),
                    Container(
                      width: 111.w,
                      height: 0.5.h,
                      color: AppColors.grey,
                    ),
                  ],
                ),
                16.23.toColumnSizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialAuth(icon: Assets.icons.google.svg()),
                    16.toRowSizedBox(),
                    SocialAuth(icon: Assets.icons.fab2.svg()),
                    16.toRowSizedBox(),
                    SocialAuth(icon: Assets.icons.facebook.svg()),
                  ],
                ),
                43.toColumnSizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: Theme.of(
                        context,
                      ).textTheme.myBodyStyle1.copyWith(color: AppColors.grey),
                    ),
                    GestureDetector(
                      onTap: widget.onLoginTap,
                      child: Text(
                        "Log In",
                        style: Theme.of(context).textTheme.myBodyStyle1
                            .copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
