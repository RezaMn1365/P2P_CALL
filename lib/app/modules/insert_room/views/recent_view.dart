import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_recorder_device/app/modules/insert_room/controllers/insert_room_controller.dart';
import 'package:shimmer/shimmer.dart';

class RecentView extends GetView {
  RecentView({Key? key}) : super(key: key);
  List colors = [Colors.red, Colors.green, Colors.yellow];
  int colorIndex = 0;
  final controllerFinal = Get.find<InsertRoomController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('RecentView'),
      //   centerTitle: true,
      // ),
      body: Container(
        // height: Get.height,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                // color: Colors.red,
                ),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        // decoration: Decoration(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Obx(
                        () => Stack(
                          children: [
                            controllerFinal.recentNumbers.isNotEmpty
                                ? GridView.builder(
                                    addAutomaticKeepAlives: true,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                    ),
                                    itemCount:
                                        controllerFinal.recentNumbers.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      // print(
                                      //     controllerFinal.recentNumbers.length);
                                      Random random = Random();
                                      colorIndex = random.nextInt(3);
                                      return Card(
                                          color: colors[colorIndex],
                                          child: ListTile(
                                            subtitle: Text(
                                              controllerFinal
                                                  .recentNumbers[index],
                                            ),
                                            dense: true,
                                            // leading: Text(
                                            //   controllerFinal.recentNumbers[index],
                                            // ),
                                            onTap: () {
                                              Get.defaultDialog(
                                                title: 'پیام',
                                                content: Text(
                                                    'برقراری تماس با ${controllerFinal.recentNumbers[index]}؟'),
                                                actions: <Widget>[
                                                  TextButton(
                                                      onPressed: (() {
                                                        controllerFinal
                                                                .outgoingNumber
                                                                .value =
                                                            controllerFinal
                                                                    .recentNumbers[
                                                                index];
                                                        controllerFinal
                                                            .requestCall();
                                                      }),
                                                      child:
                                                          const Text(' تماس ')),
                                                ],
                                              );
                                            },
                                            title: const Text('شماره:'),
                                          ));
                                    })
                                : RefreshIndicator(
                                    onRefresh: controllerFinal.onRefresh,
                                    child: Shimmer.fromColors(
                                      baseColor: Colors.black54,
                                      highlightColor: Colors.black12,
                                      child: GridView.builder(
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                          ),
                                          itemCount: 6,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Card(
                                                color: Colors.black26,
                                                child: ListTile(
                                                  onTap: () {},
                                                  title: null,
                                                ));
                                          }),
                                    ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
