import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:basir_core_sdk/basir_core_sdk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grpc/grpc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:proximity_screen_lock/proximity_screen_lock.dart';
import 'package:screen_recorder_device/app/modules/insert_room/views/calling_view.dart';
import 'package:screen_recorder_device/app/modules/insert_room/views/calling_voice_view.dart';
import 'package:screen_recorder_device/app/modules/insert_room/views/incoming_view.dart';
import 'package:screen_recorder_device/app/modules/insert_room/views/incoming_voice_view.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart' as WRTC;
import 'package:screen_recorder_device/app/modules/insert_room/views/outgoing_video_view.dart';
import 'package:screen_recorder_device/app/modules/insert_room/views/outgoing_view.dart';
import 'package:screen_recorder_device/app/modules/splash/controllers/splash_controller.dart';
import 'package:screen_recorder_device/app/routes/app_pages.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:path_provider/path_provider.dart';

class InsertRoomController extends GetxController // SuperController
    with
        GetSingleTickerProviderStateMixin {
  final basirCore = Get.find<BasirCore>(
    tag: (BasirCore).toString(),
  );
  RxString roomId = ''.obs;
  RxString roomId1 = ''.obs;
  RxList rooms = [].obs;
  RxBool loading = false.obs;
  RxBool applyRoomId = false.obs;
  List<String> arguments = [''];
  TextEditingController roomFormFieldController = TextEditingController();
  TextEditingController whiteListNumber = TextEditingController();
  TextEditingController whiteListFrom = TextEditingController();
  TextEditingController whiteListto = TextEditingController();
  TextEditingController whiteListLevel = TextEditingController();
  final TextEditingController myController = TextEditingController();

  RxString phoneNumber = ''.obs;
  late final focusNode = FocusNode();

  final dropDownValue = Rx<dynamic>(null);
  final onSelected = Rx<dynamic>(null);

  RxDouble xx = 0.0.obs;
  RxDouble yy = 0.0.obs;

  RxList<dynamic> phoneList = [].obs;

  RxList<dynamic> lst = [].obs;
  final ScrollController scrollController = ScrollController();
  RxInt dialNumber = 0.obs;
  RxString outgoingNumber = ''.obs;
  RxString callerID = 'false'.obs;

  RxInt totalNumbers = 0.obs;
  RxList numbers = [].obs;
  Map<String, dynamic> tokens = {};

  WRTC.RTCVideoRenderer localRenderer = WRTC.RTCVideoRenderer();
  RxList remoteRenderers = [].obs;
  RxBool initialize = false.obs;
  RxBool grid = false.obs;
  ReceivePort? _receivePort;
  RxInt grideNum = 1.obs;
  final remoteRenderer = Rx<dynamic>(null);
  late WRTC.MediaStream localStream;

  RxString type = ''.obs;
  RxBool hide = false.obs;
  RxString peerNum = ''.obs;
  // RxList<PhoneNumbersHistory> recentNumbers = RxList<PhoneNumbersHistory>([]);
  RxList<String> recentNumbers = [''].obs;

  RxInt from = 0.obs;
  RxInt to = 9.obs;

  RxBool requestVideoCall = false.obs;
  RxBool remoteRenderersInitialized = false.obs;
  RxBool remoteRenderersInitializedAudio = false.obs;

  RxBool socketDestroyed = false.obs;

  RxBool endedCall = false.obs;

  RxString stat = ''.obs;

  late WRTC.RTCPeerConnection _peerConnection;

  void onSelection() {
    if (focusNode.hasFocus) {
      myController.selection = TextSelection.fromPosition(
        TextPosition(
          offset: myController.text.length,
        ),
      );
    }
  }

  @override
  void onResumed() {
    print('Socket On: onResumed');
  }

  void onPaused() {
    print('Socket On: onPaused');
  }

  @override
  void onInactive() {
    print('Socket On: onInactive');
  }

  @override
  void onDetached() {
    print('Socket On: onDetached');
  }

  @override
  void onInit() {
    myController.addListener(() {
      phoneNumber.value = myController.text;
      myController.selection = myController.selection = TextSelection(
        baseOffset: myController.text.length,
        extentOffset: myController.text.length,
      );
    });
    onceAfterInitialized();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() async {
    super.onClose();
    print('Socket On dispose');
    myController.dispose();
    focusNode.dispose();
    await stopWatchTimer.dispose();
    // exit(0);
  }

  Future<void> onRefresh() async {}

  Future<void> addRecentNumbers() async {
    List<String> newList = [];
    var getHistory = await basirCore.storage.getPhoneNumbers();

    if (getHistory == null) {
      var current = PhoneNumbersHistory(
          ownNumber: dropDownValue.value.toString(),
          numbers: [outgoingNumber.value],
          time: '1000');
      await basirCore.storage.storePhoneNumbers(phoneNumbers: current);
    } else {
      newList = getHistory.numbers!;
      newList.add(outgoingNumber.value);
      var finalList = newList.toSet().toList();

      var newObj = PhoneNumbersHistory(
          ownNumber: dropDownValue.value.toString(),
          numbers: finalList,
          time: '1000');
      await basirCore.storage.storePhoneNumbers(phoneNumbers: newObj);
    }
  }

  Future<PhoneNumbersHistory?> getRecentNumbers() async {
    return await basirCore.storage.getPhoneNumbers();
  }

  getRoomId(String text) {
    roomId.value = text;
  }

  void requestCall() async {
    // endedCall.value = false;
    // FlutterRingtonePlayer.playRingtone(looping: true);
    if (!basirCore.callSocket.initialized) {
      Get.defaultDialog(
          content: const Text('Socket Closed Later. Please Try again.'));
      await basirCore.callSocket.dispose();
      await basirCore.callSocket.initialize();
      basirCore.callSocket.sink.add(makeSocketSignInData());
    } else {
      type.value == 'video'
          ? requestVideoCall.value = true
          : requestVideoCall.value = false;

      basirCore.callSocket.sink.add(makeCallData());
    }
  }

  Future<void> requestCancelCall() async {
    await AwesomeNotifications().dismissAllNotifications();

    basirCore.callSocket.sink.add(makeCancelCallData());

    requestVideoCall.value = false;

    // basirCore.callSocket.sink.add(makeEndCallData());
    // basirCore.callSocket.sink.add(makeEndPeerConnectionData());
    await webRTCdispose();
    stopTimer();
    goToInsertRoomPage();
  }

  void callerConnect() {
    basirCore.callSocket.sink.add(makeCallerData());
  }

  Future<void> answerVideoCall() async {
    // endedCall.value = false;
    // print('RAWWWWWWW: ${arguments[3]}');
    basirCore.callSocket.sink.add(makeAnswerCallData(arguments[3]));
    // FlutterRingtonePlayer.stop();

    goToVideoCallingPage();
  }

  Future<void> answerVoiceCall() async {
    // endedCall.value = false;
    print('RAWWWWWWW: ${arguments[3]}');
    basirCore.callSocket.sink.add(makeAnswerCallData(arguments[3]));
    // await FlutterRingtonePlayer.stop();

    goToVoiceCallingPage();
  }

  Future<void> endCall() async {
    // if (endedCall.value == false) {
    await AwesomeNotifications().dismissAllNotifications();

    turnFlash.value = true;
    turnOffCam.value = true;
    speakerPhone.value = true;
    muted.value = true;
    cameraDirection.value = false;
    requestVideoCall.value = false;

    basirCore.callSocket.sink.add(makeEndCallData());
    basirCore.callSocket.sink.add(makeEndPeerConnectionData());
    await webRTCdispose();

    try {
      await ProximityScreenLock.setActive(false);
    } catch (e) {
      debugPrint('Something went wrong: $e');
    }

    stopTimer();
    goToInsertRoomPage();
    endedCall.value = true;
    // onceAfterInitialized();
    // }
  }

  void goToOutgoingView() {
    // Get.to(() => CallingView());
    Get.to(() => OutgoingView());
  }

  void goToOutgoingVideoView() {
    // Get.to(() => CallingView());
    Get.to(() => OutgoingVideoView());
  }

  void goToIncomingViewPage() {
    // Get.to(() => CallingView());
    Get.to(() => IncomingVoiceView());
  }

  void goToVideoCallingPage() {
    // startTimer();
    Get.to(() => CallingView());
    // controller.forward();
  }

  void goToVoiceCallingPage() async {
    // startTimer();

    try {
      await ProximityScreenLock.setActive(true);
    } catch (e) {
      debugPrint('Something went wrong: $e');
    }

    Get.to(() => CallingVoiceView());
  }

  void goToInsertRoomPage() {
    Get.offAndToNamed(Routes.INSERT_ROOM);
  }

  String makeSocketSignInData() {
    var socketSignInData = {
      "own_number": numbers[0].number,
      "token": tokens['accessToken'],
      "agent": 'mobile_device'
    };
    var socketData = JsonEncoder()
        .convert({"event": 'user_signin', "data": socketSignInData});
    print('Socket Data: $socketData');
    return socketData;
  }

  String makeAnswerCallData(String room) {
    var socketSignInData = {
      "room_id": room,
    };
    var socketData = JsonEncoder()
        .convert({"event": "answer_call", "data": socketSignInData});
    // print('Socket Data: $socketData');
    return socketData;
  }

  String makeEndCallData() {
    var socketData =
        JsonEncoder().convert({"event": "end_call_requesting", "data": null});
    // print('Socket Data: $socketData');
    return socketData;
  }

  String makeEndPeerConnectionData() {
    var socketData =
        JsonEncoder().convert({"event": "on_return_webrtc", "data": null});
    // print('Socket Data: $socketData');
    return socketData;
  }

  String makeCallData() {
    var data = {
      "peer_number": outgoingNumber.value,
      "type": type.value,
      "hide": callerID.value == 'false' ? false : true
    };
    var socketData = JsonEncoder().convert({"event": "call_to", "data": data});
    print('Socket Data: $socketData');
    return socketData;
  }

  String makeCancelCallData() {
    var data = {
      "room_id": arguments[3],
    };
    var socketData =
        JsonEncoder().convert({"event": "cancel_call", "data": data});
    print('Socket Data: $socketData');
    return socketData;
  }

  String makeCallerData() {
    var data = {
      "room_id": arguments[3],
    };
    var socketData =
        JsonEncoder().convert({"event": "on_webrtc_caller", "data": data});
    print('Socket Data: $socketData');
    return socketData;
  }

  final StopWatchTimer stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countUp,
    onChange: (value) {},
    onChangeRawSecond: (value) {},
    onChangeRawMinute: (value) {},
    onStopped: () {
      print('onStop');
    },
    onEnded: () {
      print('onEnded');
    },
  );

  void startTimer() {
    stopWatchTimer.rawTime.listen((value) {});
    // _stopWatchTimer.minuteTime.listen((value) {});
    // _stopWatchTimer.secondTime.listen((value) {});
    // _stopWatchTimer.records.listen((value) {});
    // _stopWatchTimer.fetchStopped.listen((value) {});
    // _stopWatchTimer.fetchEnded.listen((value) {});

    stopWatchTimer.onStartTimer();
  }

  void stopTimer() {
    stopWatchTimer.onResetTimer();
    stopWatchTimer.onStopTimer();
  }

  onceAfterInitialized() async {
    // _initForegroundTask();
    // await _startForegroundTask();

    await Permission.camera.request();
    await Permission.audio.request();
    await Permission.microphone.request();
    await Permission.storage.request();
    await Permission.accessMediaLocation.request();
    await Permission.mediaLibrary.request();
    await Permission.manageExternalStorage.request();
    await Permission.videos.request();
    await Permission.criticalAlerts.request();
    await Permission.ignoreBatteryOptimizations.request();
    await Permission.notification.request();
    await Permission.scheduleExactAlarm.request();
    await Permission.systemAlertWindow.request();

    await initNotification();

    var fetchedRecent = await getRecentNumbers();

    if (fetchedRecent != null && fetchedRecent.numbers != null) {
      recentNumbers.removeAt(0);
      fetchedRecent.numbers?.forEach((element) {
        recentNumbers.add(element);
      });
    }

    tokens = await basirCore.storage.getTokens();

    if (await checkInternetConnection(InternetConnectionChecker())) {
      if (await getNumbers()) {
        if (await connect()) {
        } else {
          Get.defaultDialog(title: 'خطا', content: const Text('اتصال سوکت'));
          Future.delayed(const Duration(seconds: 2))
              .then((value) => Get.offAndToNamed(Routes.HOME));
          // Get.back();
        }
      } else {
        Get.defaultDialog(
            title: 'خطا', content: const Text('اتصال دریافت شماره'));
        Future.delayed(const Duration(seconds: 2))
            .then((value) => Get.offAndToNamed(Routes.HOME));
        // Get.back();
      }
    } else {
      Get.defaultDialog(title: 'خطا', content: const Text('اتصال اینترنت...'));
      Future.delayed(const Duration(seconds: 2))
          .then((value) => Get.offAndToNamed(Routes.HOME));
      // Get.back();
    }
  }

  Future<bool> addWhiteListLevel(String ownNumber, int level) async {
    try {
      await basirCore.call.addWhiteListLevel(ownNumber, level);
      Get.defaultDialog(title: 'Message', content: const Text('Level Added'));
      return true;
    } on GrpcError catch (e) {
      Get.defaultDialog(title: 'خطا', content: Text('$e'));
      return false;
    } catch (e) {
      Get.defaultDialog(title: 'خطا', content: Text('$e'));
      return false;
    }
  }

  Future<bool> addWhiteListRange(String ownNumber, int from, int to) async {
    try {
      await basirCore.call.addWhiteListRange(ownNumber, from, to);
      Get.defaultDialog(title: 'Message', content: const Text('Range Added'));
      return true;
    } on GrpcError catch (e) {
      Get.defaultDialog(title: 'خطا', content: Text('$e'));
      return false;
    } catch (e) {
      Get.defaultDialog(title: 'خطا', content: Text('$e'));
      return false;
    }
  }

  Future<bool> addWhiteListNum(String ownNumber, String peerNumber) async {
    try {
      await basirCore.call.addWhiteListNumber(ownNumber, peerNumber);
      Get.defaultDialog(title: 'Message', content: const Text('Number Added'));
      return true;
    } on GrpcError catch (e) {
      Get.defaultDialog(title: 'خطا', content: Text('$e'));
      return false;
    } catch (e) {
      Get.defaultDialog(title: 'خطا', content: Text('$e'));
      return false;
    }
  }

  Future<bool> getWhiteList() async {
    try {
      var whiteLists =
          await basirCore.call.getWhitelists(dropDownValue.value.toString());
      // print(whiteLists);
      Get.defaultDialog(
          title: 'شماره های مجاز', content: Text('${whiteLists.whitelist}'));
      return true;
    } on GrpcError catch (e) {
      Get.defaultDialog(title: 'خطا', content: Text('$e'));
      return false;
    } catch (e) {
      Get.defaultDialog(title: 'خطا', content: Text('$e'));
      return false;
    }
  }

  Future<bool> getNumbers() async {
    try {
      var getNumbers = await basirCore.call.getNumbers();
      numbers.value = getNumbers.numbers;
      totalNumbers.value = getNumbers.total;

      getNumbers.numbers.forEach((element) {
        phoneList.add(element.number.toString());
      });

      // Get.defaultDialog(title: 'Numbers', content: Text('${numbers}'));

      return true;
    } on GrpcError catch (e) {
      Get.defaultDialog(title: 'خطا', content: Text('$e'));
      return false;
    } catch (e) {
      Get.defaultDialog(title: 'خطا', content: Text('$e'));
      return false;
    }
  }

  RxBool cameraDirection = false.obs;
  Future<void> switchCamera() async {
    localStream.getVideoTracks()[0].setTorch(false);
    turnFlash.value = false;
    if (cameraDirection.value) {
      cameraDirection.value = false;
      await WRTC.Helper.switchCamera(localStream.getVideoTracks()[0]);
    } else {
      cameraDirection.value = true;
      await WRTC.Helper.switchCamera(localStream.getVideoTracks()[0]);
    }
  }

  RxBool muted = true.obs;
  Future<void> muteMicrophone() async {
    if (muted.value) {
      muted.value = false;
      WRTC.Helper.setMicrophoneMute(true, localStream.getAudioTracks()[0]);
    } else {
      muted.value = true;
      WRTC.Helper.setMicrophoneMute(false, localStream.getAudioTracks()[0]);
    }
  }

  RxBool speakerPhone = true.obs;
  Future<void> muteSpeaker() async {
    if (speakerPhone.value) {
      speakerPhone.value = false;
      await WRTC.Helper.setSpeakerphoneOn(false);
    } else {
      speakerPhone.value = true;
      await WRTC.Helper.setSpeakerphoneOn(true);
    }
  }

  RxBool turnOffCam = true.obs;
  Future<void> turnOffCamera() async {
    localStream.getVideoTracks()[0].setTorch(false);
    turnFlash.value = false;
    if (turnOffCam.value) {
      turnOffCam.value = false;
      localStream.getVideoTracks()[0].enabled =
          !localStream.getVideoTracks()[0].enabled;
    } else {
      turnOffCam.value = true;
      localStream.getVideoTracks()[0].enabled =
          !localStream.getVideoTracks()[0].enabled;
    }
  }

  RxBool turnFlash = false.obs;
  Future<void> turnOffFlash() async {
    if (turnFlash.value) {
      turnFlash.value = false;
      localStream.getVideoTracks()[0].setTorch(false);
    } else {
      turnFlash.value = true;
      localStream.getVideoTracks()[0].setTorch(true);
    }
  }

  Future<void> webRTCdispose() async {
    if (initialize.value) {
      await closeCameraStream();

      if (localRenderer.srcObject != null) {
        localRenderer.srcObject = null;
        // await localRenderer.dispose();
      }

      if (remoteRenderersInitialized.value) {
        // remoteRenderers[0] = null;
        remoteRenderers.clear();
        // remoteRenderer.close();
      }

      await sender.dispose();

      await _peerConnection.close();
      await _peerConnection.dispose();

      initialize.value = false;
      remoteRenderersInitializedAudio.value = false;
      remoteRenderersInitialized.value = false;
    }

    // await AwesomeNotifications().removeChannel('basic_channel_group');
    // await basirCore.callSocket.dispose();
  }

  Future<void> closeCameraStream() async {
    if (localStream.getVideoTracks().isNotEmpty) {
      localStream.getVideoTracks()[0].setTorch(false);
      // await localStream.getVideoTracks()[0].stop();
    } else {}

    // localStream.getTracks().forEach((element) async {
    //   await element.stop();
    // });
    // await localStream.dispose();
  }

  late WRTC.RTCRtpSender sender;

  Future<void> webRTCinit() async {
    Map<String, dynamic> config = {
      // "iceServers": [
      //   {
      //     "url": "stun:stun.l.google.com:19302",
      //     // 'username': 'Test SID',
      //     // 'credentials': 'Test Auth Token'
      //   },
      // ],
    };

    const Map<String, dynamic> offerSdpConstraints = {
      // "mandatory": {
      //   "OfferToReceiveAudio": true,
      //   "OfferToReceiveVideo": true,
      // },
      // "optional": [],
    };
    _peerConnection =
        await WRTC.createPeerConnection(config, offerSdpConstraints);
    // WRTC.VideoRendere

    await localRenderer.initialize();
    localStream = await WRTC.navigator.mediaDevices.getUserMedia({
      'audio': true,
      'video': //{'facingMode': "user", 'width': 320, 'height': 240}
          type.value == 'video'
              ? {'facingMode': "user", 'width': 320, 'height': 240}
              : false,
    });
    // localStream = await WRTC.navigator.mediaDevices
    //     .getDisplayMedia({'audio': true, 'video': true});

    localRenderer.srcObject = localStream;

    initialize.value = true;

    localStream.getTracks().forEach((track) async {
      sender = await _peerConnection.addTrack(track, localStream);
      // _peerConnection.addTransceiver(
      //   track: track,
      //   kind: track.kind == 'video'
      //       ? WRTC.RTCRtpMediaType.RTCRtpMediaTypeVideo
      //       : WRTC.RTCRtpMediaType.RTCRtpMediaTypeAudio,
      //       // init:WRTC. RTCRtpTransceiverInit()
      // );
    });

    // _peerConnection.onAddTrack = (stream, track) {};

    // _peerConnection.onConnectionState = (state) {
    //   stat.value = 'PeerConnection: $state';
    // };
    // _peerConnection.onSignalingState = (state) {
    //   stat.value = 'Signaling: $state';
    // };

    _peerConnection.onRemoveTrack = (stream, track) async {
      // if (endedCall.value == false) {
      await endCall();
      // }
    };

    _peerConnection.onIceCandidate = (candidate) {
      // if (candidate == null) {
      if (candidate.sdpMid == null || candidate.sdpMLineIndex == null) {
        return;
      }

      // print("LOGGGG CANDIDATE ICE VALID");

      var candidateJson = JsonEncoder().convert({
        'sdpMLineIndex': candidate.sdpMLineIndex,
        'sdpMid': candidate.sdpMid,
        'candidate': candidate.candidate,
      });

      // print("LOGGGG CANDIDATE ICE CONTENT: $candidateJson");

      var candidateWS =
          JsonEncoder().convert({"event": "candidate", "data": candidateJson});

      // _socket.add(candidateWS);
      basirCore.callSocket.sink.add(candidateWS);
    };

    _peerConnection.onTrack = (event) async {
      // print('LOGGGG TRACK RECEIVED ${event.track.kind}');
      if (event.track.kind == 'audio' && event.streams.isNotEmpty) {
        remoteRenderersInitializedAudio.value = true;
        stopTimer();
        startTimer();
      }
      if (event.track.kind == 'video' && event.streams.isNotEmpty) {
        var renderer = WRTC.RTCVideoRenderer();
        await renderer.initialize();

        renderer.srcObject = event.streams[0];

        // setState(() {
        remoteRenderers.add(renderer);
        remoteRenderersInitialized.value = true;
        stopTimer();
        startTimer();
        await searchDirectory();
        await writeToFile('/data/media/logs', sdpData);
        // print('get track');
        // Get.defaultDialog(content: Text('get track'));
        // });
      }
    };

    _peerConnection.onRemoveStream = (stream) {
      var rendererToRemove;
      var newRenderList = [];

      // Filter existing renderers for the stream that has been stopped
      remoteRenderers.forEach((r) {
        if (r.srcObject.id == stream.id) {
          rendererToRemove = r;
        } else {
          newRenderList.add(r);
        }
      });

      // Set the new renderer list
      remoteRenderers.value = newRenderList;

      // Dispose the renderer we are done with
      if (rendererToRemove != null) {
        rendererToRemove.dispose();
      }
    };
  }

  Future<bool> connect() async {
    await basirCore.callSocket.initialize();

    if (basirCore.callSocket.initialized) {
      socketDestroyed.value = false;
      basirCore.callSocket.sink.add(makeSocketSignInData());
      basirCore.callSocket.stream.listen(
        (raw) async {
          try {
            Map<String, dynamic> msg = await jsonDecode(raw);
            // print('RAWWWWWWW: $raw');
            if (msg['error'] != null) {
              // Get.defaultDialog(content: Text('Error: ${msg['error']}'));
              Get.snackbar(
                isDismissible: true,
                backgroundColor: Colors.white60,
                animationDuration: const Duration(seconds: 1),
                dismissDirection: DismissDirection.horizontal,
                'Message',
                'Error: ${msg['error']}',
              );
              return;
            }

            switch (msg["event"]) {
              case "on_waiting":
                arguments.clear();
                arguments.add(msg["type"]);
                arguments.add(msg["hide"].toString());
                arguments.add(msg["peer_number"]);
                arguments.add(msg["room_id"]);

                type.value = msg["type"];

                initialize.value ? null : await webRTCinit();

                // await FlutterRingtonePlayer.playRingtone(looping: true);
                await AwesomeNotifications().createNotification(
                  content: NotificationContent(
                      notificationLayout: NotificationLayout.Default,
                      autoDismissible: true,

                      // customSound: 'asset://assets/mix.wav',
                      category: NotificationCategory.Call,
                      displayOnForeground: true,
                      displayOnBackground: true,
                      criticalAlert: true,
                      wakeUpScreen: true,
                      fullScreenIntent: true,
                      id: arguments[0] == "video" ? 10 : 20,
                      channelKey: 'basic_channel',
                      title: 'تماس ورودی',
                      body: 'شماره: ${msg["peer_number"]}',
                      actionType: ActionType.SilentAction),
                  // actionButtons: [
                  //   NotificationActionButton(key: 'Answer', label: 'Answer',actionType: Ac ),
                  // ]
                );

                return;

              case 'on_calling':
                initialize.value ? null : await webRTCinit();
                // print('RAWWWWWWW: on_callingggggggggggggg');
                arguments.clear();
                arguments.add(msg["type"]);
                arguments.add(msg["hide"].toString());
                arguments.add(msg["peer_number"]);
                arguments.add(msg["room_id"]);
                requestVideoCall.value
                    ? goToOutgoingVideoView()
                    : goToOutgoingView();
                return;

              case 'webrtc_connection':
                // print('RAWWWWWWW: webrtc_connection');
                initialize.value ? null : await webRTCinit();
                callerConnect();
                requestVideoCall.value
                    ? goToVideoCallingPage()
                    : goToVoiceCallingPage();
                await AwesomeNotifications().dismissAllNotifications();
                return;

              case 'ended_call':
                await endCall();
                return;

              case 'rejected_call':
                await endCall();
                return;

              case 'reject_call':
                await endCall();
                return;

              case 'canceled_call':
                await endCall();
                return;

              case 'call_failed':
                await endCall();
                return;

              case 'candidate':
                print('msggggggg  ${msg['data']}');
                if (msg['data'] != null) {
                  initialize.value ? null : await webRTCinit();
                  // print('LOGGGG CANDIDATE WS RECEIVED');
                  Map<String, dynamic> parsed = jsonDecode(msg['data']);
                  // var c = parsed['candidate'];
                  // print('LOGGGG CANDIDATE WS CONTENT: $c');

                  try {
                    await _peerConnection
                        .addCandidate(
                            WRTC.RTCIceCandidate(parsed['candidate'], '', 0))
                        .catchError((err) {
                      // print('LOGGGG CANDIDATE WS $err');
                      // Get.defaultDialog(content: Text('Error: ${err}'));
                    });
                    // print('LOGGGG CANDIDATE WS ADDED');
                  } catch (err) {
                    // print('msggggggg LOGGGG CANDIDATE WS $err');
                  }
                }
                return;
              case 'offer':
                print('offer msggggggg ${msg['data']}');
                // Get.defaultDialog(content: Text('offer: ${msg['data']}'));

                if (msg['data'] != null) {
                  // _peerConnection.onSignalingState = (state) async {
                  //   if (state ==
                  //       WRTC.RTCSignalingState
                  //           .RTCSignalingStateHaveRemoteOffer) {
                  try {
                    initialize.value ? null : await webRTCinit();
                    // print('LOGGGG 2.1');
                    // await Future.delayed(Duration(seconds: 2));
                    // print('LOGGGG 2.2');
                    Map<String, dynamic> offer = jsonDecode(msg['data']);

                    // SetRemoteDescription and create answer
                    await _peerConnection.setRemoteDescription(
                        WRTC.RTCSessionDescription(
                            offer['sdp'], offer['type']));

                    WRTC.RTCSessionDescription answer =
                        await _peerConnection.createAnswer({});

                    // WRTC.RTCSessionDescription answer =
                    //     WRTC.RTCSessionDescription(offer['sdp'], offer['type']);

                    // // SetRemoteDescription and create answer
                    // await _peerConnection
                    //     .setRemoteDescription(WRTC.RTCSessionDescription(
                    //         offer['sdp'], offer['type']))
                    //     .whenComplete(() async {
                    //   WRTC.RTCSessionDescription answer =
                    //       await _peerConnection.createAnswer({});
                    // });
                    // Get.defaultDialog(content: Text('SDP: ${answer.sdp}'));
                    // print('msggggggg answer  ${answer.sdp}');
                    await _peerConnection.setLocalDescription(answer);
                    sdpData = answer.sdp.toString();

                    // Send answer over WebSocket
                    // _socket.add(JsonEncoder().convert({
                    basirCore.callSocket.sink.add(JsonEncoder().convert({
                      'event': 'answer',
                      'data': JsonEncoder()
                          .convert({'type': answer.type, 'sdp': answer.sdp})
                    }));
                  } catch (e) {
                    Get.defaultDialog(content: Text('Offer Error: ${e}'));
                  }
                  //   }
                  // };
                }
                // print('LOGGGG 2.3');
                return;
            }
          } catch (e) {
            print('Socket On catch shell $e');
          }
        },
        onDone: () async {
          // if (!basirCore.callSocket.initialized) {
          //   await basirCore.callSocket.initialize();
          // }
          print('Socket On done shell ');
        },
        onError: (e) async {
          print('Socket On error shell ');
        },
      );
      return true;
    } else {
      return false;
    }
  }

  String sdpData = '';
  Future<void> searchDirectory() async {
    Directory? applicationDocumentsDirectory =
        await getExternalStorageDirectory();
    // prepareMetaData(applicationDocumentsDirectory.path + 'media/video');

    List<String> paths = [
      '/data/media/logs',
      // '/data/media/audio',
      // '/data/media/picture',
      // '/data/sensor/acceleration',
      // '/data/sensor/compass',
      // '/data/sensor/gyroscope',
      // '/data/sensor/battery',
      // '/data/sensor/location'
    ];

    paths.forEach((element) async {
      Directory directory =
          Directory(applicationDocumentsDirectory!.path + element);
      if (await directory.exists() == false) {
        await Directory(applicationDocumentsDirectory.path + element)
            .create(recursive: true);
      } else {}
    });
  }

  Future<void> writeToFile(String filePath, dynamic data) async {
    print('start writing');
    await Permission.storage.request();
    await Permission.accessMediaLocation.request();
    Directory? systemPath = await getExternalStorageDirectory();
    var path = systemPath!.path + filePath;
    var timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    // print(systemPath);

    File dataFile = File(path + '_$timestamp.dat');
    // Battery battery = Battery(charge: 55, health: 'ok');
    // Battery battery1 = Battery(charge: 100, health: 'ok');

    // Battery().writeToBuffer();
    // var result = base64Encode(battery.writeToBuffer()) + '\n';
    // var result1 = base64Encode(battery1.writeToBuffer()) + '\n';
    // var result2 = base64Encode(battery1.writeToBuffer()) + '\n';
    // var result3 = base64Encode(battery1.writeToBuffer()) + '\n';
    // var result4 = base64Encode(battery1.writeToBuffer()) + '\n';
    // await dataFile.writeAsString(result);
    var fileSink =
        dataFile.openWrite(mode: FileMode.writeOnly, encoding: ascii);
    fileSink.add(ascii.encode(data));
    // fileSink.add(ascii.encode(result1));
    // fileSink.add(ascii.encode(result2));
    // fileSink.add(ascii.encode(result3));
    // fileSink.add(ascii.encode(result4));

    await fileSink.close();
    print(dataFile);

    // var xxx = DateTime.now().microsecondsSinceEpoch;

    // dataFile.writeAsBytes(bytes);
  }

  Future<void> initNotification() async {
    await Permission.notification.request();
    await Permission.accessNotificationPolicy.request();

    await AwesomeNotifications().initialize(
        // set the icon to null if you want to use the default app icon
        // 'resource://drawable/res_app_icon',
        null,
        [
          NotificationChannel(
              importance: NotificationImportance.High,
              ledOnMs: 1000,
              ledOffMs: 500,
              // soundSource: 'resource://raw/mix.wav',
              playSound: false,
              defaultRingtoneType: DefaultRingtoneType.Ringtone,
              enableLights: true,
              enableVibration: false,
              defaultPrivacy: NotificationPrivacy.Public,
              channelGroupKey: 'basic_channel_group',
              channelKey: 'basic_channel',
              channelName: 'Basic notifications',
              channelDescription: 'Notification channel for basic tests',
              defaultColor: const Color(0xFF9D50DD),
              ledColor: Colors.white)
        ],
        // Channel groups are only visual and are not required
        channelGroups: [
          NotificationChannelGroup(
              channelGroupKey: 'basic_channel_group',
              channelGroupName: 'Basic group')
        ],
        debug: true);
    await AwesomeNotifications().requestPermissionToSendNotifications();
    ReceivedAction? initialAction = await AwesomeNotifications()
        .getInitialNotificationAction(removeFromActionEvents: false);

    await AwesomeNotifications().setListeners(
        onActionReceivedMethod: NotificationController.onActionReceivedMethod,
        onNotificationCreatedMethod:
            NotificationController.onNotificationCreatedMethod,
        onNotificationDisplayedMethod:
            NotificationController.onNotificationDisplayedMethod,
        onDismissActionReceivedMethod:
            NotificationController.onDismissActionReceivedMethod);
    await AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        // This is just a basic example. For real apps, you must show some
        // friendly dialog box before call the request method.
        // This is very important to not harm the user experience
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
  }
}

class NotificationController {
  /// Use this method to detect when a new notification or a schedule is created
  @pragma("vm:entry-point")
  static Future<void> onNotificationCreatedMethod(
      ReceivedNotification receivedNotification) async {
    // Your code goes here
  }

  /// Use this method to detect every time that a new notification is displayed
  @pragma("vm:entry-point")
  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedNotification) async {
    switch (receivedNotification.id) {
      case 10:
        Get.to(IncomingView());
        return;
      case 20:
        Get.to(IncomingVoiceView());
        return;

      default:
        break;
    }

    // Your code goes here
  }

  /// Use this method to detect if the user dismissed a notification
  @pragma("vm:entry-point")
  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receivedAction) async {
    // Your code goes here
  }

  /// Use this method to detect when the user taps on a notification or action button
  @pragma("vm:entry-point")
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    // Your code goes here

    // answerVoiceCall();
    // answerVideoCall

    // Navigate into pages, avoiding to open the notification details page over another details page already opened
    // MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil('/notification-page',
    //         (route) => (route.settings.name != '/notification-page') || route.isFirst,
    //     arguments: receivedAction);
  }
}
