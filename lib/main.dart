import 'package:dokterian/Home.dart';
import 'package:dokterian/Schedule.dart';
import 'package:dokterian/ThemeConfig.dart';
import 'package:dokterian/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      supportedLocales: [Locale('en'), Locale('fa')],
      locale: Locale('en'),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        AppLocalizations.delegate
      ],
      theme: ThemeConfig(Locale('en')).light,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;

    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          bottom: 80,
          child: IndexedStack(
            index: index,
            children: [
              HomeScreen(),
              ScheduleScreen(),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: BottomNavigation(
            index: index,
            onTab: (newIndex) {
              setState(() {
                index = newIndex;
              });
            },
          ),
        )
      ],
    ));
  }
}

class BottomNavigation extends StatelessWidget {
  Function(int) onTab;
  int index;
  BottomNavigation({required this.index, required this.onTab});
  @override
  Widget build(BuildContext context) {
    var colorSceme = Theme.of(context).colorScheme;
    var textTheme = Theme.of(context).textTheme;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      color: colorSceme.surface,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BottomNavigationItem(
              imageFilePath: Assets.img.homeActive.path,
              title: 'Home',
              isActive: index == 0,
              onTap: () {
                onTab(0);
              }),
          BottomNavigationItem(
              imageFilePath: Assets.img.calendar.path,
              title: 'Schedule',
              isActive: index == 1,
              onTap: () {
                onTab(1);
              }),
          BottomNavigationItem(
              imageFilePath: Assets.img.message.path,
              title: 'Chat',
              isActive: index == 2,
              onTap: () {
                onTab(2);
              }),
          BottomNavigationItem(
              imageFilePath: Assets.img.profile.path,
              title: 'Profile',
              isActive: index == 3,
              onTap: () {
                onTab(3);
              }),
        ],
      ),
    );
  }
}

class BottomNavigationItem extends StatelessWidget {
  String imageFilePath;
  String title;
  bool isActive;
  Function() onTap;

  BottomNavigationItem(
      {required this.imageFilePath,
      required this.title,
      required this.isActive,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    var colorSceme = Theme.of(context).colorScheme;
    var textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isActive ? colorSceme.secondary : Colors.white),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imageFilePath,
              width: 24,
              height: 24,
              color: isActive ? colorSceme.primary : Colors.grey,
            ),
            SizedBox(
              width: 8,
            ),
            if (isActive)
              Text(
                title,
                style: textTheme.titleMedium,
              )
          ],
        ),
      ),
    );
  }
}
