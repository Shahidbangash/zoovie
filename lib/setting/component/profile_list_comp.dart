import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:zoovie/const/app_color.dart';

class SettingScreenComponent extends StatelessWidget {
  const SettingScreenComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(
              10,
            ),
            decoration: const BoxDecoration(
              // color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: const HugeIcon(
              icon: HugeIcons.strokeRoundedNotification01,
              color: AppColor.blackColortext,
            ),
          ),
          const Text(
            'Notification screen',
          ),
          const Icon(
            Icons.arrow_forward_ios,
          )
        ],
      ),
    );
  }
}
