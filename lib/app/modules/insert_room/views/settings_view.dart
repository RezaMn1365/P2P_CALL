import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:screen_recorder_device/app/core/components/custom_elevated_button.dart';
import 'package:screen_recorder_device/app/core/components/slider.dart';
import 'package:screen_recorder_device/app/core/components/text_form_field.dart';
import 'package:screen_recorder_device/app/modules/insert_room/controllers/insert_room_controller.dart';
import 'package:screen_recorder_device/app/modules/insert_room/views/incoming_view.dart';
import 'package:screen_recorder_device/app/modules/insert_room/views/outgoing_view.dart';
import 'package:screen_recorder_device/main.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SettingsView extends GetView {
  SettingsView({Key? key}) : super(key: key);
  final controllerFinal = Get.find<InsertRoomController>();

  @override
  Widget build(BuildContext context) {
    return Container(
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Obx(
                      () => Container(
                        // height: Get.height / 14,
                        // width: Get.width / 3,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Colors.black26,
                              style: BorderStyle.solid,
                              width: 1),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            underline: const SizedBox(),
                            // decoration: InputDecoration(
                            //     enabledBorder: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(10))),
                            borderRadius: BorderRadius.circular(10.0),
                            elevation: 1, isDense: true,

                            hint: controllerFinal.phoneList.isEmpty
                                ? const Text(
                                    'انتخاب شماره تلفن',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  )
                                : Text(
                                    controllerFinal.phoneList[0],
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                            value: controllerFinal.dropDownValue.value,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            items: controllerFinal.phoneList
                                .map((element) => DropdownMenuItem(
                                      value: element,
                                      child: Text(element),
                                    ))
                                .toList(),
                            onChanged: (val) {
                              controllerFinal.dropDownValue.value =
                                  controllerFinal.onSelected(val!);
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 4,
                    child: Center(
                      child: Container(
                          // height: Get.height / 14,
                          // width: Get.width / 3,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                                color: Colors.black26,
                                style: BorderStyle.solid,
                                width: 1),
                          ),
                          child: Text('انتخاب شماره تلفن')),
                    )),
              ],
            ),

            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: TextFormFieldWidget(
                      PaddingValue: 8,
                      hint: 'اضافه نمودن شماره مجاز',
                      lable: 'شماره مجاز',
                      onTextFormFieldValueChanged: (value) {},
                      textFormFieldController: controllerFinal.whiteListNumber),
                ),
                Expanded(
                  flex: 2,
                  child: RectangelButton(
                      color: appColor,
                      onPressed: () async {
                        if (controllerFinal.whiteListNumber.text.isNotEmpty) {
                          if (controllerFinal.numbers.isNotEmpty) {
                            await controllerFinal.addWhiteListNum(
                                controllerFinal.numbers[0].number,
                                controllerFinal.whiteListNumber.text);
                          } else {
                            Get.defaultDialog(
                                title: 'خطا',
                                content: const Text('شماره معتبر پیدا نشد.'));
                          }
                        } else {
                          Get.defaultDialog(
                              title: 'خطا',
                              content: const Text('شماره را وارد کنید.'));
                        }
                      },
                      loading: false,
                      enabled: true,
                      buttonWidget: const Text('افزودن شماره مجاز')),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: SliderHorizontal(
                      max: 9,
                      min: 0,
                      selection: (value) {
                        SfRangeValues newVal = value;
                        double start = newVal.start;
                        double end = newVal.end;
                        controllerFinal.from.value = start.round();
                        controllerFinal.to.value = end.round();
                        print(value);
                      }),
                ),
                // Expanded(
                //   flex: 2,
                //   child: TextFormFieldWidget(
                //       PaddingValue: 8,
                //       hint: 'از',
                //       lable: 'از محدوده دسترسی',
                //       onTextFormFieldValueChanged: (value) {},
                //       textFormFieldController: controllerFinal.whiteListFrom),
                // ),
                // Expanded(
                //   flex: 2,
                //   child: TextFormFieldWidget(
                //       PaddingValue: 8,
                //       hint: 'تا',
                //       lable: 'تا محدوده دسترسی',
                //       onTextFormFieldValueChanged: (value) {},
                //       textFormFieldController: controllerFinal.whiteListto),
                // ),
                Expanded(
                  flex: 2,
                  child: RectangelButton(
                      color: appColor,
                      onPressed: () async {
                        // if (
                        //   controllerFinal.whiteListFrom.text.isNotEmpty &&
                        //     controllerFinal.whiteListto.text.isNotEmpty) {
                        // var from =
                        //int.parse(controllerFinal.whiteListFrom.text);
                        // var to =
                        //int.parse(controllerFinal.whiteListto.text);
                        if (controllerFinal.from.value >= 0 &&
                            controllerFinal.to.value >= 0 &&
                            controllerFinal.from.value <
                                controllerFinal.to.value) {
                          if (controllerFinal.numbers.isNotEmpty) {
                            await controllerFinal.addWhiteListRange(
                                controllerFinal.numbers[0].number,
                                controllerFinal.from.value,
                                controllerFinal.to.value);
                          } else {
                            Get.defaultDialog(
                                title: 'خطا',
                                content: const Text('شماره معتبر پیدا نشد.'));
                          }
                        } else {
                          Get.defaultDialog(
                              title: 'خطا',
                              content: const Text('محدوده معتبر نیست.'));
                        }
                        // }
                        // else {
                        //   Get.defaultDialog(
                        //       title: 'خطا',
                        //       content: const Text('محدوده را وارد کنید.'));
                        // }
                      },
                      loading: false,
                      enabled: true,
                      buttonWidget: const Text('محدوده دسترسی')),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: TextFormFieldWidget(
                      PaddingValue: 8,
                      hint: 'سطح را وارد کنید',
                      lable: 'شماره سطح',
                      onTextFormFieldValueChanged: (value) {},
                      textFormFieldController: controllerFinal.whiteListLevel),
                ),
                Expanded(
                  flex: 2,
                  child: RectangelButton(
                      color: appColor,
                      onPressed: () async {
                        if (controllerFinal.whiteListLevel.text.isNotEmpty) {
                          if (controllerFinal.numbers.isNotEmpty) {
                            await controllerFinal.addWhiteListLevel(
                                controllerFinal.numbers[0].number,
                                int.parse(controllerFinal.whiteListLevel.text));
                          } else {
                            Get.defaultDialog(
                                title: 'خطا',
                                content: const Text('شماره معتبر پیدا نشد.'));
                          }
                        } else {
                          Get.defaultDialog(
                              title: 'خطا',
                              content: const Text('سطح را وارد کنید.'));
                        }
                      },
                      loading: false,
                      enabled: true,
                      buttonWidget: const Text('سطح دسترسی')),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RectangelButton(
                    color: appColor,
                    onPressed: () async {
                      if (controllerFinal.numbers.isNotEmpty) {
                        await controllerFinal.getWhiteList();
                      } else {
                        Get.defaultDialog(
                            title: 'خطا',
                            content: const Text('شماره معتبر پیدا نشد.'));
                      }
                    },
                    loading: false,
                    enabled: true,
                    buttonWidget: const Text('مشاهده لیست شماره های مجاز')),
              ),
            ),

            // SizedBox(
            //   width: MediaQuery.of(context).size.width,
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: RectangelButton(
            //         color: appColor,
            //         onPressed: () async {
            //           Get.to(() => OutgoingView());
            //         },
            //         loading: false,
            //         enabled: true,
            //         buttonWidget: const Text('out')),
            //   ),
            // ),

            // SizedBox(
            //   width: MediaQuery.of(context).size.width,
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: RectangelButton(
            //         color: appColor,
            //         onPressed: () async {
            //           Get.to(() => IncomingView());
            //         },
            //         loading: false,
            //         enabled: true,
            //         buttonWidget: const Text('in')),
            //   ),
            // ),
            // DialPad(
            //     enableDtmf: false,
            //     outputMask: "0 00000000",
            //     hideSubtitle: true,
            //     backspaceButtonIconColor: Colors.red,
            //     buttonTextColor: Colors.black,
            //     dialOutputTextColor: Colors.black54,
            //     buttonColor: appColor,
            //     keyPressed: (value) {
            //       print('$value was pressed');
            //     },
            //     makeCall: (number) async {
            //       print(number);

            //     }),
          ],
        ),
      ),
    );
  }
}

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    final controllerFinal = Get.find<InsertRoomController>();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
    return Container(
      // height: Get.height,
      height: height,
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: height * .15,
              width: width,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Obx(
                        () => Container(
                          // height: Get.height / 14,
                          // width: Get.width / 3,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                                color: Colors.black26,
                                style: BorderStyle.solid,
                                width: 1),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              underline: const SizedBox(),
                              // decoration: InputDecoration(
                              //     enabledBorder: OutlineInputBorder(
                              //         borderRadius: BorderRadius.circular(10))),
                              borderRadius: BorderRadius.circular(10.0),
                              elevation: 1, isDense: true,

                              hint: controllerFinal.phoneList.isEmpty
                                  ? const Text(
                                      'انتخاب شماره تلفن',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    )
                                  : Text(
                                      controllerFinal.phoneList[0],
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                              value: controllerFinal.dropDownValue.value,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              items: controllerFinal.phoneList
                                  .map((element) => DropdownMenuItem(
                                        value: element,
                                        child: Text(element),
                                      ))
                                  .toList(),
                              onChanged: (val) {
                                controllerFinal.dropDownValue.value =
                                    controllerFinal.onSelected(val!);
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 4,
                      child: Center(
                        child: Container(
                            // height: Get.height / 14,
                            // width: Get.width / 3,
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                  color: Colors.black26,
                                  style: BorderStyle.solid,
                                  width: 1),
                            ),
                            child: const Text('انتخاب شماره تلفن')),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: height * .15,
              width: width,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: TextFormFieldWidget(
                        PaddingValue: 8,
                        hint: 'اضافه نمودن شماره مجاز',
                        lable: 'شماره مجاز',
                        onTextFormFieldValueChanged: (value) {},
                        textFormFieldController:
                            controllerFinal.whiteListNumber),
                  ),
                  Expanded(
                    flex: 2,
                    child: RectangelButton(
                        color: appColor,
                        onPressed: () async {
                          if (controllerFinal.whiteListNumber.text.isNotEmpty) {
                            if (controllerFinal.numbers.isNotEmpty) {
                              await controllerFinal.addWhiteListNum(
                                  controllerFinal.numbers[0].number,
                                  controllerFinal.whiteListNumber.text);
                            } else {
                              Get.defaultDialog(
                                  title: 'خطا',
                                  content: const Text('شماره معتبر پیدا نشد.'));
                            }
                          } else {
                            Get.defaultDialog(
                                title: 'خطا',
                                content: const Text('شماره را وارد کنید.'));
                          }
                        },
                        loading: false,
                        enabled: true,
                        buttonWidget: const Text('افزودن شماره مجاز')),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * .15,
              width: width,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: SliderHorizontal(
                        max: 9,
                        min: 0,
                        selection: (value) {
                          SfRangeValues newVal = value;
                          double start = newVal.start;
                          double end = newVal.end;
                          controllerFinal.from.value = start.round();
                          controllerFinal.to.value = end.round();
                          print(value);
                        }),
                  ),
                  // Expanded(
                  //   flex: 2,
                  //   child: TextFormFieldWidget(
                  //       PaddingValue: 8,
                  //       hint: 'از',
                  //       lable: 'از محدوده دسترسی',
                  //       onTextFormFieldValueChanged: (value) {},
                  //       textFormFieldController: controllerFinal.whiteListFrom),
                  // ),
                  // Expanded(
                  //   flex: 2,
                  //   child: TextFormFieldWidget(
                  //       PaddingValue: 8,
                  //       hint: 'تا',
                  //       lable: 'تا محدوده دسترسی',
                  //       onTextFormFieldValueChanged: (value) {},
                  //       textFormFieldController: controllerFinal.whiteListto),
                  // ),
                  Expanded(
                    flex: 2,
                    child: RectangelButton(
                        color: appColor,
                        onPressed: () async {
                          // if (
                          //   controllerFinal.whiteListFrom.text.isNotEmpty &&
                          //     controllerFinal.whiteListto.text.isNotEmpty) {
                          // var from =
                          //int.parse(controllerFinal.whiteListFrom.text);
                          // var to =
                          //int.parse(controllerFinal.whiteListto.text);
                          if (controllerFinal.from.value >= 0 &&
                              controllerFinal.to.value >= 0 &&
                              controllerFinal.from.value <
                                  controllerFinal.to.value) {
                            if (controllerFinal.numbers.isNotEmpty) {
                              await controllerFinal.addWhiteListRange(
                                  controllerFinal.numbers[0].number,
                                  controllerFinal.from.value,
                                  controllerFinal.to.value);
                            } else {
                              Get.defaultDialog(
                                  title: 'خطا',
                                  content: const Text('شماره معتبر پیدا نشد.'));
                            }
                          } else {
                            Get.defaultDialog(
                                title: 'خطا',
                                content: const Text('محدوده معتبر نیست.'));
                          }
                          // }
                          // else {
                          //   Get.defaultDialog(
                          //       title: 'خطا',
                          //       content: const Text('محدوده را وارد کنید.'));
                          // }
                        },
                        loading: false,
                        enabled: true,
                        buttonWidget: const Text('محدوده دسترسی')),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * .15,
              width: width,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: TextFormFieldWidget(
                        PaddingValue: 8,
                        hint: 'سطح را وارد کنید',
                        lable: 'شماره سطح',
                        onTextFormFieldValueChanged: (value) {},
                        textFormFieldController:
                            controllerFinal.whiteListLevel),
                  ),
                  Expanded(
                    flex: 2,
                    child: RectangelButton(
                        color: appColor,
                        onPressed: () async {
                          if (controllerFinal.whiteListLevel.text.isNotEmpty) {
                            if (controllerFinal.numbers.isNotEmpty) {
                              await controllerFinal.addWhiteListLevel(
                                  controllerFinal.numbers[0].number,
                                  int.parse(
                                      controllerFinal.whiteListLevel.text));
                            } else {
                              Get.defaultDialog(
                                  title: 'خطا',
                                  content: const Text('شماره معتبر پیدا نشد.'));
                            }
                          } else {
                            Get.defaultDialog(
                                title: 'خطا',
                                content: const Text('سطح را وارد کنید.'));
                          }
                        },
                        loading: false,
                        enabled: true,
                        buttonWidget: const Text('سطح دسترسی')),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * .12,
              width: width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RectangelButton(
                    color: appColor,
                    onPressed: () async {
                      if (controllerFinal.numbers.isNotEmpty) {
                        await controllerFinal.getWhiteList();
                      } else {
                        Get.defaultDialog(
                            title: 'خطا',
                            content: const Text('شماره معتبر پیدا نشد.'));
                      }
                    },
                    loading: false,
                    enabled: true,
                    buttonWidget: const Text('مشاهده لیست شماره های مجاز')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
