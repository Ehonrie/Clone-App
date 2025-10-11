import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/components/custom_button.dart';
import '../../../../core/components/custom_text_field.dart';
import '../../../../core/theme/color.dart';
import '../../../../gen/assets.gen.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  final _confirmPasswordController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            15.toColumnSizedBox(),
            Text(
              "RESET PASSWORD",
              style: Theme.of(
                context,
              ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
            ),
            Text(
              "UPDATE YOUR PASSWORD",
              style: Theme.of(context).textTheme.myBodyStyle,
            ),
            27.toColumnSizedBox(),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(
                    prefixIcon: Icon(Icons.lock, color: AppColors.grey),
                    hintText: "Enter Your New Password",
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

                    label: "New Password",
                    borderSide: BorderSide(color: AppColors.text),

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
                  ),
                  20.toColumnSizedBox(),
                  CustomTextField(
                    prefixIcon: Icon(Icons.lock, color: AppColors.grey),
                    hintText: "Re-Enter Your Password",
                    isPassword: true,
                    obscureText: _obscureText,
                    controller: _confirmPasswordController,
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

                    label: "Confirm New Password",
                    borderSide: BorderSide(color: AppColors.text),
                    // filled: true,
                    // fillColor: Colors.white,
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
                  ),
                  40.toColumnSizedBox(),
                  CustomButton(
                    text: "Update Password",
                    isActive: true,
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, process the data
                        Navigator.of(context).pop();
                      }
                      return;
                    },
                    loading: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
