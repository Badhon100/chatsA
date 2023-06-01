
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'index.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 369.w,
        height: 780.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              scrollDirection: Axis.horizontal,
              reverse: false,
              onPageChanged: (index){

              },
              controller: PageController(
                initialPage: 9, keepPage: false
              ),
              pageSnapping: true,
              physics: const ClampingScrollPhysics(),
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://i.pinimg.com/736x/bd/35/ca/bd35caa1d66da3a15ed952b4ac1010f7.jpg")
                    )
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://i.pinimg.com/236x/4d/41/69/4d4169ce26c13c62a1cf20d45a05f130.jpg")
                    )
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://marketplace.canva.com/EAE3NoV0pm0/1/0/900w/canva-live-in-the-moment-quote-sunset-floral-phone-wallpaper-mg3EIAS3gP0.jpg")
                    )
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}