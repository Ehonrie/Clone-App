import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/routes/manager.dart';
import 'package:clone_app/core/theme/color.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              50.toColumnSizedBox(),
              Text(
                "PROFILE",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
              ),
              Text(
                "ACCESS APP MENU AND MORE FEATURES",
                style: Theme.of(context).textTheme.myBodyStyle,
              ),
              27.toColumnSizedBox(),
              ProfileTabs(
                image: Icons.person_3_outlined,
                title: "Edit Profile",
                onTap: () {
                  Navigator.pushNamed(context, RoutesManager.editProfileRoute);
                },
              ),
              10.toColumnSizedBox(),
              ProfileTabs(
                image: Icons.password_outlined,
                title: "Reset Password",
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RoutesManager.resetPasswordRoute,
                  );
                },
              ),
              10.toColumnSizedBox(),
              ProfileTabs(
                image: Icons.web_asset_sharp,
                title: "General Information",
                onTap: () {
                  Navigator.pushNamed(context, RoutesManager.generalInfoRoute);
                },
              ),
              10.toColumnSizedBox(),
              ProfileTabs(
                image: Icons.badge_outlined,
                title: "Special Information",
                onTap: () {
                  Navigator.pushNamed(context, RoutesManager.specialInfoRoute);
                },
              ),
              10.toColumnSizedBox(),
              ProfileTabs(
                image: Icons.bookmark,
                title: "Bookmarked Question",
                onTap: () {
                  Navigator.pushNamed(context, RoutesManager.bookmarkedRoute);
                },
              ),
              10.toColumnSizedBox(),
              ProfileTabs(
                image: Icons.lock_open,
                title: "Activate App",
                onTap: () {
                  Navigator.pushNamed(context, RoutesManager.activateAppRoute);
                },
              ),
              10.toColumnSizedBox(),
              ProfileTabs(
                image: Icons.settings,
                title: "Setting",
                onTap: () {},
              ),
              10.toColumnSizedBox(),
              ProfileTabs(
                image: Icons.info_outline,
                title: "About Us",
                onTap: () {},
              ),
              10.toColumnSizedBox(),
              ProfileTabs(
                image: Icons.logout_outlined,
                title: "Logout",
                onTap: () {},
              ),
              10.toColumnSizedBox(),
              ProfileTabs(
                image: Icons.delete_outline,
                color: Colors.red,
                title: "Delete Account",
                onTap: () {},
              ),
              10.toColumnSizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileTabs extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final IconData image;
  final Color? color;
  const ProfileTabs({
    super.key,
    required this.title,
    required this.image,
    this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4.r,
              offset: Offset(1, 1),
              spreadRadius: 0.5.r,
            ),
          ],
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: color ?? AppColors.primary,
              ),
              child: Icon(image, size: 30.sp, color: Colors.white),
            ),
            15.toRowSizedBox(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: Theme.of(context).textTheme.myTitleStyle4),
                  Icon(Icons.arrow_forward_ios_rounded, size: 20.sp),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
