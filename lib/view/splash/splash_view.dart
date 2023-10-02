import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/view/splash/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 1500),
              height: controller.isAnimate.value ? 200 : 40,
              width: controller.isAnimate.value ? 200 : 40,
              clipBehavior: Clip.antiAlias,
              curve: Curves.bounceOut,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: controller.isAnimate.value ? Colors.green.withOpacity(0.5) : Colors.white,
              ),
              child: FlutterLogo(),
            ),
            FadeTransition(
              opacity: controller.animation!.value,
              child: Text(
                " getx",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
