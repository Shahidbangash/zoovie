import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoovie/component/text_component.dart';
import 'package:zoovie/const/app_color.dart';
import 'package:zoovie/profile-screen/component/profile_tab_button.dart';

class EventComponent extends StatelessWidget {
  const EventComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const EventImage(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const EventInfo(),
                10.height,
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     // EventActionButton(),
                //     // ViewTicketButton(),
                //   ],
                // ),
                15.height,
                const EventStats(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Event Image Component
class EventImage extends StatelessWidget {
  const EventImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
      child: Image.network(
        'https://plus.unsplash.com/premium_photo-1664474653221-8412b8dfca3e?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        height: 200.h,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

// Event Info Component
class EventInfo extends StatelessWidget {
  const EventInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sat, Jan 14 - 11:30 PM GTM-5',
              style: GoogleFonts.montserrat(
                color: AppColor.primaryColor,
                fontSize: 10,
                fontWeight: FontWeight.w500,
                height: 1.6,
              ),
            ),

            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 1,
                ),
                shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    color: AppColor.blackColortext,
                    width: 0.6,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      12,
                    ),
                  ),
                ),
              ),
              child: Text(
                'Connect',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 10,
                  color: AppColor.greyTextColor,
                ),
              ),
            ),
            // ProfileSCreenComponent().button(
            //   context,
            //   title: 'Connect',
            //   onTap: () {},
            //   borderRadius: 12,
            //   height: 30,
            //   width: 80,
            //   color: Colors.white,
            //   textColor: AppColor.greyTextColor,
            //   borderColor: AppColor.greyTextColor,
            // )
          ],
        ),
        5.height,

        const TextComponent(
          title: 'Saturday night - MIDNIGHT PARTY',
          textColor: AppColor.blackColortext,
          textSize: 14,
          textFontweight: FontWeight.w600,
        ),
        //  Text(
        //   'Saturday night - MIDNIGHT PARTY',
        //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        // ),
        5.height,
        // Text(
        //   'Goodwin club, 67114 Gonzalo Manors, South Angelostad, 5 miles away',
        //   style: TextStyle(color: Colors.grey[600], fontSize: 14),
        // ),
        const TextComponent(
          title:
              'Goodwin club, 67114 Gonzalo Manors, South Angelostad, 5 miles away',
          textColor: AppColor.greyTextColor,
          textSize: 12,
          textFontweight: FontWeight.w400,
          alignText: TextAlign.start,
        ),

        20.height,

        ProfileSCreenComponent().button(
          context,
          title: 'View Ticket',
          onTap: () {},
          height: 35,
          borderRadius: 12,
        ),

        10.height,

        const Divider(
          color: Color(0xffEEEEEE),
          height: 1,
        ),
      ],
    );
  }
}

// // Event Action Button Component
// class EventActionButton extends StatelessWidget {
//   const EventActionButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       onPressed: () {},
//       child: const Text('Connect'),
//     );
//   }
// }

// View Ticket Button Component
// class ViewTicketButton extends StatelessWidget {
//   const ViewTicketButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {},
//       style: ElevatedButton.styleFrom(
//         // primary: Colors.red,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//       ),
//       child: const Text('View Ticket'),
//     );
//   }
// }

// Event Stats Component
class EventStats extends StatelessWidget {
  const EventStats({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        StatItem(icon: Icons.favorite, label: '10.2k'),
        StatItem(icon: Icons.chat_bubble_outline, label: '2.5k'),
        StatItem(icon: Icons.share, label: 'Share'),
      ],
    );
  }
}

class StatItem extends StatefulWidget {
  const StatItem({required this.icon, required this.label, super.key});

  final IconData icon;
  final String label;

  @override
  StatItemState createState() => StatItemState();
}

class StatItemState extends State<StatItem> {
  bool _isSelected = false; // Track whether the item is selected

  void _toggleColor() {
    setState(() {
      _isSelected = !_isSelected; // Toggle selection
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleColor, // Handle tap event
      child: Row(
        children: [
          Icon(
            widget.icon,
            color: _isSelected ? AppColor.primaryColor : AppColor.greyTextColor,
          ),
          const SizedBox(width: 4),
          Text(
            widget.label,
            style: GoogleFonts.montserrat(
              color:
                  _isSelected ? AppColor.primaryColor : AppColor.greyTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
