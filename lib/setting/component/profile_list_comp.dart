import 'package:flutter/material.dart';

class SettingScreenComponent extends StatelessWidget {
  const SettingScreenComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(
            10,
          ),
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ),
        const Text(
          'Screen Name',
        ),
        const Icon(
          Icons.arrow_back_ios_new_outlined,
        )
      ],
    );
  }
}
