import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:get/get.dart';
import 'package:screen_recorder_device/app/core/components/custom_elevated_button.dart';
import 'package:screen_recorder_device/app/modules/insert_room/controllers/insert_room_controller.dart';
import 'package:screen_recorder_device/main.dart';

class OutgoingVideoView extends GetView {
  OutgoingVideoView({Key? key}) : super(key: key);
  final controllerFinal = Get.find<InsertRoomController>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double buttonHeight = height / 11;
    double buttonwidth = width / 5.5;
    return WillPopScope(
      onWillPop: () async {
        // try {
        //   // await androidAppRetain.invokeMethod("sendToBackground");
        //   await androidAppRetain.invokeMethod("homeButton");
        // } catch (e) {
        //   print(e);
        // }
        // return Future.value(true);
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: appColor,
          body: Container(
              // height: Get.height,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  // color: Colors.white,
                  border: Border.all(
                      // color: Colors.red,
                      ),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: OrientationBuilder(
                builder: (context, orientation) {
                  var _x = 0.0;
                  var _y = 0.0;
                  return Stack(alignment: Alignment.center, children: [
                    controllerFinal.localRenderer.srcObject != null
                        ? Container(
                            height: height,
                            width: double.infinity,
                            child: RTCVideoView(
                              // objectFit: RTCVideoViewObjectFit
                              //     .RTCVideoViewObjectFitCover,
                              controllerFinal.localRenderer,
                              // mirror: true
                            ),
                          )
                        : Container(
                            height: double.infinity,
                            width: double.infinity,
                            child: const Center(
                                child: CircularProgressIndicator(
                              color: Colors.white,
                            )),
                          ),
                    Positioned(
                      top: 25,
                      child: Container(
                        height: height * .05,
                        width: width,
                        child: Center(
                          child: Text(
                            controllerFinal.arguments.length > 2
                                ? controllerFinal.arguments[2]
                                : 'unknown',
                            style: const TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 55,
                      child: Container(
                        height: height * .1,
                        width: width / 3,
                        alignment: Alignment.center,
                        decoration: ShapeDecoration(
                          color: Colors.black.withOpacity(0.5),
                          shape: StadiumBorder(),
                        ),
                        child: const Text(
                          'در حال تماس',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: buttonHeight,
                            width: buttonwidth,
                            child: CircularButton(
                                enabled: false,
                                color: Colors.black38,
                                loading: false,
                                buttonWidget: Obx(() =>
                                    controllerFinal.speakerPhone.value
                                        ? Image.asset('assets/sp.png')
                                        : Image.asset('assets/sp_mute.png')),
                                onPressed: (() {
                                  controllerFinal.speakerPhone.toggle();
                                })),
                          ),
                          Container(
                            height: buttonHeight,
                            width: buttonwidth,
                            child: CircularButton(
                                enabled: false,
                                color: Colors.black38,
                                loading: false,
                                buttonWidget: Obx(() =>
                                    controllerFinal.turnOffCam.value
                                        ? Image.asset('assets/video.png')
                                        : const Icon(Icons.videocam_off)),
                                onPressed: (() {
                                  controllerFinal.turnOffCam.toggle();
                                })),
                          ),
                          Container(
                              height: buttonHeight,
                              width: buttonwidth,
                              child: CircularButton(
                                  enabled: false,
                                  color: Colors.black38,
                                  loading: false,
                                  buttonWidget: Obx(() =>
                                      controllerFinal.muted.value
                                          ? Image.asset('assets/mic.png')
                                          : Image.asset('assets/mic_mute.png')),
                                  onPressed: (() {
                                    controllerFinal.muted.toggle();
                                  }))),
                          Container(
                            // color: Colors.redAccent,
                            height: buttonHeight,
                            width: buttonwidth,
                            child: CircularButton(
                                enabled: true,
                                color: Colors.red,
                                loading: false,
                                buttonWidget: Center(
                                  child: Image.asset('assets/red.png'),
                                ),
                                onPressed: (() async {
                                  await controllerFinal.requestCancelCall();
                                })),
                          ),
                        ],
                      ),
                    ),
                  ]);
                },
              )),
        ),
      ),
    );
  }
}
