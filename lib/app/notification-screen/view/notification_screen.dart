import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoovie/app/notification-screen/component/notification_component.dart';
import 'package:zoovie/const/app_color.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Notifications',
        ),
        surfaceTintColor: Colors.transparent,
        titleTextStyle: GoogleFonts.montserrat(
          color: AppColor.blackColorText,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return const NotificationComponent(
                      imageUrl:
                          'https://images.unsplash.com/photo-1645012656964-8632d7635191?q=80&w=2062&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      title:
                          'Booking Event notification your booking of concert on 15 oct has been conirmed',
                      description:
                          'You have a new notification from John. Tap to read more!',
                      time: '5 min ago',
                      isNew: true,
                    ).paddingBottom(
                      10,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
