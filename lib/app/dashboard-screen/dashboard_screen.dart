import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:zoovie/app/event-info/view/event_info.dart';
import 'package:zoovie/app/notification-screen/view/notification_screen.dart';
import 'package:zoovie/home-screen/view/home_screen.dart';
import 'package:zoovie/profile-screen/profile_screen.dart';
import 'package:zoovie/search-screen/view/seach_screen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int selectedIndex = 0;

  // List of the screens to display based on the selected index
  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const EventInfoScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[selectedIndex], // Display the selected screen
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        surfaceTintColor: Colors.transparent,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                // icon: const Icon(Icons.home),
                icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedHome03,
                  color: selectedIndex == 0 ? Colors.black : Colors.grey,
                ),
                onPressed: () => _onItemTapped(0),
              ),
              IconButton(
                icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedSearch01,
                  color: selectedIndex == 1 ? Colors.black : Colors.grey,
                ),
                onPressed: () => _onItemTapped(1),
                color: selectedIndex == 1 ? Colors.black : Colors.grey,
              ),
              GestureDetector(
                onTap: () => _onItemTapped(2),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: HugeIcon(
                      icon: HugeIcons.strokeRoundedAdd01,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // IconButton(
              //   icon: const Icon(Icons.person),
              //   onPressed: () => _onItemTapped(3),
              //   color: selectedIndex == 3 ? Colors.black : Colors.grey,
              // ),
              IconButton(
                icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedNotification01,
                  color: selectedIndex == 3 ? Colors.black : Colors.grey,
                ),
                onPressed: () => _onItemTapped(3),
              ),
              IconButton(
                icon: const Icon(Icons.person),
                onPressed: () => _onItemTapped(4),
                color: selectedIndex == 4 ? Colors.black : Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
