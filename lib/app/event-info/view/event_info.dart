import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoovie/component/app_component.dart';
import 'package:zoovie/const/app_color.dart';
import 'package:zoovie/ticket-summery/ticket_summery.dart';

class EventInfoScreen extends StatelessWidget {
  const EventInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Event Information',
        ),
        titleTextStyle: GoogleFonts.montserrat(
          color: AppColor.blackColortext,
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Event Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://images.unsplash.com/photo-1470229538611-16ba8c7ffbd7?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  height: 200.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16.h),

              // Event Title and Date
              Text(
                'Live Concert 2024',
                style: GoogleFonts.montserrat(
                  fontSize: 16.sp,
                  color: AppColor.blackColortext,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                'Date: Dec 15, 2024',
                style: GoogleFonts.montserrat(
                  fontSize: 14.sp,
                  color: AppColor.greyTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 16.h),

              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1521341957697-b93449760f30?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Text(
                      'Performed by: John Doe',
                      style: GoogleFonts.montserrat(
                        fontSize: 16.sp,
                        color: AppColor.blackColortext,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),

              // Event Description
              Text(
                'Event Description',
                style: GoogleFonts.montserrat(
                  fontSize: 18.sp,
                  color: AppColor.blackColortext,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Join us for an exciting night of live music by renowned artist John Doe, performing his top hits. An unforgettable experience awaits!',
                style: GoogleFonts.montserrat(
                  fontSize: 14.sp,
                  height: 1.5,
                  color: AppColor.greyTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),

              40.height,

              AppComponent().button(
                context,
                title: 'Book Now',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<TicketSummaryScreen>(
                      builder: (context) => const TicketSummaryScreen(),
                    ),
                  );
                },
              ),
              // 40.height,
              // AppComponent().summaryItem(
              //   'Vip',
              //   12,
              //   12,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
