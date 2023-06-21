import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_recorder_device/app/core/components/dialpad.dart';
import 'package:screen_recorder_device/app/modules/insert_room/controllers/insert_room_controller.dart';

class DialpadView extends GetView {
  DialpadView({Key? key}) : super(key: key);
  final controllerFinal = Get.find<InsertRoomController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text('DialpadView'),
      //   centerTitle: true,
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                // height: 70,
                child: Center(child: Obx(() {
                  var xxxx = controllerFinal.phoneNumber.value;
                  return TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      suffixIcon: GestureDetector(
                        child: const Icon(Icons.backspace, size: 30),
                        onTap: () {
                          controllerFinal.myController.text.isNotEmpty
                              ? controllerFinal.myController.text =
                                  controllerFinal.myController.text.substring(
                                      0,
                                      controllerFinal.myController.text.length -
                                          1)
                              : null;
                        },
                      ),
                    ),
                    focusNode: controllerFinal.focusNode,

                    controller: controllerFinal.myController,
                    textAlign: TextAlign.center,
                    showCursor: false,
                    style: const TextStyle(fontSize: 40),
                    // Disable the default soft keybaord
                    keyboardType: TextInputType.none,
                  );
                })),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: NumPad(
              size: MediaQuery.of(context).size,
              buttonSize: MediaQuery.of(context).size.height / 9,
              buttonColor: Colors.transparent,
              iconColor: Colors.green,
              controller: controllerFinal.myController,
              delete: () {
                controllerFinal.myController.text.isNotEmpty
                    ? controllerFinal.myController.text =
                        controllerFinal.myController.text.substring(
                            0, controllerFinal.myController.text.length - 1)
                    : null;
              },
              onVideoSubmit: () async {
                controllerFinal.outgoingNumber.value =
                    controllerFinal.myController.text;
                controllerFinal.callerID.value = "false";
                controllerFinal.type.value = "video";
                await controllerFinal.addRecentNumbers();
                controllerFinal.requestCall();
              },
              onVoiceSubmit: () async {
                controllerFinal.outgoingNumber.value =
                    controllerFinal.myController.text;
                controllerFinal.callerID.value = "false";
                controllerFinal.type.value = "audio";
                await controllerFinal.addRecentNumbers();
                controllerFinal.requestCall();
              },
            ),
          ),
        ],
      ),
    );
  }
}
