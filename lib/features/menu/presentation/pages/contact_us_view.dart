import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/theme/color.dart';
import '../../../home/presentation/pages/home_view.dart';

class ContactUsView extends StatefulWidget {
  const ContactUsView({super.key});

  @override
  State<ContactUsView> createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);

    try {
      await launchUrl(
        launchUri,
        mode: LaunchMode.externalApplication, // ✅ ensures it opens phone dialer
      );
    } catch (e) {
      debugPrint('Could not launch $phoneNumber: $e');
    }
  }

  Future<void> _sendEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'henryokpere11@gmail.com',
      query: Uri.encodeQueryComponent('subject=Customer Support Inquiry'),
    );

    try {
      await launchUrl(emailLaunchUri, mode: LaunchMode.externalApplication);
    } catch (e) {
      debugPrint('Could not launch email: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("No email app found on your device")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4, // Controls the default height
      minChildSize: 0.4, // Minimum height when collapsed
      maxChildSize: 0.9,
      builder: (BuildContext context, ScrollController scrollController) {
        return ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 24.h),
            height: MediaQuery.sizeOf(context).height * 0.7,
            decoration: BoxDecoration(color: AppColors.background),
            child: SingleChildScrollView(
              controller: scrollController,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 5.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  20.toColumnSizedBox(),
                  GestureDetector(
                    onTap: () {
                      _makePhoneCall('+2347031319372');
                    },
                    child: Container(
                      padding: EdgeInsets.all(17.sp),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          LfxStamp(),
                          10.toRowSizedBox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CONTACT US BY PHONE",
                                style: Theme.of(context).textTheme.myTitleStyle2
                                    .copyWith(color: Colors.black),
                              ),
                              Text(
                                "Click to contact us through Phone",
                                style: Theme.of(context).textTheme.myBodyStyle2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  15.toColumnSizedBox(),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(17.sp),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          LfxStamp(),
                          10.toRowSizedBox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CONTACT US BY WHATSAPP",
                                style: Theme.of(context).textTheme.myTitleStyle2
                                    .copyWith(color: Colors.black),
                              ),
                              Text(
                                "Click to contact us through WhatsApp",
                                style: Theme.of(context).textTheme.myBodyStyle2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  15.toColumnSizedBox(),
                  GestureDetector(
                    onTap: _sendEmail,
                    child: Container(
                      padding: EdgeInsets.all(17.sp),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          LfxStamp(),
                          10.toRowSizedBox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CONTACT US BY EMAIL",
                                style: Theme.of(context).textTheme.myTitleStyle2
                                    .copyWith(color: Colors.black),
                              ),
                              Text(
                                "Click to contact us through Email",
                                style: Theme.of(context).textTheme.myBodyStyle2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
