import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_recorder_device/app/core/components/custom_elevated_button.dart';
import 'package:screen_recorder_device/app/modules/insert_room/controllers/insert_room_controller.dart';
import 'package:screen_recorder_device/main.dart';

class OutgoingView extends GetView {
  OutgoingView({Key? key}) : super(key: key);
  final controllerFinal = Get.find<InsertRoomController>();

  @override
  Widget build(BuildContext context) {
    var heightValue = MediaQuery.of(context).size.height;
    var widthValue = MediaQuery.of(context).size.width;
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
          body: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                // top: 0,
                width: double.infinity,
                height: heightValue,
                // child: Image.asset(
                //   'assets/voice_outgo.jpg',
                //   fit: BoxFit.fitWidth,
                // ),
                //   decoration: const BoxDecoration(
                // image: DecorationImage(
                //   image: ExactAssetImage('assets/voice_outgo.jpg'),
                //   fit: BoxFit.fitWidth,
                // )),
              ),
              Positioned(
                top: heightValue / 17,
                left: widthValue / 4,
                child: CircleAvatar(
                  radius: widthValue / 4,
                  backgroundImage: AssetImage('assets/avatar.png'),
                  backgroundColor: Colors.white,
                  foregroundImage: AssetImage('assets/avatar.png'),
                  onBackgroundImageError: (e, s) {
                    debugPrint('image issue, $e,$s');
                  },
                ),
              ),
              Positioned(
                  top: heightValue * .42,
                  bottom: 0,
                  child: Container(
                    width: widthValue,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                            // color: Colors.red,
                            ),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: null,
                  )),
              Positioned(
                top: heightValue * .46,
                child: Container(
                  height: heightValue * .05,
                  width: widthValue,
                  child: Center(
                    child: Text(
                      controllerFinal.arguments.length > 2
                          ? controllerFinal.arguments[2]
                          : 'unknown',
                      style: const TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: heightValue * .52,
                child: Container(
                  height: heightValue * .035,
                  width: widthValue,
                  child: const Center(
                    child: Text(
                      'در حال تماس',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: heightValue * .56,
                child: Container(
                  // color: Colors.amber,
                  height: heightValue * .35,
                  width: widthValue / 1.3,
                  child: Center(
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: heightValue * .05,
                        crossAxisSpacing: widthValue * .07,
                        crossAxisCount: 3,
                      ),
                      itemBuilder: (context, index) {
                        List<Widget> callKeys = [];
                        Widget speakerKey = CircularButton(
                            enabled: true,
                            color: Colors.black12,
                            loading: false,
                            buttonWidget: Obx(() =>
                                controllerFinal.speakerPhone.value
                                    ? Image.asset('assets/sp.png')
                                    : Image.asset('assets/sp_mute.png')),
                            onPressed: (() {
                              controllerFinal.speakerPhone.toggle();
                            }));
                        callKeys.add(speakerKey);

                        Widget videoCallKey = CircularButton(
                            enabled: true,
                            color: Colors.black12,
                            loading: false,
                            buttonWidget: Obx(() => controllerFinal.muted.value
                                ? Image.asset('assets/mic.png')
                                : Image.asset('assets/mic_mute.png')),
                            onPressed: (() {
                              controllerFinal.muted.toggle();
                            }));
                        callKeys.add(videoCallKey);

                        Widget blutoothKey = CircularButton(
                            enabled: false,
                            color: Colors.black12,
                            loading: false,
                            buttonWidget: Image.asset('assets/ble.png'),
                            onPressed: (() {}));

                        callKeys.add(blutoothKey);
                        callKeys.add(const SizedBox());
                        callKeys.add(const SizedBox());
                        callKeys.add(const SizedBox());

                        return callKeys[index];
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                top: heightValue * .82,
                child: Container(
                  // color: Colors.redAccent,
                  height: heightValue * .12,
                  width: widthValue * .22,
                  child: CircularButton(
                      enabled: true,
                      color: Colors.transparent,
                      loading: false,
                      buttonWidget: Center(
                        child: Image.asset('assets/red.png'),
                      ),
                      onPressed: (() async {
                        await controllerFinal.requestCancelCall();
                      })),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
