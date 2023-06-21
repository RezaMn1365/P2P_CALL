import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:screen_recorder_device/app/core/components/dialpad.dart';
import 'package:screen_recorder_device/app/modules/insert_room/views/dialpad_view.dart';
import 'package:screen_recorder_device/main.dart';
import '../controllers/insert_room_controller.dart';

class InsertRoomView extends GetView<InsertRoomController> {
  InsertRoomView({Key? key}) : super(key: key);
  List colors = [Colors.red, Colors.green, Colors.yellow];
  int colorIndex = 0;

  Widget menu() {
    return Container(
      color: appColor,
      child: const TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
        tabs: [
          Tab(
            text: "تماس های اخیر",
            icon: Icon(Icons.history),
          ),
          Tab(
            text: "شماره گیر",
            icon: Icon(Icons.dialpad),
          ),
          Tab(
            text: "تنظیمات",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }

  Future<void> showMenu() async {
    showModalBottomSheet(
        isScrollControlled: true,
        context: Get.context!,
        builder: (BuildContext context) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.63,
            child: DialPad(
                enableDtmf: false,
                outputMask: "0 000 00000",
                hideSubtitle: false,
                backspaceButtonIconColor: Colors.red,
                buttonTextColor: Colors.black,
                dialOutputTextColor: Colors.black54,
                buttonColor: appColor,
                keyPressed: (value) {
                  print('$value was pressed');
                },
                makeCall: (number) async {
                  controller.outgoingNumber.value = number;
                  controller.callerID.value = 'false';
                  controller.type.value = 'video';
                  await controller.addRecentNumbers();
                  controller.requestCall();
                }),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
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
        child: DefaultTabController(
          // initialIndex: 1,
          length: 1,
          child: Scaffold(
            // bottomNavigationBar:
            // BottomAppBar(
            //   elevation: 1,
            //   color: appColor,
            //   child: Container(
            //     padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //     height: 45.0,
            //     child: Center(
            //       child: TextButton(
            //           onPressed: () async {
            //             await showMenu();
            //           },
            //           child: const Text(
            //             'تماس',
            //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //           )),
            //       // IconButton(
            //       //   onPressed: showMenu,
            //       //   icon: Icon(Icons.keyboard_double_arrow_up),
            //       //   color: Colors.white,
            //       // ),
            //     ),
            //   ),
            // ),
            body: TabBarView(
              children: [
                // RecentView(),
                DialpadView(),
                // Dialer(),
                // Settings(),
              ],
            ),

            // bottomNavigationBar: menu(),
            backgroundColor: appColor,
            appBar: AppBar(
              leading: const SizedBox(),
              // bottom: TabBar(
              //   labelColor: Colors.white,
              //   unselectedLabelColor: Colors.white70,
              //   indicatorSize: TabBarIndicatorSize.tab,
              //   indicatorPadding: EdgeInsets.all(5.0),
              //   indicatorColor: Colors.blue,
              //   tabs: [
              //     // Tab(
              //     //   text: "تماس های اخیر",
              //     //   icon: Icon(Icons.history),
              //     // ),
              //     Tab(
              //       text: "شماره گیر",
              //       icon: Icon(Icons.dialpad),
              //     ),
              //     // Tab(
              //     //   text: "تنظیمات",
              //     //   icon: Icon(Icons.settings),
              //     // ),
              //   ],
              // ),
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
                  // Expanded(
                  //     flex: 2,
                  //     child: ElevatedButton(
                  //       onPressed: () {
                  //         controller.StartTimer();
                  //         Get.to(CallingView());
                  //       },
                  //       child: Text('incoming'),
                  //     )),
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
          ),
        ),
      ),
    );
  }
}
