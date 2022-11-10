import 'dart:html';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uitjagu/components/navbar.dart';
import 'package:uitjagu/components/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      maxTabletWidth: 1000,
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'UIT-Jagu - Những chú báo đốm',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "ProductSans",
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: const MyHomePage(title: 'UIT-Jagu'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Device.orientation == Orientation.landscape ||
                    Device.screenType == ScreenType.desktop) ...[
                  DesktopNavBar(),
                  SizedBox(
                    height: Adaptive.h(10),
                  ),
                  DesktopLangding(),
                ] else ...[
                  MobileNavBar(),
                  MobileLanding(),
                ],
              ],
            ),
          ),
        ),
        width: Adaptive.w(100),
        height: Adaptive.h(80),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.blueAccent,
              Colors.lightBlue,
              Colors.lightBlueAccent
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
    );
  }
}
