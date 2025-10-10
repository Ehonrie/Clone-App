import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/custom_button.dart';
import '../../../../core/components/custom_text_field.dart';
import '../../../../core/theme/color.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  final _firstNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              15.toColumnSizedBox(),
              Text(
                "EDIT PROFILE",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
              ),
              Text(
                "UPDATE YOUR APP PROFILE",
                style: Theme.of(context).textTheme.myBodyStyle,
              ),
              27.toColumnSizedBox(),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      inputType: TextInputType.emailAddress,
                      prefixIcon: Icon(Icons.person, color: AppColors.grey),
                      hintText: "ANTHONY",
                      controller: _firstNameController,

                      label: "First Name",
                      borderSide: BorderSide(color: AppColors.text),
                    ),
                    20.toColumnSizedBox(),
                    CustomTextField(
                      inputType: TextInputType.emailAddress,
                      prefixIcon: Icon(Icons.person, color: AppColors.grey),
                      hintText: "OKPERE",
                      controller: _firstNameController,

                      label: "Last Name",
                      borderSide: BorderSide(color: AppColors.text),
                    ),
                    20.toColumnSizedBox(),
                    CustomTextField(
                      inputType: TextInputType.emailAddress,
                      prefixIcon: Icon(Icons.mail, color: AppColors.grey),
                      hintText: "AnthonyOkpere11@gmail.com",
                      controller: _firstNameController,

                      label: "Email",
                      borderSide: BorderSide(color: AppColors.text),
                    ),
                    20.toColumnSizedBox(),
                    CustomTextField(
                      inputType: TextInputType.emailAddress,
                      prefixIcon: Icon(Icons.phone, color: AppColors.grey),
                      hintText: "Enter Your Phone Number",
                      controller: _firstNameController,

                      label: "Phone Number",
                      borderSide: BorderSide(color: AppColors.text),
                    ),
                    40.toColumnSizedBox(),
                    CustomButton(
                      text: "Update Profile",
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
      ),
    );
  }
}
