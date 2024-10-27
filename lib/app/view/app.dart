import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoovie/app/dashboard-screen/dashboard_screen.dart';
import 'package:zoovie/app/event-info/view/event_info.dart';
import 'package:zoovie/app/notification-screen/view/notification_screen.dart';
import 'package:zoovie/home-screen/view/home_screen.dart';
import 'package:zoovie/l10n/l10n.dart';
import 'package:zoovie/search-screen/view/seach_screen.dart';
import 'package:zoovie/signup-screen/sign_up_screen.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        393,
        852,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            ),
            useMaterial3: true,
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const DashBoardScreen(),
        );
      },
    );
  }
}
