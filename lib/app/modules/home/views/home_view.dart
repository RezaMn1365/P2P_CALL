import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_foreground_task/ui/with_foreground_task.dart';
import 'package:get/get.dart';
import 'package:screen_recorder_device/app/core/components/custom_elevated_button.dart';
import 'package:screen_recorder_device/app/core/components/stop_watch.dart';
import 'package:screen_recorder_device/app/core/components/text_form_field.dart';
import 'package:screen_recorder_device/main.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

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
          backgroundColor: appColor,
          appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: appColor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // Expanded(
                //   flex: 2,
                //   child: Icon(
                //     Icons.settings_outlined,
                //     color: Colors.white,
                //     size: 30.0,
                //   ),
                // ),
                Expanded(
                  flex: 10,
                  child: SizedBox(),
                ),
                Text('بصیر'),
                Expanded(
                  flex: 2,
                  child: Icon(
                    Icons.chat_bubble_outline_outlined,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
              ],
            ),
            centerTitle: true,
          ),
          body: Container(
            // height: Get.height,
            height: MediaQuery.of(context).size.height,

            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    // color: Colors.red,
                    ),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            // decoration: Decoration(),
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: Get.height / 10,
                      child: const Center(
                        child: Text(
                          'ورود به سامانه',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: Get.height / 12,
                      child: TextFormFieldWidget(
                        textFormFieldController:
                            controller.userFormFieldController,
                        PaddingValue: 0,
                        hint: 'لطفا نام کاربری را وارد کنید',
                        lable: 'نام کاربری',
                        onTextFormFieldValueChanged: (text) {
                          controller.getUsername(text);
                        },
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: Get.height / 12,
                      child: TextFormFieldWidget(
                        textFormFieldController:
                            controller.passFormFieldController,
                        PaddingValue: 0,
                        hint: 'لطفا رمز عبور را وارد کنید',
                        lable: 'رمز عبور',
                        onTextFormFieldValueChanged: (text) {
                          controller.getPassword(text);
                        },
                      ),
                    ),
                  ),

                  Obx(
                    () => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: Get.height / 10,
                        child: RectangelButton(
                            color: appColor,
                            loading: controller.loading.value,
                            enabled: controller.keyDisable.value,
                            buttonWidget: Text('ورود'),
                            onPressed: () async {
                              controller.keyDisable.value = false;
                              await controller.submit();
                              controller.keyDisable.value = true;
                            }),
                      ),
                    ),
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  //   child: SizedBox(
                  //     height: Get.height / 10,
                  //     child: RectangelButton(
                  //         enabled: true,
                  //         buttonText: 'ticket',
                  //         onPressed: () async {
                  //           controller.ticket();
                  //         }),
                  //   ),
                  // ),

                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  //   child: SizedBox(
                  //     height: Get.height / 10,
                  //     child: RectangelButton(
                  //         enabled: true,
                  //         buttonText: 'socket',
                  //         onPressed: () async {
                  //           controller.openSocket();
                  //         }),
                  //   ),
                  // ),

                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  //   child: SizedBox(
                  //     height: Get.height / 10,
                  //     child: RectangelButton(
                  //         enabled: true,
                  //         buttonText: 'ticket',
                  //         onPressed: () async {
                  //           controller.sendTicketSocket();
                  //         }),
                  //   ),
                  // ),

                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  //   child: SizedBox(
                  //     height: Get.height / 10,
                  //     child: RectangelButton(
                  //         enabled: true,
                  //         buttonText: 'ورود',
                  //         onPressed: () async {

                  //         }),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}

// "device_id": "GS7r8c0Xh0rzJJHQSxS45x0Nh0EyuIMf5c3uc7vk",
//         "serial": "5555",
//         "local_id": "DUVoqoRpY2Vrbh4T",
//         "secret": "m3oGIjuOmFiuFUF29eqwPNT5l5oEwVLc"
