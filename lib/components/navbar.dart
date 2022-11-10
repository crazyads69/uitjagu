import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

//Desktop NavBar
class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue.withOpacity(0.2),
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20), bottomLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6), //color of shadow
            spreadRadius: 5, //spread radius
            blurRadius: 7, // blur radius
            offset: Offset(0, 1),
          ),
        ],
      ),
      width: Adaptive.w(100),
      height: Adaptive.h(10),
      child: SizedBox(
        height: Adaptive.h(10),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: Adaptive.w(2.5),
              ),
              InkWell(
                  onTap: () {},
                  child: Text(
                    "UIT-Jagu",
                    style: TextStyle(
                        fontSize: Adaptive.px(35),
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                width: Adaptive.w(70),
              ),
              MaterialButton(
                height: Adaptive.h(3),
                onPressed: () {},
                child: Text(
                  "Khám phá",
                  style:
                      TextStyle(fontSize: Adaptive.px(35), color: Colors.white),
                ),
                elevation: 3.0,
                color: Colors.pink,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Mobile and Tablet NavBar
class MobileNavBar extends StatelessWidget {
  const MobileNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue.withOpacity(0.1),
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20), bottomLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300.withOpacity(0.6), //color of shadow
            spreadRadius: 5, //spread radius
            blurRadius: 7, // blur radius
            offset: Offset(0, 1),
          ),
        ],
      ),
      width: Adaptive.w(100),
      height: Adaptive.h(10),
      child: SizedBox(
        width: Adaptive.w(100),
        height: Adaptive.h(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
                child: Text("UIT-Jagu",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Adaptive.px(25),
                        color: Colors.white)),
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
