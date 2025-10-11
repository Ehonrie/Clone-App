import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';
import 'contact_us_view.dart';

class AboutView extends StatefulWidget {
  const AboutView({super.key});

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.background,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0.w),
            child: GestureDetector(
              onTap: () => showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                context: context,
                builder: (context) {
                  return ContactUsView();
                },
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                isDismissible: true,
              ),
              child: Container(
                // padding: EdgeInsets.symmetric(vertical: 5.h),
                height: 50.h,
                width: 120.w,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    "Contact Us",
                    style: Theme.of(context).textTheme.myBodyStyle3,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              15.toColumnSizedBox(),
              Text(
                "ABOUT US",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
              ),
              Text(
                "GET TO KNOW MORE ABOUT LFX EDUCATIONAL SOFTWARE",
                style: Theme.of(context).textTheme.myBodyStyle,
              ),
              27.toColumnSizedBox(),
              Text("The App", style: Theme.of(context).textTheme.myTitleStyle4),
              Text(
                "LFX provides E-learning solutions and services to students, government, organizations and corporate bodies via various platforms such as mobile, web and desktop.\n\nThese devices have been loaded with highly scalable software in which are stocked quality and feature-rich content with near zero inaccuracy.",
                style: Theme.of(
                  context,
                ).textTheme.myBodyStyle3.copyWith(color: Colors.black),
              ),
              10.toColumnSizedBox(),
              Text(
                "Our Team",
                style: Theme.of(context).textTheme.myTitleStyle4,
              ),
              Text(
                "We pride ourselves as one of the foremost educational content providers in Nigeria.Our workforce is an epitome of team balance. Our team comprises a mix in the right proportion of individuals in: Content, Engineering, Product, Sales and Marketing, Growth and Quality assurance/control.",
                style: Theme.of(
                  context,
                ).textTheme.myBodyStyle3.copyWith(color: Colors.black),
              ),
              10.toColumnSizedBox(),
              Text("Mission", style: Theme.of(context).textTheme.myTitleStyle4),
              Text(
                "We have a simplistic mission to make learning simple and exciting because we believe that if one learns simply and enjoyably, they will hardly forget that which they learnt.\n\nWe want to help students succeed in their academics and organizations run a successful business.",
                style: Theme.of(
                  context,
                ).textTheme.myBodyStyle3.copyWith(color: Colors.black),
              ),
              10.toColumnSizedBox(),
              Text("Vision", style: Theme.of(context).textTheme.myTitleStyle4),
              Text(
                "LFX aims to change the narrative and perception of learning. We want people to see learning as excitement. We aim to achieve this with richly engineered content in various forms.",
                style: Theme.of(
                  context,
                ).textTheme.myBodyStyle3.copyWith(color: Colors.black),
              ),
               
            ],
          ),
        ),
      ),
    );
  }
}
