import 'package:basir_core_sdk/basir_core_sdk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:screen_recorder_device/app/modules/insert_room/views/calling_view.dart';
import 'package:screen_recorder_device/app/modules/splash/controllers/splash_controller.dart';
import 'package:screen_recorder_device/app/routes/app_pages.dart';

class HomeController extends GetxController {
  RxString userName = ''.obs;
  RxString password = ''.obs;
  RxString userName1 = ''.obs;
  RxString password1 = ''.obs;
  RxString ip = ''.obs;
  RxString agent = ''.obs;
  RxString details = ''.obs;
  RxBool loading = false.obs;
  RxBool applyuserName = false.obs;
  RxBool applyPassWord = false.obs;
  TextEditingController userFormFieldController = TextEditingController();
  TextEditingController passFormFieldController = TextEditingController();
  RxBool checkingToken = true.obs;
  RxBool tokensValid = false.obs;
  RxBool keyDisable = true.obs;

  final basirCore = Get.find<BasirCore>(
    tag: (BasirCore).toString(),
  );

  void getUsername(String text) {
    userName.value = text;
  }

  getPassword(String text) {
    password.value = text;
  }

  onceAfterInitialized() async {
    // await basirCore.init(
    //     serverIp: '193.186.32.188', grpcServerPort: 8083, httpServerPort: 0);
    var user = await basirCore.storage.getUser();

    if (user != null) {
      userFormFieldController.text = user.userName!;
      passFormFieldController.text = user.passWord!;
      userName.value = user.userName!;
      password.value = user.passWord!;
      refresh();
    }

    // if (await checkLastTokens()) {
    //   checkingToken.value = false;
    //   tokensValid.value = true;
    //   goToInsertRoom();
    // } else {
    //   checkingToken.value = false;
    // }
  }

  Future<bool> submit() async {
    loading.value = true;
    bool res = false;

    if (await checkInternetConnection(InternetConnectionChecker())) {
      try {
        res = await basirCore.authGrpcImpl.signInRequest(
          userName.value,
          password.value,
          'mobile_device',
        );
      } catch (e) {
        res = false;
      }

      if (res == true) {
        loading.value = false;
        await basirCore.storage
            .storeUser(userName: userName.value, passWord: password.value);
        goToInsertRoom();
        return true;
      } else {
        loading.value = false;
        Get.defaultDialog(
            title: 'خطا',
            content: Text('$res نام کاربری یا رمز عبور اشتباه است'));
        return false;
      }
    } else {
      Get.defaultDialog(title: 'خطا', content: const Text('اتصال اینترنت...'));
      Future.delayed(const Duration(seconds: 2))
          .then((value) => Get.offAndToNamed(Routes.HOME));
      loading.value = false;
      return false;
    }
  }

  goToInsertRoom() {
    Get.toNamed(Routes.INSERT_ROOM);
  }

  Future<bool> getTicket() async {
    return await basirCore.authGrpcImpl.getTicket();
  }

  final dynamicVar = Rx<dynamic>(null);
  Future<void> socketInit() async {
    if (await basirCore.tcpSocket
        .initSoket((data) => dynamicVar.value = data)) {
      await basirCore.tcpSocket.sendVerifyReqSocket();
    }
  }

  Future<void> sendReport(dynamic reportData) async {
    await basirCore.tcpSocket.sendDataOnSocket(reportData);
  }

  @override
  void onInit() {
    super.onInit();
    onceAfterInitialized();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // Future<bool> checkLastTokens() async {
  //   var tokens = await basirCore.storage.getTokens();

  //   // print(DateTime.now().millisecondsSinceEpoch);
  //   // print(tokens['expirtyMillis']);

  //   if (tokens['expirtyMillis'] == null ||
  //       tokens['refreshToken'] == null ||
  //       tokens['accessToken'] == null) {
  //     print('false null');
  //     return false;
  //   } else {
  //     print(DateTime.now().millisecondsSinceEpoch);
  //     print(tokens['expirtyMillis']!);
  //     if (tokens['expirtyMillis']! < DateTime.now().millisecondsSinceEpoch) {
  //       print(DateTime.now().millisecondsSinceEpoch);
  //       var refreshResponse =
  //           await basirCore.authGrpcImpl.tryRefreshoken('mobile_device');
  //       if (refreshResponse != true) {
  //         print('refresh null');
  //         return false;
  //       } else {
  //         // userName = refreshResponse['payload']['username'];
  //         print('true refresh');
  //         return true;
  //       }
  //     } else {
  //       // var user = await Storage().getUser();
  //       // userName = user!.profile!.first_name;
  //       print('true...');
  //       return true;
  //     }
  //   }
  // }
}
