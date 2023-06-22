import 'package:flutter/material.dart';
import 'package:media_booster_app_code/Controllers/AudioProvider.dart';
import 'package:media_booster_app_code/Controllers/BottomNavigationprovider.dart';
import 'package:media_booster_app_code/Controllers/VideoPlayerProvider.dart';
import 'package:media_booster_app_code/View/Screens/Home_Page.dart';
import 'package:media_booster_app_code/View/Screens/Open_Music_Page.dart';
import 'package:media_booster_app_code/View/Screens/Splach_Screen.dart';
import 'package:media_booster_app_code/View/Screens/Video_Play_Page.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => VideoPlayer_Provider()),
        ChangeNotifierProvider(
            create: (context) => BottomNavigation_provider()),
        ChangeNotifierProvider(create: (context) => Audio_Provider()),
      ],
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => SplachScreen(),
          "HomePage": (context) => HomePage(),
          "VideoPlayPage": (context) => VideoPlayPage(),
          "OpenMusicPage": (context) => OpenMusicPage(),
        },
      ),
    ),
  );
}
