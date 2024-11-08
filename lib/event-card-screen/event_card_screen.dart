import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoovie/component/custom_app_bar.dart';
import 'package:zoovie/event-card-screen/component/event_card_component.dart';

class EventCardScreen extends StatefulWidget {
  const EventCardScreen({super.key});

  @override
  State<EventCardScreen> createState() => _EventCardScreenState();
}

class _EventCardScreenState extends State<EventCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F4F6),
      // appBar: AppBar(
      //   backgroundColor: Colors.red,
      //   shape: const RoundedRectangleBorder(
      //     borderRadius: BorderRadius.only(
      //       bottomLeft: Radius.circular(24),
      //       bottomRight: Radius.circular(24),
      //     ),
      //   ),
      //   title: Text(
      //     'Latest Event',
      //     style: GoogleFonts.inter(
      //       fontWeight: FontWeight.bold,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      appBar: const CustomAppBar(
        title: 'Latest event',
        isCenter: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [
          EventCard(
            title: 'Graduation & Party',
            date: 'Sat, Jun 10 - 10:00 AM-11:00 PM',
            location: '50 Minorca Ave, Coral Gables',
            imageUrl:
                'https://images.unsplash.com/photo-1531058020387-3be344556be6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          ),
          EventCard(
            title: 'Graduation & Party',
            date: 'Sat, Jun 10 - 10:00 AM-11:00 PM',
            location: '50 Minorca Ave, Coral Gables',
            imageUrl:
                'https://images.unsplash.com/photo-1531058020387-3be344556be6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          ),
          EventCard(
            title: 'Graduation & Party',
            date: 'Sat, Jun 10 - 10:00 AM-11:00 PM',
            location: '50 Minorca Ave, Coral Gables',
            imageUrl:
                'https://images.unsplash.com/photo-1531058020387-3be344556be6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          ),
          EventCard(
            title: 'Graduation & Party',
            date: 'Sat, Jun 10 - 10:00 AM-11:00 PM',
            location: '50 Minorca Ave, Coral Gables',
            imageUrl:
                'https://images.unsplash.com/photo-1531058020387-3be344556be6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          ),
          EventCard(
            title: "Let's ParTEA: Pittsburgh's 21+",
            date: 'Sat, Jun 10 - 10:00 AM-11:00 PM',
            location: '50 Minorca Ave, Coral Gables',
            imageUrl:
                'https://images.unsplash.com/photo-1531058020387-3be344556be6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          ),
          EventCard(
            title: 'Society Sunday Day Party',
            date: 'Sat, Jun 10 - 10:00 AM-11:00 PM',
            location: '50 Minorca Ave, Coral Gables',
            imageUrl:
                'https://images.unsplash.com/photo-1531058020387-3be344556be6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          ),
        ],
      ),
    );
  }
}
