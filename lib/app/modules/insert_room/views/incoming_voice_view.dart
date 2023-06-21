import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_recorder_device/app/modules/insert_room/controllers/insert_room_controller.dart';
import 'package:screen_recorder_device/main.dart';

class IncomingVoiceView extends GetView {
  IncomingVoiceView({Key? key}) : super(key: key);

  RxBool isDropped = false.obs;
  final controllerFinal = Get.find<InsertRoomController>();
  @override
  Widget build(BuildContext context) {
    var heightValue = MediaQuery.of(context).size.height;
    var widthValue = MediaQuery.of(context).size.width;
    var keyHeight = MediaQuery.of(context).size.height / 9; //9
    var keyWidth = MediaQuery.of(context).size.width / 4; //4
    List<Widget> arrowsF = [];
    List<Widget> arrowsB = [];
    for (int i = 0; i < 4; i++) {
      arrowsF.add(Expanded(
        child: Icon(
          Icons.arrow_forward_ios_sharp,
          size: 20,
          color: Colors.white.withOpacity(1 - (i / 4)),
        ),
      ));
    }

    for (int i = 0; i < 4; i++) {
      arrowsB.add(Expanded(
        child: Icon(
          Icons.arrow_back_ios_sharp,
          size: 20,
          color: Colors.white.withOpacity((i / 4) + 0.25),
        ),
      ));
    }

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
            alignment: Alignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('assets/back.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                // child: BackdropFilter(
                //   filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                //   child: Container(
                //     decoration:
                //         BoxDecoration(color: Colors.white.withOpacity(0.0)),
                //   ),
                // ),
              ),
              Positioned(
                bottom: heightValue / 1.55,
                left: widthValue / 4,
                child: CircleAvatar(
                  radius: widthValue / 4,
                  backgroundImage: const AssetImage('assets/avatar.png'),
                  backgroundColor: Colors.white,
                  foregroundImage: const AssetImage('assets/avatar.png'),
                  onBackgroundImageError: (e, s) {
                    debugPrint('image issue, $e,$s');
                  },
                ),
              ),
              Positioned(
                bottom: heightValue / 1.8,
                left: widthValue / 4,
                child: Container(
                  alignment: Alignment.center,
                  width: widthValue / 2,
                  height: heightValue / 16,
                  decoration: ShapeDecoration(
                    color: Colors.black.withOpacity(0.5),
                    shape: const StadiumBorder(),
                  ),
                  child: Text(
                    controllerFinal.arguments.length > 2
                        ? controllerFinal.arguments[1] == 'true'
                            ? 'hided'
                            : controllerFinal.arguments[2]
                        : 'unknown',
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                width: widthValue / 2.4,
                height: heightValue / 22,
                bottom: heightValue / 2.05,
                left: widthValue / 3.4,
                child: Container(
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: Colors.black.withOpacity(0.5),
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    'در حال تماس صوتی',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: widthValue / 3,
                  child: Container(
                    height: heightValue / 9.5,
                    width: widthValue / 6.5,
                    child: Center(
                        child: Row(
                      children: [...arrowsF],
                    )),
                  )),
              Positioned(
                  bottom: 0,
                  right: widthValue / 3,
                  child: Container(
                    // color: Colors.black,
                    height: heightValue / 9.5,
                    width: widthValue / 6.5,
                    child: Center(
                        child: Row(
                      children: [...arrowsB],
                    )),
                  )),
              Positioned(
                bottom: 0,
                // left: 5,
                // left: widthValue / 11,
                right: widthValue / 1.5,
                child: Draggable<String>(
                  axis: Axis.horizontal,
                  // Data is the value this Draggable stores.
                  data: 'green',
                  feedback: Container(
                    height: keyHeight,
                    width: keyWidth,
                    child: Center(
                      child: Image.asset('assets/green.png'),
                    ),
                  ),
                  //New
                  childWhenDragging: Container(
                    height: keyHeight,
                    width: keyWidth,
                    child: const SizedBox(),
                    // Center(
                    //   child: Image.asset('assets/green.png'),
                    // ),
                  ),
                  child: Container(
                    height: keyHeight,
                    width: keyWidth,
                    child: Center(
                      child: Image.asset('assets/green.png'),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: widthValue / 1.5,
                child: Draggable<String>(
                  axis: Axis.horizontal,
                  // Data is the value this Draggable stores.
                  data: 'red',
                  feedback: Container(
                    height: keyHeight,
                    width: keyWidth,
                    child: Center(
                      child: Image.asset('assets/red.png'),
                    ),
                  ),
                  //New
                  childWhenDragging: Container(
                    height: keyHeight,
                    width: keyWidth,
                    child: const SizedBox(),
                    // Center(
                    //   child: Image.asset('assets/green.png'),
                    // ),
                  ),
                  child: Container(
                    height: keyHeight,
                    width: keyWidth,
                    child: Center(
                      child: Image.asset('assets/red.png'),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0, // widthValue / 4,
                child: DragTarget<String>(
                  builder: (
                    BuildContext context,
                    List<dynamic> accepted,
                    List<dynamic> rejected,
                  ) {
                    return Container(
                      // color: Colors.red,
                      height: heightValue / 9,
                      width: widthValue / 2,
                      child: null,
                    );
                  },
                  onWillAccept: (data) {
                    return data == 'red';
                  },
                  onAccept: (data) {
                    isDropped.value = true;
                    // print(data);
                    Get.find<InsertRoomController>().endCall();
                  },
                ),
              ),
              Positioned(
                bottom: 0, // heightValue / 20,
                // left: widthValue / 2,
                right: 0,
                child: DragTarget<String>(
                  builder: (
                    BuildContext context,
                    List<dynamic> accepted,
                    List<dynamic> rejected,
                  ) {
                    return Container(
                      // color: Colors.green,
                      height: heightValue / 9,
                      width: widthValue / 2,
                      child: null,
                    );
                  },
                  onWillAccept: (data) {
                    return data == 'green';
                  },
                  onAccept: (data) {
                    isDropped.value = true;
                    // print(data);
                    Get.find<InsertRoomController>().answerVoiceCall();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
