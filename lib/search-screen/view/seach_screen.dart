import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoovie/search-screen/component/search_component.dart';
import 'package:zoovie/search-screen/component/search_event_component.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            children: [
              30.height,
              const SearchFieldComponent(),
              20.height,
              Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return const SearchEventComponent().paddingBottom(
                      15,
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
