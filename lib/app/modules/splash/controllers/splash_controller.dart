import 'package:basir_core_sdk/basir_core_sdk.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:screen_recorder_device/app/routes/app_pages.dart';
import 'package:screen_recorder_device/main.dart';

class SplashController extends GetxController {
  final basirCore = Get.find<BasirCore>(
    tag: (BasirCore).toString(),
  );
  @override
  void onInit() {
    onceAfterInitialized();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onceAfterInitialized() async {
    await basirCore.init(
        serverIp: '193.186.32.188', grpcServerPort: 8083, httpServerPort: 0);
    // await basirCore
    //     .storage
    //     .storeTokens(accessToken: '', refreshToken: '', expirtyMillis: 0);

    // print(await basirCore.authGrpcImpl.tryRefreshoken('mobile_device'));

    // await basirCore.authGrpcImpl.tryRefreshoken('mobile_device');
    if (await checkLastTokens()) {
      service.invoke('setAsForeground');
      goToInsertRoom();
    } else {
      goToHome();
    }
  }

  void goToHome() {
    Get.toNamed(Routes.HOME);
  }

  void goToInsertRoom() {
    // service.invoke('setAsForeground');
    Get.toNamed(Routes.INSERT_ROOM);
  }

  Future<bool> checkLastTokens() async {
    var tokens = await basirCore.storage.getTokens();

    if (tokens['expirtyMillis'] == null ||
        tokens['refreshToken'] == null ||
        tokens['accessToken'] == null) {
      print('false null');
      return false;
    } else {
      if (tokens['expirtyMillis']! < DateTime.now().millisecondsSinceEpoch) {
        if (await checkInternetConnection(InternetConnectionChecker())) {
          var refreshResponse =
              await basirCore.authGrpcImpl.tryRefreshoken('mobile_device');
          if (refreshResponse != true) {
            print('refresh null');
            return false;
          } else {
            print('true refresh');
            return true;
          }
        } else {
          return false;
        }
      } else {
        print('true...');
        return true;
      }
    }
  }
}

// Create customized instance which can be registered via dependency injection
final InternetConnectionChecker customInstance =
    InternetConnectionChecker.createInstance(
  checkTimeout: const Duration(seconds: 2),
  checkInterval: const Duration(seconds: 1),
);

Future<bool> checkInternetConnection(
  InternetConnectionChecker internetConnectionChecker,
) async {
  // Simple check to see if we have Internet
  // ignore: avoid_print
  // print('''The statement 'this machine is connected to the Internet' is: ''');
  final bool isConnected = await InternetConnectionChecker().hasConnection;
  // ignore: avoid_print
  print(
    isConnected.toString(),
  );

  return isConnected;
}
