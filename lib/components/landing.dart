import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

//Desktop Landing
class DesktopLangding extends StatelessWidget {
  const DesktopLangding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Adaptive.w(100),
      height: Adaptive.h(60),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: Adaptive.w(2.5),
                  ),
                  Text(
                      'Welcome to UIT-Jagu \n\n Nơi đào tạo ra những báo thủ ... ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Adaptive.px(40),
                          color: Colors.white)),
                  Image.asset(
                    "assets/img/landing_pic.png",
                    width: Adaptive.w(50),
                    height: Adaptive.h(50),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Mobile + Tablet Landing
class MobileLanding extends StatelessWidget {
  const MobileLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Adaptive.h(60),
      width: Adaptive.w(100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: Adaptive.h(5),
          ),
          Text(
            "Welcome to UIT-Jagu ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: Adaptive.px(30)),
          ),
          Image.asset(
            "assets/img/landing_pic.png",
            width: Adaptive.w(80),
            height: Adaptive.h(30),
          ),
          Text(
            "Nơi tập hợp báo thủ",
            style: TextStyle(fontSize: Adaptive.px(25), color: Colors.white),
          ),
          SizedBox(
            height: Adaptive.h(10),
          )
        ],
      ),
    );
  }
}
