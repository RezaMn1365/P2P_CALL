import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:get/get.dart';
import 'package:screen_recorder_device/app/core/components/custom_elevated_button.dart';
import 'package:screen_recorder_device/app/core/components/stop_watch.dart';
import 'package:screen_recorder_device/app/modules/insert_room/controllers/insert_room_controller.dart';
import 'package:screen_recorder_device/main.dart';

class CallingView extends GetView {
  CallingView({Key? key}) : super(key: key);

  final controllerFinal = Get.find<InsertRoomController>();

  showMenu(double bw, double bh) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: Get.context!,
        builder: (BuildContext context) {
          return Container(
            color: Colors.black12.withOpacity(0.5),
            height: bh * 1.5,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: bh,
                    width: bw,
                    child: CircularButton(
                      color: appColor,
                      enabled: true,
                      loading: false,
                      buttonWidget: Obx(() => controllerFinal.turnFlash.value
                          ? const Icon(Icons.flash_off)
                          : const Icon(Icons.flash_on)),
                      onPressed: () async {
                        await Get.find<InsertRoomController>().turnOffFlash();
                      },
                    )),
                Container(
                    height: bh,
                    width: bw,
                    child: CircularButton(
                      enabled: true,
                      color: Colors.black12,
                      loading: false,
                      buttonWidget: Image.asset('assets/cam.png'),
                      //  Obx(() =>
                      //     controllerFinal.cameraDirection.value
                      //         ? Image.asset('assets/cam.png')
                      //         : const Icon(Icons.flip_camera_android)),
                      onPressed: () async {
                        await controllerFinal.switchCamera();
                      },
                    )),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double buttonHeight = height / 10;
    double buttonwidth = width / 5;
    return WillPopScope(
      onWillPop: () async {
        // try {
        //   await androidAppRetain.invokeMethod("sendToBackground");
        //   // await androidAppRetain.invokeMethod("homeButton");
        // } catch (e) {
        //   print(e);
        // }
        // return Future.value(true);
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            elevation: 1,
            color: Colors.transparent,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              height: 45.0,
              child: Center(
                child: IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.arrow_drop_up),
                  onPressed: () {
                    showMenu(buttonwidth, buttonHeight);
                  },
                ),
              ),
            ),
          ),
          backgroundColor: appColor,
          body: Obx(() {
            var _x = 0.0;
            var _y = 0.0;
            return Stack(alignment: Alignment.center, children: [
              //////////////////////////////////////////////
              controllerFinal.initialized &&
                      controllerFinal.remoteRenderers.isNotEmpty
                  ? RTCVideoView(
                      // mirror: true,
                      // objectFit:
                      //     RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
                      controllerFinal.remoteRenderers[0])
                  : const SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: Center(child: CircularProgressIndicator())),
              ////////////////////////////////////

              Positioned(
                left: controllerFinal.xx.value,
                top: controllerFinal.yy.value,
                child: Draggable(
                  childWhenDragging: Container(),
                  onDragUpdate: (details) {
                    // print(details.globalPosition);
                  },
                  onDragEnd: (dragDetails) {
                    // controllerFinal.xx.value = dragDetails.offset.dx;
                    // if applicable, don't forget offsets like app/status bar
                    // controllerFinal.yy.value = dragDetails.offset.dy;
                    // print('offset: ${dragDetails.offset}');

                    if (dragDetails.offset.dy < (height / 2) &&
                        dragDetails.offset.dx < (width / 2)) {
                      controllerFinal.xx.value = 10;
                      controllerFinal.yy.value = 10;
                    }

                    if (dragDetails.offset.dy > (height / 2) &&
                        dragDetails.offset.dx < (width / 2)) {
                      controllerFinal.xx.value = 10;
                      controllerFinal.yy.value = height * 0.55;
                    }

                    if (dragDetails.offset.dy > (height / 2) &&
                        dragDetails.offset.dx > (width / 2)) {
                      controllerFinal.xx.value = width * 0.67;
                      controllerFinal.yy.value = height * 0.55;
                    }

                    if (dragDetails.offset.dy < (height / 2) &&
                        dragDetails.offset.dx > (width / 2)) {
                      controllerFinal.xx.value = width * 0.67;
                      controllerFinal.yy.value = 10;
                    }
                  },
                  feedback: Container(
                    padding: const EdgeInsets.only(
                      top: 10, // controllerFinal.yy.value,
                      left: 10, // controllerFinal.xx.value
                    ),
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.black12, shape: BoxShape.rectangle),
                    child: controllerFinal.initialize.value
                        ? SizedBox(
                            width: 120,
                            height: 120,
                            child: RTCVideoView(controllerFinal.localRenderer,
                                mirror: true))
                        : const SizedBox(),
                  ),
                  child: Container(
                    // padding: EdgeInsets.only(
                    //     top: controllerFinal.yy.value,
                    //     left: controllerFinal.xx.value),
                    height: 140,
                    width: 110,
                    decoration: const BoxDecoration(
                        color: Colors.transparent, shape: BoxShape.rectangle),
                    child: Obx(
                      () => controllerFinal.initialize.value
                          ? SizedBox(
                              width: 140,
                              height: 140,
                              child: RTCVideoView(controllerFinal.localRenderer,
                                  mirror: true))
                          : Container(
                              width: 140,
                              height: 140,
                              color: Colors.transparent,
                            ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 25,
                child: Container(
                    height: height * .07,
                    width: width / 3,
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                      color: Colors.black.withOpacity(0.5),
                      shape: const StadiumBorder(),
                    ),
                    child: Obx(
                        () => controllerFinal.remoteRenderersInitialized.value
                            ? Builder(builder: (context) {
                                // controllerFinal.StopTimer();
                                // controllerFinal.StartTimer();
                                return Center(
                                    child: CallTimer(
                                        color: Colors.white,
                                        stopWatchTimer:
                                            controllerFinal.stopWatchTimer,
                                        height: height * 0.7));
                              })
                            : Center(
                                child: Text(
                                'Connecting...',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.025),
                              )))),
              ),

              Positioned(
                bottom: 10,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: buttonHeight,
                      width: buttonwidth,
                      child: CircularButton(
                          enabled: true,
                          color: Colors.black12,
                          loading: false,
                          buttonWidget: Obx(() =>
                              controllerFinal.speakerPhone.value
                                  ? Image.asset('assets/sp.png')
                                  : Image.asset('assets/sp_mute.png')),
                          onPressed: (() {
                            controllerFinal.muteSpeaker();
                          })),
                    ),
                    Container(
                      height: buttonHeight,
                      width: buttonwidth,
                      child: CircularButton(
                          enabled: true,
                          color: Colors.black12,
                          loading: false,
                          buttonWidget: Obx(() =>
                              controllerFinal.turnOffCam.value
                                  ? Image.asset('assets/video.png')
                                  : const Icon(Icons.videocam_off)),
                          onPressed: (() {
                            controllerFinal.turnOffCamera();
                          })),
                    ),
                    Container(
                      height: buttonHeight,
                      width: buttonwidth,
                      child: CircularButton(
                        enabled: true,
                        color: Colors.black12,
                        loading: false,
                        buttonWidget: Obx(() => controllerFinal.muted.value
                            ? Image.asset('assets/mic.png')
                            : Image.asset('assets/mic_mute.png')),
                        onPressed: (() {
                          controllerFinal.muteMicrophone();
                        }),
                      ),
                    ),
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
                            await controllerFinal.endCall();
                          })),
                    ),
                  ],
                ),
              ),
            ]);
          }),
        ),
      ),
    );
  }
}
