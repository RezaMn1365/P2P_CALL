import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:screen_recorder_device/app/binding/remote_source_binding.dart';
import 'package:screen_recorder_device/app/core/theme/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app/routes/app_pages.dart';

Color appColor = const Color.fromARGB(146, 0, 0, 75);
var androidAppRetain = const MethodChannel("android_app_retain");
final service = FlutterBackgroundService();

void main() async {
  // HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  // final FlutterLocalNotificationsPlugin localNotifications =
  //     FlutterLocalNotificationsPlugin();
  //       const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('app_icon');

  //     final InitializationSettings initializationSettings = InitializationSettings(
  // android: initializationSettingsAndroid,
  // );
  // final NotificationAppLaunchDetails? notificationAppLaunchDetails =
  //     await localNotifications.getNotificationAppLaunchDetails();

  await initializeService();

  runApp(
    // WillStartForegroundTask(
    //   onWillStart: () async {
    //     // Return whether to start the foreground service.
    //     return true;
    //   },
    //   androidNotificationOptions: AndroidNotificationOptions(
    //     channelId: 'notification_channel_id',
    //     channelName: 'Foreground Notification',
    //     channelDescription:
    //         'This notification appears when the foreground service is running.',
    //     channelImportance: NotificationChannelImportance.HIGH,
    //     priority: NotificationPriority.DEFAULT,
    //     iconData: NotificationIconData(
    //       resType: ResourceType.mipmap,
    //       resPrefix: ResourcePrefix.ic,
    //       name: 'launcher',
    //     ),
    //   ),
    //   iosNotificationOptions: const IOSNotificationOptions(
    //     showNotification: true,
    //     playSound: false,
    //   ),
    //   foregroundTaskOptions: const ForegroundTaskOptions(
    //     interval: 1000,
    //     autoRunOnBoot: false,
    //     allowWifiLock: true,
    //   ),
    //   notificationTitle: 'Foreground Service is running',
    //   notificationText: 'Tap to return to the app',
    //   callback: () {
    //     // Timer.periodic(
    //     //     Duration(seconds: 5), ((timer) => print('Socket On: $timer')));
    //   },
    //   child:
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      title: "بصیر",
      initialBinding: RemoteSourceBindings(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      supportedLocales: const [
        Locale('en', ''),
      ],
      locale: const Locale('en', ''),
    ),
    // ),
  );
}

Future<void> initializeService() async {
  // final service = FlutterBackgroundService();

  /// OPTIONAL, using custom notification channel id
  const AndroidNotificationChannel channel = AndroidNotificationChannel(
    enableVibration: false,
    playSound: false, enableLights: true, showBadge: true,
    'my_foreground', // id
    'MY FOREGROUND SERVICE', // title
    description:
        'This channel is used for important notifications.', // description
    importance: Importance.high, // importance must be at low or higher level
  );

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // if (Platform.isIOS) {
  //   await flutterLocalNotificationsPlugin.initialize(
  //     const InitializationSettings(
  //       iOS: IOSInitializationSettings(),
  //     ),
  //   );
  // }

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await service.configure(
    androidConfiguration: AndroidConfiguration(
      // this will be executed when app is in foreground or background in separated isolate
      onStart: onStart,

      // auto start service
      autoStart: true,
      isForegroundMode: true,

      notificationChannelId: 'my_foreground',
      initialNotificationTitle: 'سرویس تماس بصیر',
      initialNotificationContent: 'در حال راه اندازی...',
      foregroundServiceNotificationId: 888,
    ),
    iosConfiguration: IosConfiguration(
      // auto start service
      autoStart: true,

      // this will be executed when app is in foreground in separated isolate
      onForeground: onStart,

      // you have to enable background fetch capability on xcode project
      onBackground: onIosBackground,
    ),
  );

  service.startService();
}

// to ensure this is executed
// run app from xcode, then from xcode menu, select Simulate Background Fetch

@pragma('vm:entry-point')
Future<bool> onIosBackground(ServiceInstance service) async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();

  SharedPreferences preferences = await SharedPreferences.getInstance();
  await preferences.reload();
  final log = preferences.getStringList('log') ?? <String>[];
  log.add(DateTime.now().toIso8601String());
  await preferences.setStringList('log', log);

  return true;
}

@pragma('vm:entry-point')
void onStart(ServiceInstance service) async {
  print('onStart');
  // Only available for flutter 3.0.0 and later
  DartPluginRegistrant.ensureInitialized();

  // For flutter prior to version 3.0.0
  // We have to register the plugin manually

  SharedPreferences preferences = await SharedPreferences.getInstance();
  await preferences.setString("hello", "world");

  /// OPTIONAL when use custom notification
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  if (service is AndroidServiceInstance) {
    service.on('setAsForeground').listen((event) async {
      service.setAsForegroundService();
      // await SocketListener().connect();
    });

    service.on('setAsBackground').listen((event) {
      service.setAsBackgroundService();
    });
  }

  service.on('stopService').listen((event) {
    service.stopSelf();
  });

  // bring to foreground
  // Timer.periodic(const Duration(seconds: 2), (timer) async {
  //   if (service is AndroidServiceInstance) {
  //     if (await service.isForegroundService()) {
  //       /// OPTIONAL for use custom notification
  //       /// the notification id must be equals with AndroidConfiguration when you call configure() method.

  flutterLocalNotificationsPlugin.show(
    888,
    'سرویس تماس بصیر فعال است',
    'جهت بازگشت به برنامه ضربه بزنید',
    const NotificationDetails(
      android: AndroidNotificationDetails(
        'my_foreground',
        'MY FOREGROUND SERVICE',
        icon: 'ic_bg_service_small',
        ongoing: true,
      ),
    ),
  );

  //       // if you don't using custom notification, uncomment this
  //       service.setForegroundNotificationInfo(
  //         title: "My App Service",
  //         content: "Updated at ${DateTime.now()}",
  //       );
  //     }
  //   }

  //   /// you can see this log in logcat
  //   print('FLUTTER BACKGROUND SERVICE: ${DateTime.now()}');

  //   // // test using external plugin
  //   // final deviceInfo = DeviceInfoPlugin();
  //   // String? device;
  //   // if (Platform.isAndroid) {
  //   //   final androidInfo = await deviceInfo.androidInfo;
  //   //   device = androidInfo.model;
  //   // }

  //   // if (Platform.isIOS) {
  //   //   final iosInfo = await deviceInfo.iosInfo;
  //   //   device = iosInfo.model;
  //   // }

  //   service.invoke(
  //     'update',
  //     {
  //       "current_date": DateTime.now().toIso8601String(),
  //       "device": 'device',
  //     },
  //   );
  // });
}
