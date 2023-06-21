import 'package:flutter/material.dart';
import 'package:flutter_foreground_task/ui/with_foreground_task.dart';

import 'package:get/get.dart';
import 'package:screen_recorder_device/main.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WithForegroundTask(
      child: WillPopScope(
        onWillPop: () async {
          try {
            // await androidAppRetain.invokeMethod("sendToBackground");
            await androidAppRetain.invokeMethod("homeButton");
          } catch (e) {
            print(e);
          }
          return Future.value(true);
        },
        child: SafeArea(
          child: Scaffold(
            body: Center(
                child: Container(
                    color: Colors.black,
                    child: const Center(
                      child: Text(
                        'بصیر',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ))),
          ),
        ),
      ),
    );
  }
}
