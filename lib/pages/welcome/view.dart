
import 'package:dots_indicator/dots_indicator.dart';
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
        child: Obx(()=>Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              onPageChanged: (index){
                controller.state.index.value = index;
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
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned(
                        bottom: 90,
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            foregroundColor: MaterialStateProperty.all(Colors.black),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                              )
                            ),
                            side: MaterialStateProperty.all(
                              const BorderSide(color: Colors.white)
                            )
                          ),
                          child: const Text("Login"),
                        ) 
                      ),
                    ],
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
            ),
            Positioned(
              bottom: 70,
              child: DotsIndicator(
                position: controller.state.index.value,
                dotsCount: 3,
                reversed: true,
                mainAxisAlignment: MainAxisAlignment.center,
                decorator: DotsDecorator(
                  size: const Size.square(9),
                  activeSize: const Size(19.0, 8.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
              )
            )
          ],
        ),
        )
      )
    );
  }
}